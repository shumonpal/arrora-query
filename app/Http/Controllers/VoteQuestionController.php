<?php

namespace App\Http\Controllers;
use App\Question;
use Illuminate\Http\Request;

class VoteQuestionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function __invoke(Question $question)
    {
        $vote = (int) request()->vote;

        $vote_count = auth()->user()->voteQuestion($question, $vote);

        if (request()->expectsJson()) {
            return response()->json([
                'message' => 'Thank you for your vote',
                'vote_count' => $vote_count
            ]);
        }

        return back();
    }
}
