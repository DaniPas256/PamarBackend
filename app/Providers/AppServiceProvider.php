<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        view()->composer('*', function($view) {
            $uid = session()->get('current_user');
            $view->with('IS_GUEST', !is_numeric( $uid['id'] ) );
            $view->with('USER', $uid );

            $languages = \Cache::rememberForever('languages', function () {
                return \App\Translates::pluck('id');
            });
            $view->with('languages', $languages );
            
            $galleries = \App\Galleries::pluck('comment', 'id')->toArray();
            $galleries = array_replace( [ '0' => 'Brak galerii'], $galleries );
            $view->with('galleries', $galleries );
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
