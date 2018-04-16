<?php

namespace App\Http\Controllers;

use App\Movie;
use App\Rating;
use App\User;
use App\Director;
use App\Genre;
use Illuminate\Http\Request;

class MovieController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $movies = Movie::get();
      return view('movies/index', ['movies' => Movie::orderBy('title')->get()]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
      //select director and genre from a dropdown menu
        return view('movies.create' , ['directors' => Director::orderBy('name')->get(),'genres' => Genre::orderBy('name')->get()]);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $movie_title = $request->input('title');
        $movie_desctiption = $request->input('desctiption');
        $movie_runtime = $request->input('runtime');
        $movie_releasedate = $request->input('releasedate');
        $movie_cover = $request->input('cover');
        $movie_directorid = $request->input('director_id');


        $movie = new Movie();
        $movie->title = $movie_title;
        $movie->desctiption = $movie_desctiption;
        $movie->runtime = $movie_runtime;
        $movie->releasedate = $movie_releasedate;
        $movie->cover = $movie_cover;
        $movie->director_id = $movie_directorid;
        $movie->save();

        return redirect()->route('movies.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Movie $movie)
    {
        $movie = Movie::find($movie->id);
        $movie->ratings = $movie->ratings()->avg('rating');
        $movie->count = $movie->ratings()->count('rating');
        return view('movies/show',['movie' => $movie]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit(Movie $movie)
    {

        return view('movies/edit',  ['movie' => $movie],['directors' => Director::orderBy('name')->get(), 'genres' => Genre::orderBy('name')->get()]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Movie $movie)
    {

      $movie_title = $request->input('title');
      $movie_desctiption = $request->input('desctiption');
      $movie_runtime = $request->input('runtime');
      $movie_releasedate = $request->input('releasedate');
      $movie_cover = $request->input('cover');
      $movie_directorid = $request->input('director_id');

      $movie->title = $movie_title;
      $movie->desctiption = $movie_desctiption;
      $movie->runtime = $movie_runtime;
      $movie->releasedate = $movie_releasedate;
      $movie->cover = $movie_cover;
      $movie->director_id = $movie_directorid;

       $movie->save();
       $movie->genres()->sync($request->input('genres'));


       $movie = $movie->id;


      return redirect()->route('movies.show', ['movie' => $movie]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Movie $movie)
    {
        //
    }
}
