<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

    Route::get('reset_password/{token}', ['as' => 'password.reset', function($token)
    {
        // implement your reset password route here!
    }]);

        Route::get('/', 'UserController@login')->middleware('guest');;
        
        Route::group(['middleware' => 'myAuth'], function () {
            Route::get('index', 'HomeController@index' );

            // GALLERY
            Route::post('gallery/uploadFile/{gallery}/', 'GalleriesController@uploadFile' );
            Route::get('gallery/index/', 'GalleriesController@index' );
            Route::get('gallery/create/', 'GalleriesController@create' );
            Route::post('gallery/store/', 'GalleriesController@store' );
            Route::get('gallery/{gallery}/edit/', 'GalleriesController@edit' );
            Route::patch('gallery/{gallery}/update/', 'GalleriesController@update' );
            Route::get('gallery/{gallery}/delete/', 'GalleriesController@destroy' );
            Route::get('gallery/{gallery}/deleteGalleryImage/', 'GalleriesController@deleteGalleryImage' );

            //NEWS
            Route::get('news/index/', 'NewsController@index' );
            Route::get('news/create/', 'NewsController@create' );
            Route::post('news/store/', 'NewsController@store' );
            Route::get('news/{news}/edit/', 'NewsController@edit' );
            Route::patch('news/{news}/update/', 'NewsController@update' );
            Route::get('news/{news}/delete/', 'NewsController@destroy' );  

            //REFERENCES
            Route::get('reference/index/', 'ReferencesController@index' );
            Route::get('reference/create/', 'ReferencesController@create' );
            Route::post('reference/store/', 'ReferencesController@store' );
            Route::get('reference/{reference}/edit/', 'ReferencesController@edit' );
            Route::patch('reference/{reference}/update/', 'ReferencesController@update' );
            Route::get('reference/{reference}/delete/', 'ReferencesController@destroy' );      
             
            //EXPERPIANCE
            Route::get('experiance/index/', 'ExperiancesController@index' );
            Route::get('experiance/create/', 'ExperiancesController@create' );
            Route::post('experiance/store/', 'ExperiancesController@store' );
            Route::get('experiance/{experiance}/edit/', 'ExperiancesController@edit' );
            Route::patch('experiance/{experiance}/update/', 'ExperiancesController@update' );
            Route::get('experiance/{experiance}/delete/', 'ExperiancesController@destroy' );    
            
            //EXPERPIANCE
            Route::get('dictionary/index/', 'DictionariesController@index' );
            Route::get('dictionary/{dict}/edit/', 'DictionariesController@edit' );
            Route::patch('dictionary/{dict}/update/', 'DictionariesController@update' );

            
            //EXPERPIANCE GROUPS
            Route::get('experiance_groups/index/', 'ExperiancesGroupsController@index' );
            Route::get('experiance_groups/create/', 'ExperiancesGroupsController@create' );
            Route::post('experiance_groups/store/', 'ExperiancesGroupsController@store' );
            Route::get('experiance_groups/{group}/edit/', 'ExperiancesGroupsController@edit' );
            Route::patch('experiance_groups/{experiance}/update/', 'ExperiancesGroupsController@update' );
            Route::get('experiance_groups/{group}/delete/', 'ExperiancesGroupsController@destroy' );   
            
        });

        Route::get('translates', function () {
            return \Cache::rememberForever('users', function () {
                return \App\Translates::get();
            });
        });
        Route::get('storage/{filename}', function ($filename)
        {
            $path = '/workspace/backend/public/userFiles/' . $filename;

            if (!\File::exists($path)) {
                echo $path;
                abort(404);
            }
 
            $file = \File::get($path);
            $type = \File::mimeType($path);

            $response = \Response::make($file, 200);
            $response->header("Content-Type", $type);

            return $response;
        });
        Route::get('login', array('uses' => 'UserController@showLogin'));
        Route::post('login', array('uses' => 'UserController@login'));
        Route::get('logout', array('uses' => 'UserController@logout'));
        \TalvBansal\MediaManager\Routes\MediaRoutes::get();

