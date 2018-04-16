@extends('layouts/app')

@section('content')

<h1>Edit Director: {{$director->name}}</h1>



<!-- @csrf kind of security thing -->
<form method="POST" action="{{route('directors.update' , ['director' => $director->id])}}">
@csrf
  <input type="hidden" name="_method" value="PUT"/>
  <div class="form-group">
  <input type="text" name="name" value="{{$director->name}}" class="form-control" placeholder="Director Name"/>
</div>

  <div class="form-group">
  <input type="text" name="description"value="{{$director->description}}" class="form-control" placeholder="description"/>

 <input type="submit" class="btn brn-primary" value="Update"/>

</div>
</form>

@endsection
