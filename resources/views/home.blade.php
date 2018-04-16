@extends('layouts.app')
@section('content')
<div class="container">
  @if(!Auth::guest())
  <h3>Welcome to your Dashboard</h3>
  <p>Now you can Create,Edit and Rate your Favorite Movie. </p>
  <ul>
    <li> <a class="nav-link" href="{{ route('movies.index')}}">Movies</a>
     <li> <a class="nav-link" href="{{ route('actors.index')}}">Actors</a>
      <li> <a class="nav-link" href="{{ route('genres.index')}}">Genre</a>
      <li> <a class="nav-link" href="{{ route('directors.index')}}">Directors</a>
  </ul>
    <a href="{{ url('/') }}" class="btn btn-success" role="Button">Back To Home</a>
    @else
    <h3>Sorry for Inconvenience but...</h3>
    <a href="{{ route('login') }}"><h3>Please Login To Use Dashboard</h3></a>
    <h1>OR</h1>
    <a href="{{ route('register') }}"><h3>Register Yourself, It's Free :)</h3></a><br><br>
    <a href="{{ url('/') }}" class="btn btn-danger" role="Button">Back To Home</a>
    @endif
  </div>

@endsection
