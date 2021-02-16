<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    $router->resource('home-page', HomePageController::class);
    $router->resource('about-page', AboutPageController::class);
    $router->resource('contact-page', ContactPageController::class);
    $router->resource('blogs', BlogController::class);
    $router->resource('clients', ClientController::class);
    $router->resource('teams', TeamController::class);
    $router->resource('settings', SettingController::class);
    $router->resource('services', ServiceController::class);
    $router->resource('contacts', ContactController::class);
});
