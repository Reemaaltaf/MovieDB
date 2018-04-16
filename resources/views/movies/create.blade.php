@extends('layouts/app')

@section('content')

<h1>Add a Film</h1>



<form method="POST" action="{{route('movies.store')}}">
@csrf
  <div class="form-group">
  <input type="text" name="title"  class="form-control" placeholder="Titel"/>
    </div>
    <div class="form-group">
    <input type="text" name="cover" class="form-control" placeholder="Cover"/>
    </div>
      <div class="form-group">
    <input type="text" name="desctiption" class="form-control" placeholder="Description"/>
      </div>
        <div class="form-group">
      <input type="text" name="runtime" class="form-control" placeholder="runtime"/>
        </div>
          <div class="form-group">
      <input type="text" name="releasedate" class="form-control" placeholder="Releasedate"/>
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

                <label>Genres</label>
              <select multiple name="genre_id" class="form-control">
                <option value="">-</option>
                @foreach($genres as $genre)
                <option value="{{$genre->id}}" selected>
                  {{$genre->name}}
                </option>
                @endforeach
                </select>


          <input type="submit" class="btn brn-primary" value="Add Movie"/>
        </div>
      </form>
@endsection
