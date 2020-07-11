<?php

namespace App\Http\Controllers;
use App\Answer;
use Illuminate\Http\Request;

class VoteAnswerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function __invoke(Answer $answer)
    {
        $vote = (int) request()->vote;

        auth()->user()->voteAnswer($answer, $vote);
        if (request()->expectsJson()) {
            return response()->json([
                'message' => 'Thank you for your vote'
            ]);
        }
        return back();
    }
}
