@extends('layouts.app')
@section('content')
	<div class="container">
		@if(!Auth::guest())
<a href="{{route('movies.create')}}" class="btn btn-primary"  role="Button">Add Movie </a>
@endif

@foreach($movies as $movie)
		<div class="card">
			<div class="card-header bg-dark text-light">
				<h5 class="card-title" >{{$movie->title}}</h5>
			</div>
			<div class="card-body">
				<div class="row">

					<div class="col-md-8">
						<table class="table table-striped">
							<tbody>
								<tr>
									<th>Cover Link</th>
									<td><a href="{{$movie->cover}}">{{$movie->cover}}</a> </td>
								</tr>

								<tr>
									<th>Genres</th>
									<td>@foreach($movie->genres as $genre)<a href="{{route('genres.show', ['genre'=>$genre->id])}}">{{$genre->name}}<br> </a>@endforeach</td>
								</tr>


								<tr>
									<th>Release date</th>
									<td> {{$movie->releasedate}}</td>
								</tr>
								<tr>
									<th>Runtime</th>
									<td>{{$movie->runtime}}</td>
								</tr>
                <tr>
									<th>Description</th>
									<td>{{$movie->desctiption}}</td>
								</tr>
                <tr>
									<th>Director</th>
									<td><a href="{{route('directors.show', ['director' => $movie->director->id])}}"> {{$movie->director->name}} </a></td>
								</tr>
                <tr>
                  <th>Actors</th>
                  <td>@foreach($movie->actors as $actor)<a href="{{route('actors.show', ['actor'=>$actor->id])}}">{{$actor->name}}<br> </a>@endforeach</td>
                </tr>
							</tbody>
						</table>
<a href="{{route('movies.show', ['movie' => $movie->id])}}" class="btn btn-info" role="Button">View</a>
					</div>
				</div>
      </div>
      </div>
      @endforeach
      @endsection
      </div>
