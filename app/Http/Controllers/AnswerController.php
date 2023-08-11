<?php

namespace App\Http\Controllers;

use App\Models\Answer;
use App\Models\Leaderboard;
use App\Models\Quiz;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class AnswerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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
    public function show(Answer $answer)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Answer $answer)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Answer $answer)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Answer $answer)
    {
        //
    }
    public function showquiz(Request $request)
    {
        // echo "hello";
        $quiz  = Quiz::where('category_id', $request->cid)->where('subcategory_id', $request->scid)->get();
        return response()->json($quiz);
    }

    public function viewanswer(Request $request)
    {
        $topic=$request->topic;
        $answers = $request->all();
        unset($answers['_token']);
        $quizid = array_keys($answers);
        $quizid = Arr::map($quizid, function ($value, $key) {
            return substr($value, 3);
        });
        $quizans = array_values($answers);
        $quizzes = Quiz::whereIn('id', $quizid)->get();
        $result = 0;
        foreach ($quizzes as $quiz) {
            if ($quiz->ans == $answers['box' . $quiz->id]) {
                $result++;
            }
            //echo $quiz->id ." :". $quiz->ans. " =  User ans:" . $answers['box'.$quiz->id] . "<br>";
        }
     // dd($answers,$quizzes , $quizid, $quizans);
        return view('quiz.result')
        ->with('quizzes', $quizzes)
        ->with('quizans', $quizans)
        ->with('topic', $topic)
        ->with('total', count($answers))
        ->with('result', $result);

    }


    public function storeanswer(Request $request)
    {
        
        $u = User::find(Auth::id());
       $uid= Auth::user()->id;
        
         // for guest user
         $data = [
            'user_id' => $uid,
            'qset_id' => $request->topic,
            'type' => 'rq',
            'marks' => $request->marks,
            'tquiz' => $request->tquiz,
        ];
         $data1 = [
            'user_id' => $uid,
            'quizset_id' => $request->topic,
            'submitted_at' => '(time:5.1)',
            'marks' => $request->marks,
            'given_ans' =>$request->marks.'/'. $request->tquiz,
        ];
    // dd($data1);
        $ld= Leaderboard::create($data1);
        $cat = Answer::create($data);
         if( Auth::check()){
                // $u->answers()->save($q);
                return redirect('leaderboard/user')->with('success', 'You got '. $request->marks . 'out of' . $request->tquiz);
            }
            else{
                return redirect('/')->with('success', 'Thanks! You got '. $request->marks. '/' . $request->tquiz);
            }
    
    }



    public function result(Request $request)
    {
        $answers = $request->all();
        unset($answers['_token']);
        $quizid = array_keys($answers);
        $quizid = Arr::map($quizid, function ($value, $key) {
            return substr($value, 3);
        });
        $quizans = array_values($answers);
        $quizzes = Quiz::whereIn('id', $quizid)->get();
        $result = 0;
        foreach ($quizzes as $quiz) {
            if ($quiz->ans == $answers['box' . $quiz->id]) {
                $result++;
            }
            //echo $quiz->id ." :". $quiz->ans. " =  User ans:" . $answers['box'.$quiz->id] . "<br>";
        }
        // dd($answers,$quizzes , $quizid, $quizans);
        $u = User::find(Auth::id());
        $q = new Answer();
        $q->qset_id = $request->qset ?? null;
        $q->type = 'sq';
        $q->marks = $result;
        $q->tquiz = count($answers);
        if($u){
            $u->answers()->save($q);
            return redirect('leaderboard/user')->with('message', 'You got '. $result . ' out of ' . count($answers));
        }
        else{
            return redirect('/')->with('message', 'Thanks for your Supports');
        }
        
    }

    public function apianswers(Request $request)
    {
        
        $answers = $request->all();
        unset($answers['_token']);
        return response()->json($answers);
        exit;
        $quizid = array_keys($answers);
        $quizid = Arr::map($quizid, function ($value, $key) {
            return substr($value, 3);
        });
        $quizans = array_values($answers);
        $quizzes = Quiz::whereIn('id', $quizid)->get();
        $result = 0;
        foreach ($quizzes as $quiz) {
            if ($quiz->ans == $answers['box' . $quiz->id]) {
                $result++;
            }
            //echo $quiz->id ." :". $quiz->ans. " =  User ans:" . $answers['box'.$quiz->id] . "<br>";
        }
        // dd($answers,$quizzes , $quizid, $quizans);
        $u = User::find(Auth::id());
        $q = new Answer();
        $q->qset_id = $request->qset ?? null;
        $q->type = 'sq';
        $q->marks = $result;
        $q->tquiz = count($answers);
        if($u->role == "3"){
            $u->answers()->save($q);
            return Redirect::to('student')->with('message', 'You got '. $result . ' out of ' . count($answers));
        }
        else{
            return redirect('/')->with('message', 'Thanks for your Supports');
        }
        
    }
}
