@extends('layouts/app')

@section('content')

<h1>Add Actor</h1>



<form method="POST" action="{{route('actors.store')}}">
@csrf
<input type="hidden" name="_method" value="POST"/>
  <div class="form-group">
  <input type="text" name="name" class="form-control" placeholder="Name"required/>
    </div>
    <div class="form-group">
    <input type="text" name="description"  class="form-control" placeholder="description"required/>

    <label>Movie</label>
              <select name="movies" class="form-control" required>
                <option value="">-</option>
                @foreach($movies as $movie)
                <option value="{{$movie->id}}">
                  {{$movie->title}}
                </option>
                @endforeach
    <input type="submit" class="btn brn-primary" value="Add Actor"/>
      </div>
      </form>
@endsection
