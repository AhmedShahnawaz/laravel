<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', 'Pages@index')->name('home');

Route::get('/services', 'Pages@service')->name('services');

Route::get('/service/{id}',  'Pages@singleservice')->name('singleservice');

Route::get('/blogs',   'Pages@blog')->name('blogs');

Route::get('/blog/{id}', 'Pages@blogpost')->name('singleblog');

Route::get('/about', 'Pages@about')->name('about');

Route::get('/contact', 'Pages@contact')->name('contact');
Route::post('/contacfrom', 'Pages@contacfrom')->name('contacfrom');

Route::get('/foo', function () {
    Artisan::call('storage:link');
});
