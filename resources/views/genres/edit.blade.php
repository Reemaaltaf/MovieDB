@extends('layouts/app')

@section('content')

<h1>Edit Genre: {{$genre->name}}</h1>



<form method="POST" action="{{route('genres.update' , ['genre' => $genre->id])}}">
@csrf
  <input type="hidden" name="_method" value="PUT"/>
  <div class="form-group">
  <input type="text" name="name" value="{{$genre->name}}" class="form-control" placeholder="genre"/>

<label>Movie</label>
              <select name="movies" class="form-control">
                <option value="">-</option>
                @foreach($movies as $movie)
                <option value="{{$movie->id}}">
                  {{$movie->title}}
                </option>
                @endforeach
 <input type="submit" class="btn brn-primary" value="Update"/>

</div>
</form>

@endsection
