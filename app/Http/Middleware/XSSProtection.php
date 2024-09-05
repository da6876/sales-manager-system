<?php

namespace App\Http\Middleware;

use Closure;

class XSSProtection
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        // Sanitize input data
        $this->sanitizeInput($request);

        return $next($request);
    }

    /**
     * Sanitize input data.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return void
     */
    protected function sanitizeInput($request)
    {
        if ($request->isMethod('post') || $request->isMethod('put') || $request->isMethod('get')) {
            $input = $request->all();

            array_walk_recursive($input, function (&$item) {
                $item = htmlspecialchars($item, ENT_QUOTES, 'UTF-8');
            });

            $request->merge($input);
        }
    }
}
