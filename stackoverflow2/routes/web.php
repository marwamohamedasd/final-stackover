<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\QuestionController;
use \App\Http\Controllers\TestController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function() {
    return view('welcome');
});


Route::get('/question', [QuestionController::class ,'index']);
Route::get('/question/show/{id}', [QuestionController::class ,'show'])->name('question.show');
Route::get('/question/create', [QuestionController::class ,'create']);
Route::post('/question/store', [QuestionController::class ,'store']);


Route::get('/answer/create/{id}',[\App\Http\Controllers\Answercontroller::class ,'create']);

Route::post('/answer/store/{id}',[\App\Http\Controllers\Answercontroller::class ,'store']);




//Route::get('/test', [TestController::class ,'test']);
