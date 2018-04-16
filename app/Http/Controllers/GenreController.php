<?php

namespace App\Http\Controllers;

use App\Genre;
use App\Movie;
use Illuminate\Http\Request;

class GenreController extends Controller
{

    public function index()
    {
      $genres = Genre::get();
      return view('genres/index', ['genres' => Genre::orderBy('name')->get()]);
    }
    public function create(Movie $movie)
    {
      //choose a movie so you can add multple genre to one movie
      return view('genres.create', ['movie' => $movie, 'movies' => Movie::Get()]);
      Genre::where(’name’, $request->input(’name’))->exists();
  }
    public function store(Request $request)
    {

      $genre_name = $request->input('name');
      $genre = new Genre();
      try{
        $genre->name = $genre_name;
        $genre->save();
        $genre->movies()->attach($request->input('movies'));
        return redirect()->route('genres.index');
    }catch(\exception $e){
      return redirect()->route('genres.index');
    }
      }


    public function show(Genre $genre)
    {
        return view('genres/show', ['genre' => $genre]);
    }
    public function edit(Genre $genre)
    {
      return view('genres/edit', ['genre' => $genre],['movies' => Movie::orderBy('title')->get()]);

    }
    public function update(Request $request, Genre $genre)
    {
      $genre_name = $request->input('name');
      $genre->name = $genre_name;
      $genre->save();
      return redirect()->route('genres.show', ['genre' => $genre->id]);
    }


}
