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

//Route des pages 
Route::get('/', 'PagesController@home');
Route::get('/about', 'PagesController@about');
Route::get('/service', 'PagesController@service');
//Route des posts
Route::get('/posts', 'PostsController@index')->name('posts.index');


Route::get('/posts/create', 'PostsController@create')->name('posts.create');
Route::post('/posts', 'PostsController@store')->name('posts.store');
Route::get('/posts/{id}', 'PostsController@show')->name('posts.show');
Route::get('/posts/{id}/edit', 'PostsController@edit')->name('posts.edit');
Route::put('/posts/{id}', 'PostsController@update')->name('posts.update');
Route::delete('/posts/{id}', 'PostsController@destroy')->name('posts.destroy');



Auth::routes();

Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
