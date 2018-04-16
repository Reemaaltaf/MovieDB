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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');


Route::get('/home/{user}', 'HomeController@show')->name('home.show');
Route::get('/home/{rating}', 'RatingController@show')->name('userratings.show');

Route::resource('actors', 'ActorController');
Route::resource('directors', 'DirectorController');
Route::resource('genres', 'GenreController');

Route::resource('movies', 'MovieController');

Route::get('/movies/{rating}', 'RatingController@index')->name('rating.index');
Route::post('/ratings', 'RatingController@store')->name('ratings.store');
Route::get('/movies/show', 'RatingController@create')->name('rating.create');
Route::get('/movies/{rating}', 'RatingController@show')->name('rating.show');
