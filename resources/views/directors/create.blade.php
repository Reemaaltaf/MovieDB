@extends('layouts/app')
@section('content')

<h1>Add Director</h1>

<!-- Post Form -->

<form method="POST" action="{{route('directors.store')}}">
@csrf
<input type="hidden" name="_method" value="POST"/>
  <div class="form-group">
  <input type="text" name="name" class="form-control" placeholder="Name"/>
    </div>
    <div class="form-group">
    <input type="text" name="description"  class="form-control" placeholder="description"/>

    <input type="submit" class="btn brn-primary" value="Add Director"/>
  </div>
      </form>



@endsection
