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

Route::get('/', function () {
    return redirect('/farm');
});

Route::get('/index', function () {
    return redirect('/farm');
});

Route::get('/login', function () {
    return redirect('/farm');
});

Route::get('/logout', function () {
    return redirect('/farm');
});

Route::get('/apiv1', '\App\Http\Controllers\IndexController@apiV1');

Route::get('/farm', '\App\Http\Controllers\IndexController@farm');
Route::get('/province', '\App\Http\Controllers\IndexController@province');
Route::get('/blank', '\App\Http\Controllers\IndexController@blank');
// Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');
// Route::get('/logout', '\App\Http\Controllers\Auth\LoginController@logout');
