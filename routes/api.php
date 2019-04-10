<?php

use Dingo\Api\Routing\Router;

/** @var Router $api */
$api = app(Router::class);

$api->version('v1', function (Router $api) {
    $api->group(['prefix' => 'auth'], function (Router $api) {
        $api->post('signup', 'App\\Api\\V1\\Controllers\\SignUpController@signUp');
        $api->post('login', 'App\\Api\\V1\\Controllers\\LoginController@login');

        $api->post('recovery', 'App\\Api\\V1\\Controllers\\ForgotPasswordController@sendResetEmail');
        $api->post('reset', 'App\\Api\\V1\\Controllers\\ResetPasswordController@resetPassword');

        $api->post('logout', 'App\\Api\\V1\\Controllers\\LogoutController@logout');
        $api->post('refresh', 'App\\Api\\V1\\Controllers\\RefreshController@refresh');
        $api->get('me', 'App\\Api\\V1\\Controllers\\UserController@me');
    });

    $api->group(['middleware' => 'jwt.auth'], function (Router $api) {
        $api->get('protected', function () {
            return response()->json([
                'message' => 'Access to protected resources granted! You are seeing this text as you provided the token correctly.',
            ]);
        });

        $api->get('refresh', [
            'middleware' => 'jwt.refresh',
            function () {
                return response()->json([
                    'message' => 'By accessing this endpoint, you can refresh your access token at each request. Check out this response headers!',
                ]);
            },
        ]);

        $api->get('hello', function () {
            return response()->json([
                'message' => 'This is a simple example of item returned by your APIs. Everyone can see it.',
            ]);
        });
    });

    Route::resource('translates', 'TranslatesController');
    Route::resource('dictionaries', 'DictionariesController');
    Route::resource('experiances', 'ExperiancesController');
    Route::resource('files', 'FilesController');
    Route::resource('files__translates', 'Files__TranslatesController');
    Route::resource('pages', 'PagesController');
    Route::resource('experiances__list_items', 'Experiances__List_ItemsController');
    Route::resource('galleries', 'GalleriesController');
    Route::resource('galleries__descriptions', 'Galleries__DescriptionsController');
    Route::resource('galleries__images', 'Galleries__ImagesController');
    Route::resource('references', 'ReferencesController');
    Route::resource('news', 'NewsController');

    Route::get('get_page_content/{page}/{lang}', 'PageContent@getDataForPage');
});
