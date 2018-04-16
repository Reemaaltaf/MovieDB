<?php

namespace App\Http\Controllers;

use Session;
use App\Actor;
use App\Movie;
use Exception;
use Illuminate\Http\Request;

class ActorController extends Controller
{

    public function index()
    {
      $actors = Actor::get();
      return view('actors/index' , ['actors' => $actors]);

    }

    public function create(Movie $movie)
    {
        return view('actors.create', ['movie' => $movie, 'movies' => Movie::Get()]);
    }

    public function store(Request $request)
    {
        $actor_name = $request->input('name');
        $actor_description = $request->input('description');

        $actor = new Actor();

        $actor->name = $actor_name;
        $actor->description = $actor_description;
        $actor->save();
        $actor->movies()->attach($request->input('movies'));

        $actor = $actor->id;
        return redirect()->route('movies.show', ['id' => $request->input('movie_id')]);
      }

    public function show(Actor $actor)
    {
        return view('actors/show' , ['actor' => $actor]);
    }

    public function edit(Actor $actor)
    {
      return view('actors/edit', ['actor' => $actor],['movies' => Movie::orderBy('title')->get()]);
    }

    public function update(Request $request, Actor $actor)
    {
      $actor_name = $request->input('name');
      $actor_description = $request->input('description');

      $actor->name = $actor_name;
      $actor->description = $actor_description;
      $actor->save();
      $actor->movies()->attach($request->input('movies'));

      return redirect()->route('actors.show', ['actor' => $actor->id]);
    }
}
