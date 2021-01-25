@extends('layouts.app')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-lg-12">
          <h3>new data</h3>
        </div>
    </div>

    @if ($errors->any())
      <div class="alert alert-danger">
        <strong>error with input</strong>
        <ul>
          @foreach ($biodatas as $biodata)
            <li>{{$error}}</li>
          @endforeach
        </ul>
      </div>
    @endif

    <form action="{{route('biodata.store')}}" method="post">
      @csrf
      
      <div class="row">
        <div class="col-md-12">
          <strong>Name: </strong>
          <input type="text" name="name" palceholder="Name" class="form-control">
        </div>
        <div class="col-md-12">
          <strong>Surname: </strong>
          <input type="text" name="surname" palceholder="Surname" class="form-control">
        </div>
        <div class="col-md-12">
          <a href="{{route('biodata.index')}}" class="btn btn-sm btn-success">Back </a>
          <button type="submit" class="btn btn-sm btn-primary">Submit</button>
        </div>
      </div>
    </form>

</div>

@endsection
