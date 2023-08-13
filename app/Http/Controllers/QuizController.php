<?php

namespace App\Http\Controllers;

use App\Models\Quiz;
use App\Models\Category;
use App\Models\Subcategory;
use App\Http\Requests\StoreQuizRequest;
use App\Http\Requests\UpdateQuizRequest;
use App\Models\Topic;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request as FacadesRequest;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Intervention\Image\ImageManagerStatic as ImageI;


class QuizController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        if (Auth::user()->role == "1") {
            $quizzes = Quiz::with('category')->with('subcategory')->with('topic')->get();
        } else {
            $quizzes = Quiz::where('user_id', Auth::id())->with('category')->with('subcategory')->with('topic')->get();
        }

        return view("quiz.index")
            ->with('quizzes', $quizzes)
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
        return view('quiz.create',)->with('categories', $categories)
            ->with('subcategories', $subcategories)
            ->with('topics', $topics)
            ->with('user', Auth::user());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreQuizRequest $request)
    {
        // $r = json_encode($request->ques);
        // $opt = str_replace('"', '', trim($request->ques, '[]'));
        $ques = json_encode($request->ques);
        $opt = str_replace('"', '', trim($ques, '[]'));

        if ($request->hasFile('quizimage')) {
            $file = $request->file('quizimage');
            $extention = $file->extension();
            $qid  = Quiz::all()->last()->id;
            $filename = $qid + 1 .'.'. $extention;
            $request->quizimage->move(public_path('/assets/img/'), $filename);
        }



        $request = [

            'question' => htmlentities($request->question),
            'type' => $request->type,
            'op1' => htmlentities($request->op1),
            'op2' => htmlentities($request->op2),
            'op3' => htmlentities($request->op3),
            'op4' => htmlentities($request->op4),
            'ans' => $opt,
            'qimage' => $filename ?? '',
            'user_id' => $request->user_id,
            'category_id' => $request->category_id,
            'subcategory_id' => $request->subcategory_id,
            'topic_id' => $request->topic_id ?? '',
        ];

        $quizzes = Quiz::create($request);
        if ($quizzes) {
            return back()->with('success', 'Quiz ' . $quizzes->id . ' has been created Successfully!')->withinput(array('category_id' =>  $quizzes->category_id));
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Quiz $quiz)
    {
        $categories = Category::pluck('name', 'id');
        $subcategories = Subcategory::pluck('name', 'id');
        $topics = Topic::pluck('name', 'id');
        return view('quiz.show', compact('quiz'))->with('categories', $categories)
            ->with('subcategories', $subcategories)
            ->with('topics', $topics)
            ->with('user', Auth::user());
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Quiz $quiz)
    {
        $cat = Category::pluck('name', 'id');
        $subcat = Subcategory::pluck('name', 'id');
        $topics = Topic::pluck('name', 'id');
        return view('quiz.edit', compact('quiz'))
            ->with('cat', $cat)
            ->with('subcat', $subcat)
            ->with('topics', $topics)
            ->with('user', Auth::user());
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateQuizRequest $request, Quiz $quiz)
    {
        $ques = json_encode($request->ques);
        $opt = str_replace('"', '', trim($ques, '[]'));
        // dd($opt);
        if ($request->hasFile('quizimage')) {
            if ($quiz->qimage) {
                Storage::delete($quiz->qimage);
            }
            $file = $request->file('quizimage');
            $extention = $file->extension();
            $qid  = Quiz::all()->last()->id;
            $filename = $qid + 1 .'.'. $extention;
            $request->quizimage->move(public_path('/assets/img/'), $filename);
        }

        // if ($request->file('quizimage')) {
        //     if ($quiz->qimage) {
        //         Storage::delete($quiz->qimage);
        //     }

        //     // Image rename and replace the file name with desired name
        //     $path = $request->file('quizimage')->storeAs('public/quizimages', $quiz->qimage);
        //     $storagepath = Storage::path($path);
        //     // ->fit(330, 330)
        //     $img = Image::make($storagepath);
        //     $img->save($storagepath);
        // }
        // Input
        // if ($request->subcategory_id=='0' || $request->topic_id == '0') {
        //     $quiz->subcategory_id = $request->subcategory_id=='0'? null : $request->subcategory_id;
        //     $quiz->topic_id = $request->topic_id=='0'? null : $request->topic_id;
        //     // $quiz->update($request->only($request)); //$request->only($request)  
        // } 
        $quiz->update($request->except('ans', 'subcategory_id', 'topic_id'));
        $quiz->subcategory_id = $request->subcategory_id == '0' ? null : $request->subcategory_id;
        $quiz->topic_id = $request->topic_id == '0' ? null : $request->topic_id;
        $quiz->ans = $opt;

        //  dd($request->ans,  $quiz->ans,$opt);


        if ($quiz->update()) {
            return back()->with('success', "Update Successfully!");
        } else {
            return back()->with('error', "Update Failed!");
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Quiz $quiz)
    {
        if (Quiz::destroy($quiz->id)) {
            return back()->with('success', $quiz->id . ' has been deleted!');
        } else {
            return back()->with('error', 'Delete Failed!');
        }
    }

    public function qskill(Request $request, Category $category)
    {

        $cats  = Category::where('active','2')->with('subcategories')->get();
        return view('playquiz.index', compact('cats'));
    }
    public function qacademic(Request $request, Category $category)
    {

        $cats  = Category::where('active','1')->with('subcategories')->get();
        return view('playquiz.academic', compact('cats'));
    }
    public function qcompetitive(Request $request, Category $category)
    {

        $cats  = Category::where('active','3')->with('subcategories')->get();
        return view('playquiz.competitive', compact('cats'));
    }
    public function catquiz($id)
    {


        $cats  = Category::with("subcategories.topics")->find($id);
        //    dd($cats);
        return view('playquiz.cat')
            ->with('cats', $cats);
    }
    public function subcatquiz($id)
    {

        $scats  = Subcategory::with('topics')->find($id);
        // dd($scats);
        return view('playquiz.subcat')->with('scats', $scats);
    }
    public function topicquiz($id)
    {
        $count = "10";
        
            $quizzes = Quiz::where('topic_id',$id)->inRandomOrder()->limit($count)->get();
        $topic=Topic::find($id);
            // $quizzes = Quiz::inRandomOrder()->limit($count)->get();
       
        $topics = Topic::with('quizzes')->get();
        return view('playquiz.topic')
        ->with('quizzes', $quizzes)
        ->with('topic', $topic);
    }
    public function topicquizapi($id)
    {
        $count = "10";
        
            $quizzes = Quiz::where('topic_id',$id)->inRandomOrder()->limit($count)->get();
        
            // $quizzes = Quiz::inRandomOrder()->limit($count)->get();
       
        $topics = Topic::with('quizzes')->get();
        return response()->json($quizzes);
        // return view('playquiz.topic', compact('quizzes'));
    }




    public function qshow(Request $request)
    {
        $count = $request->count ?? "10";

        $quizzes = Quiz::inRandomOrder()->limit($count)->get();
        $categories = Category::pluck('name', 'id');
        return view('quiz/qz.qshow', compact('quizzes', 'categories'));
    }
    public function dynamicquiz(Request $request)
    {
        $count = $request->count ?? "10";
        $whereArray = [];
        if ($request->cid) {
            $whereArray['category_id'] = $request->cid;
        }
        if ($request->scid  && $request->scid != "0") {
            $whereArray['subcategory_id'] = $request->scid;
        }
        if ($request->tid  && $request->tid != "0") {
            $whereArray['topic_id'] = $request->tid;
        }
        if (count($whereArray)) {
            $quizzes = Quiz::where($whereArray)->inRandomOrder()->limit($count)->get();
        } else {
            $quizzes = Quiz::inRandomOrder()->limit($count)->get();
        }
        return response()->json($quizzes);
    }

    public function qimage()
    {
        return view('playquiz.qimage')
            ->with('user', Auth::user());
    }


    // ============================
    // API
    public function randomquestions()
    {
        $q = Quiz::inRandomOrder()->limit(15)->get();
        return response()->json($q);
    }

    public function apiaddquiz(Request $request)
    {
        $request = [

            'question' => htmlentities($request->question),

            'op1' => htmlentities($request->op1),
            'op2' => htmlentities($request->op2),
            'op3' => htmlentities($request->op3),
            'op4' => htmlentities($request->op4),
            'ans' => $request->ans,

        ];
        $quizzes = Quiz::create($request);
        return response()->json(['success' => "Quiz Created"]);
    }

    public function loadquestions($cid, $scid, $tid)
    {
        $qz = Quiz::where('category_id', $cid)
            ->where('category_id', $scid)
            ->where('topic_id', $tid)
            ->limit(15)->get();
        //  dd($cid,$scid,$tid );
        // questions/6/6/8
        return response()->json($qz);
    }

    public function apicatquiz($id)
    {
        $catz  = Category::with("subcategories.topics")->find($id);
        //    dd($cats);
        return response()->json($catz);
    }
}
