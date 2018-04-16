@extends('layouts.app')

@section('content')

<div class="container">
  <div class="card">
    <div class="card-header bg-dark text-light">
      <h5 class="card-title">{{$genre->name}}</h5>

    </div>
    <div class="card-body">
      <div class="row">
        <div class="col-md-8">
          <table class="table table-striped">
            <tbody>
              <tr>
                <th>Movies with this Genre</th>
                <td>@foreach($genre->movies as $movie)<a href="{{route('movies.show', ['movie' => $movie->id])}}">{{$movie->title}}</a>, @endforeach</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    @if(!Auth::guest())
      <a href="{{route('genres.edit', ['genre' => $genre->id])}}" class="btn btn-danger" style="float:left">Edit Genre</a><br><br>
      <a href="{{route('genres.edit', ['genre' => $genre->id])}}" class="btn btn-success" style="float:left">Add Movie</a><br><br>
      @endif
      <a href="{{route('genres.index')}}" class="btn btn-danger" role="Button" style="float:left">Back</a>
  </div>

</div>
@endsection
