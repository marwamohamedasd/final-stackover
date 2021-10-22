<?php

namespace App\Http\Controllers;

use App\Models\Answer;
use App\Models\Question;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Answercontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($id)
    {
        $question =Question::findOrFail($id)->id; //ديه المسؤولة عن  store
      //  $question_id=Question::findOrFail($id)->id;
        return view('answers.create',['question'=>$question]);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $id  )
    {
        $question =Question::findOrFail($id); /// ديه المسؤلة عن show 
        $request->validate([

            'content'=> 'required|string|max:255',


        ]);
//        dd($request->all());
        $answer= Answer::create([

            'content'=>$request->content,
            'question_id'=> $id,// علشان انا مش باعتة question _id في  validation  /// or'question_id'=> $request->id
            'user_id' => 7 // TODO: when you create authentication, change this to Auth::id()
        ]);

        //$answer->question()->sync($request->id,false);

        return  redirect(url("question/show/{$question->id}"));

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
