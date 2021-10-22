@extends('layout')



@section('title')

    questions
@endsection



@section('main')
<div class="P-3">
<h3> All questions </h3>

    @foreach($questions as $question)

        <p> <a href="{{url("question/show/{$question->id}")}}"> {{$question->description}}    </a>  </p>
        <p> created at:  {{$question->created_at}}</p>

        <hr>


    @endforeach

{{$questions->links()}}
</div>
@endsection

