<?php

namespace App\Http\Controllers;

use App\Models\Answer;
use App\Models\Leaderboard;
use App\Models\Quizset;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LeaderboardController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $answers = Answer::orderBy("marks", "desc")->paginate(10);
        $anslim = Answer::orderBy("marks", "desc")->orderBy('created_at')->paginate(4);
        // dd($answers);
        return view('leaderboard.index')
        ->with('anslim', $anslim)
        ->with('answers', $answers)
        ->with('user', Auth::user());
    }
    public function indexuser()
    {
        $uid=Auth::user()->id;
        $answers = Answer::orderBy("marks", "desc")->limit(10)->get();
        $anslim = Answer::where('user_id',$uid)->get();
        // dd($answers);
        return view('leaderboard.index')
        ->with('anslim', $anslim)
        ->with('answers', $answers)
        ->with('user', Auth::user());
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show( $id)
    {
        $quizset = Quizset::find($id);
        $leaders = Answer::where('qset_id',$id)
        ->orderBy('marks','desc')
        ->orderBy('created_at')
        ->paginate(4);
        //paginate
        return view("leaderboard.show")
        ->with('quizset',$quizset)
        ->with('leaders',$leaders)
        ->with('user', Auth::user());
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Leaderboard $leaderboard)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Leaderboard $leaderboard)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Leaderboard $leaderboard)
    {
        //
    }
}
