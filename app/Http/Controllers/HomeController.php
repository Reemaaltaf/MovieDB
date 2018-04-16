<?php

namespace App\Http\Controllers;
use App\User;
use App\Rating;
use App\Movie;
use Auth;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::get();
        return view('home', ['users' => $users]);
    }

    public function show(User $user)
    {
      $user = User::find($user->id);

      $user->ratings = $user->ratings()->avg('rating');
      $user->count = $user->ratings()->count('rating');

      return view('home', ['user' => $user]);
    }
}
