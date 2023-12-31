<?php

namespace App\Http\Controllers;

use App\Models\Quizset;
use App\Http\Requests\StoreQuizsetRequest;
use App\Http\Requests\UpdateQuizsetRequest;
use App\Models\Answer;
use App\Models\Category;
use App\Models\Quiz;
use App\Models\Subcategory;
use App\Models\Topic;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class QuizsetController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (Auth::user()->role == "1") {
            $quizset = Quizset::with('category')->with('subcategory')->get();
        } else {
            $quizset = Quizset::where('user_id', Auth::id())->with('category')->with('subcategory')->get();
        }

        return view("quizset.index", compact('quizset'))
            ->with('user', Auth::user());
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::pluck('name', 'id');
        $subcategories = Subcategory::pluck('name', 'id');
        $topics = Topic::pluck('name', 'id');
        return view('quizset.create')->with('categories', $categories)
            ->with('subcategories', $subcategories)
            ->with('topics', $topics)
            ->with('user', Auth::user());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreQuizsetRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Quizset $quizset)
    {
        if (Auth::user()->role == "1") {
            $quizset = Quizset::with('category')->with('subcategory')->get();
        } else {
            $quizset = Quizset::where('user_id', Auth::id())->with('category')->with('subcategory')->get();
        }

        return view('quizset.show', compact('quizset'))
            ->with('user', Auth::user());
    }
    public function showquiz(Request $request)
    {
        // echo "hello";
        
        $quiz  = Quiz::where('category_id', $request->cid)->where('subcategory_id', $request->scid)->get();
        return response()->json($quiz);
        //return view('showquiz')->with('quizzes',$quizzes);

    }
    public function storeset(Request $request)
    {
        $u = User::find(Auth::id());
        $q = new Quizset();
        $q->name = $request->name;
        $q->title = $request->title;
        $q->category_id = $request->cid;
        $q->subcategory_id = $request->scid;
        $q->topic_id = $request->tid;
        $q->stime = $request->stime;
        $q->entime = $request->entime;
        $q->quizzes = join(",", $request->quiz);
        // $q->quizzes = $request->quiz;

        if ($u->quizsets()->save($q)) {
            Session::flash('message', __('Quizset ' . $q->id . ' has been created!'));
            return response()->json(['message' => "Created", 'error' => 0]);
        } else {
            return response()->json(['message' => "Error", 'error' => 1]);
        }
    }
    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        if (Auth::user()->role == "1") {
            $quizset = Quizset::all()->where('id', $id);
        } else {
            $quizset = Quizset::all()->where('user_id', Auth::id())->where('id', $id);
        }

        $cat = Category::pluck('name', 'id');
        $subcat = Subcategory::pluck('name', 'id');
        $topics = Topic::pluck('name', 'id');
        //  dd($catp);
        return view('quizset.edit', compact('quizset'))
            ->with('cat', $cat)
            ->with('subcat', $subcat)
            ->with('topics', $topics)
            ->with('user', Auth::user());
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateQuizsetRequest $request, Quizset $quizset)
    {
        if ($request->input('subcategory_id') == "0" || $request->input('topic_id') == "0") {

            $quizset->update($request->except('subcategory_id', 'topic_id'));
            $quizset->subcategory_id = $request->input('subcategory_id') == "0" ? NULL : $request->subcategory_id;
            $quizset->topic_id = NULL;
            // ($quizset->update());
        } else {
            $quizset->update($request->all());
        }

        if ($quizset->update()) {
            return back()->with('message', "Update Successfully!");
        } else {
            return back()->with('message', "Update Failed!!!");
        }
    }
    public function showqset($id)
    {

        $qset = Quizset::find($id);
        $leaders = Answer::where('qset_id',$id)
        ->orderBy('marks','desc')
        ->orderBy('created_at')
        ->limit(4)
        ->get();
        // echo "hi";
        // dd($leaders);
        $answers = Answer::orderBy("marks", "desc")->orderBy('created_at')->where('type','sq')->paginate(15);
        $anslim = Answer::orderBy("marks", "desc")->orderBy('created_at')->where('type','sq')->paginate(4);
        // dd($mark);
        
        return view('playquiz.qset')
            ->with('qset', $qset)
            ->with('leaders', $leaders)
            ->with('anslim', $anslim)
            ->with('answers', $answers)
            ->with('user', Auth::user());
        //  dd($qset);


    }
    public function showendqset($id)
    {

        $qset = Quizset::find($id);
        $leaders = Answer::where('qset_id',$id)
        ->orderBy('marks','desc')
        ->orderBy('created_at')
        ->limit(5)
        ->get();
        // echo "hi";
        // dd($leaders);
        
        return view('playquiz.endqset')
            ->with('qset', $qset)
            ->with('leaders', $leaders)
            ->with('user', Auth::user());
        //  dd($qset);


    }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Quizset $quizset)
    {
        //
    }
    public function quizsetquerstions($id)
    {
        $qset = Quizset::find($id);
        $setquiz = Quiz::whereIn('id', explode(',', $qset->quizzes))->get();
        return response()->json($setquiz);
       


    }
}
