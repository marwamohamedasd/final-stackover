@extends('layout')
@section('title')

  Answer  Reply
@endsection


@section('main')
<div class="col-md-12">
    <form action="{{ url("answer/store/{$question}") }}" method="POST">
        @csrf
        <div class="card-body">
            <div class="form-group">
                <label for="exampleInputEmail1">Answer reply </label>
                <input type="text" class="form-control"  name="content" placeholder="Enter answer">
            </div>


        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>
</div>


@endsection


