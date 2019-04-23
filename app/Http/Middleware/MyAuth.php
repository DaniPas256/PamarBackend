<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class MyAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    { 
        $userdata = session()->get('current_user');

        if( !is_object($userdata) ){
            return redirect('/login');
        }

        if( !is_numeric( $userdata->id ) ){
            session()->delete('current_user');
            return redirect('/login');
        }

        return $next($request);
    }
}
