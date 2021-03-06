
@extends('layout')

@section('main')


    <div class="col-md-8">

        @include('error')


        <form method="POST" action="{{route('login')}}">
        @csrf

        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" class="form-control" name="email" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" name="password" placeholder="Password">
        </div>


        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    </div>


@endsection
