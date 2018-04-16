@extends('layouts/app')

@section('content')

<h1>Edit Film {{$movie->title}}</h1>



<form method="POST" action="{{route('movies.update', ['movie' => $movie->id])}}">
@csrf
<input type="hidden" name="_method" value="PUT"/>
  <div class="form-group">
  <input type="text" name="title" value="{{$movie->title}}" class="form-control" placeholder="title"/>
    </div>
      <div class="form-group">
        <input type="text" name="desctiption" value="{{$movie->desctiption}}" class="form-control" placeholder="description"/>
      </div>
        <div class="form-group">
      <input type="text" name="runtime" value="{{$movie->runtime}}" class="form-control" placeholder="runtime"/>
        </div>
          <div class="form-group">
      <input type="text" name="releasedate" value="{{$movie->releasedate}}" class="form-control" placeholder="releasedate"/>
        </div>
          <div class="form-group">
        <input type="text" name="cover" value="{{$movie->cover}}" class="form-control" placeholder="cover"/>
          </div>
            <div class="form-group">
          <label>director</label>
          <select name="director_id" class="form-control">
            <option value="">-</option>
            @foreach($directors as $director)
            <option value="{{$director->id}}">
              {{$director->name}}
            </option>
            @endforeach
          </select>
          </div>
          <div class="form-group">
             <label>Genres</label>
          <select multiple name="genres[]" class="form-control">
            <option value="">-</option>
            @foreach($genres as $genre)
            <option value="{{$genre->id}}">
              {{$genre->name}}
            </option>
            @endforeach
          </select>
          <input type="submit" class="btn brn-primary" value="Update"/>
        </div>
      </form>




@endsection
