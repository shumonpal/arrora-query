<?php

namespace App\Http\Controllers;

use App\Question;
use Illuminate\Http\Request;
use App\Http\Requests\AskQuestionRequest;

class QuestionsController extends Controller
{
    public function __construct() {
        $this->middleware('auth', ['except' => ['index', 'show']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {       
        $questions = Question::with('user')->latest()->paginate(5);
        if ($request->query('qus') == 'favorites') {
            $questions = Question::where('votes_count', '>', 1)->with('user')->get()->take(5);
        }else if ($request->query('qus') == 'views') {
            $questions = Question::orderBy('views', 'desc')->with('user')->get()->take(4);
        }
        return view('questions.index', compact('questions'));        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $question = new Question();

        return view('questions.create', compact('question'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AskQuestionRequest $request)
    {
        $question = $request->user()->questions()->create($request->only('title', 'body'));
        if ($request->expectsJson()) {
            return response()->json([
                'question' => $question,
                'message' => 'Question has been added'
            ]);
        }
        return redirect()->route('questions.index')->with('success', "Your question has been submitted");
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function show(Question $question)
    {
        $question->increment('views');
        $question = $question->load('user');

        return view('questions.show', compact('question'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function edit(Question $question)
    {
        $this->authorize("update", $question);
        return view("questions.edit", compact('question'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function update(AskQuestionRequest $request, Question $question)
    {
       
        $this->authorize("update", $question);

        $question = $question->update($request->only('title', 'body'));

        if ($request->expectsJson()) {
            return response()->json([
                'question' => $question,
                'message' => 'Answer has been added'
            ]);
        }

        return redirect('/questions')->with('success', "Your question has been updated.");
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Question  $question
     * @return \Illuminate\Http\Response
     */
    public function destroy(Question $question)
    {
        $this->authorize("delete", $question);

        $question->delete();

        if (request()->expectsJson()) {
            return response()->json([
                'question' => $question,
                'message' => 'Answer has been deleted'
            ]);
        }

        return redirect('/questions')->with('success', "Your question has been deleted.");
    }
}
