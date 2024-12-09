<?php

namespace App\Models\settings;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
class SidebarNav extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $table = 'sms_web_sidebar_menu';

    protected $fillable = [
        'id', 'uid', 'parent_id', 'name', 'icon', 'url', 'order',
        'is_collapsed', 'is_heading', 'status', 'create_by',
        'create_date', 'update_by', 'update_date',
    ];

    public function children()
    {
        return $this->hasMany(SidebarNav::class, 'parent_id')
            ->where('status', 'A')
            ->orderBy('order');
    }
    public static function getMenuForUser()
    {
        $user = Auth::user();
        if (!$user) {
            return [];
        }

        // Get roles for the user
        $roles = $user->getRoleNames();

        // Fetch sidebar nav items that belong to the roles
        $menuItems = self::whereHas('roles', function($query) use ($roles) {
            $query->whereIn('name', $roles);
        })
            ->where('status', 'A')
            ->with(['children' => function($query) use ($roles) {
                $query->whereHas('roles', function($subQuery) use ($roles) {
                    $subQuery->whereIn('name', $roles);
                });
            }])
            ->orderBy('order')
            ->get();

        // Filter out only those items that have children and group them
        return $menuItems->filter(function ($item) {
            return !$item->parent_id; // Only return top-level items
        });
    }
    public function parent()
    {
        return $this->belongsTo(SidebarNav::class, 'parent_id');
    }

    public function roles()
    {
        return $this->belongsToMany(Role::class, 'role_sidebar_menu');
    }
}
