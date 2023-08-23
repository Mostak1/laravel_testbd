<?php

namespace App\Http\Controllers;

use App\Models\Board;
use App\Models\Category;
use App\Models\District;
use App\Models\Institute;
use App\Models\Question;
use App\Models\Question_image;
use App\Models\Subcategory;
use App\Models\Thana;
use App\Models\Topic;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as ImageI;

class QuestionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $questions = Question::with(['user', 'board', 'district', 'thana', 'institute', 'subcategory', 'question_images'])->get();
        return view('question.index')
            ->with('questions', $questions);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $board = Board::pluck('name', 'id');
        $district = District::pluck('name', 'id');
        $thana = Thana::pluck('name', 'id');
        $categories = Category::pluck('name', 'id');
        $subcategories = Subcategory::pluck('name', 'id');
        $topics = Topic::pluck('name', 'id');
        $institute = Institute::pluck('name', 'id');

        return view("question.create")
            ->with('board', $board)
            ->with('district', $district)
            ->with('thana', $thana)
            ->with('institute', $institute)
            ->with('categories', $categories)
            ->with('subcategories', $subcategories)
            ->with('topics', $topics)
            ->with('user', Auth::user());
    }
    public function ucreate()
    {
        $board = Board::pluck('name', 'id');
        $district = District::pluck('name', 'id');
        $thana = Thana::pluck('name', 'id');
        $categories = Category::pluck('name', 'id');
        $subcategories = Subcategory::pluck('name', 'id');
        $topics = Topic::pluck('name', 'id');
        $institute = Institute::pluck('name', 'id');
        $questions = Question::with(['user', 'board', 'district', 'thana', 'institute', 'subcategory', 'question_images'])->paginate(6);

        return view("question.ucreate")
            ->with('board', $board)
            ->with('district', $district)
            ->with('thana', $thana)
            ->with('institute', $institute)
            ->with('categories', $categories)
            ->with('subcategories', $subcategories)
            ->with('topics', $topics)
            ->with('questions', $questions)
            ->with('user', Auth::user());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $question = Question::create($request->all());
        if ($question) {
            //
            //    dd($request);
            // if ($request->hasFile('images')) {
            //     $files = $request->file('images');
            //     foreach ($files as $file) {

            //     };
            //     $extention = $file->extension();
            //     $qid  = Quiz::all()->last()->id;
            //     $filename = $qid + 1 . '.' . $extention;
            //     $request->quizimage->move(public_path('/assets/img/'), $filename);
            // }
            if ($request->hasFile('images')) {
                $files = $request->file('images');

                foreach ($files as $file) {
                    // Save or process each file as needed
                    // $loc = $file->store('public/uploads');
                    $fname = $file->getClientOriginalName();
                    $loc = $file->storeAs('public/uploads', $fname);

                    $i = new Question_image();
                    $i->name = $fname;
                    $question->question_images()->save($i);

                    $image = ImageI::make(Storage::path($loc))->save(Storage::path($loc));
                }
                $uid = Auth::user()->id;
                $user = User::find($uid);
                $npoints = 100;
                

                // Update the points for the user
                $user->points += $npoints; // Add the new points to the existing points

                // Save the changes
                $user->save();

                return redirect()->back()->with("success", "Question saved successfully. ID is " . $question->id);
            } else {
                echo "image not available";
            }
            // 
        } else {
            echo "add failed";
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Question $question)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Question $question)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Question $question)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Question $question)
    {
        //
    }
    public function restore($id)
    {
        $d = Question::onlyTrashed()->find($id);
        if ($d->restore()) {
            return redirect()->back()->with("success", "Restored Successfully");
        }
    }
}
