@extends('layouts/app')

@section('content')

<h1>Edit Actor: {{$actor->name}}</h1>

<form method="POST" action="{{route('actors.update' , ['actor' => $actor->id])}}">
@csrf
<input type="hidden" name="_method" value="PUT"/>
  <div class="form-group">
  <input type="text" name="name" value="{{$actor->name}}" class="form-control" placeholder="actor name"/>
</div>

  <div class="form-group">
  <input type="text" name="description"value="{{$actor->description}}" class="form-control" placeholder="description"/>
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
