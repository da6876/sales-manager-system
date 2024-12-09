<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use App\Models\settings\SidebarNav;
use Illuminate\Support\Facades\Auth;

class ViewServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        // Share the sidebar navigation data with all views
        View::composer('*', function ($view) {
            $navItems = collect();

            if (Auth::check()) {
                // Get the menu items based on the authenticated user's roles
                $navItems = SidebarNav::getMenuForUser();
            }

            $view->with('navItems', $navItems);
        });
    }
}
