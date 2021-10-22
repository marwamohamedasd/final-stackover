@extends('layout')

@section('title')


    question show
@endsection



@section('main')



<div class="col-md-12">
    @if(session()->has('success'))
        <div class="alert alert-success">{{ session()->get('success') }}</div>
    @endif
    <p>
        {{$question->description}}

    </p>



</div>



<div class="col-md-12">



    <p>  created at: {{$question->created_at}}</p>
</div>

    <a href="{{url("answer/create/{$question->id}")}}" class="btn btn-primary"> Reply</a>

@foreach($question->answers as $index => $answer)
    <div class="col-12">

        <p> answer: # {{ $index }} => {{ $answer->content }}</p>
    </div>
@endforeach


@endsection
