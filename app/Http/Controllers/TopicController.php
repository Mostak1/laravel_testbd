<?php

namespace App\Http\Controllers;

use App\Models\Topic;
use App\Http\Requests\StoreTopicRequest;
use App\Http\Requests\UpdateTopicRequest;
use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Support\Facades\Auth;

class TopicController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $alltopic = Topic::with('subcategory')->with('category')->get();
        return view("topic.index")
            ->with('alltopic', $alltopic)
            ->with('user', Auth::user());
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::pluck('name', 'id');
        $subcategories = Subcategory::pluck('name', 'id');

        return view("topic.create")->with('categories', $categories)
            ->with('subcategories', $subcategories)

            ->with('user', Auth::user());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTopicRequest $request)
    {
        $tp = new Topic();
        $tp->name = $request->name;
        $tp->active = $request->active;
        $tp->description = $request->description;
        $c = Category::find($request->category_id);
        $sc = Subcategory::find($request->subcategory_id);
        // dd($sc);
        if ($sc->topics()->save($tp)) {
            return back()->with('success', 'Subject ' . $tp->id . ' has been created successfully!')->withInput($request->input());
        } else {
            return back()->with('error', 'Subject not created!');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Topic $topic)
    {
        return view('topic.show', compact('topic'))->with('user', Auth::user());
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Topic $topic)
    {
        $categories = Category::pluck('name', 'id');
        $subcategories = Subcategory::pluck('name', 'id');
        return view('topic.edit', compact('topic'))->with('categories', $categories)->with('subcategories', $subcategories)->with('user', Auth::user());
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateTopicRequest $request, Topic $topic)
    {
        $topic->update($request->all());
        if ($topic->save()) {
            return back()->with('success', "Update Successfully!");
        } else {
            return back()->with('error', "Update Failed!!!");
        }
    }
    public function topics($tid)
    {
        //$tid = $request->tid;
        $topic = Topic::where('subcategory_id', $tid)->pluck('name', 'id');
        //  dd($topic);
        return response()->json($topic);
    }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Topic $topic)
    {
        if (Topic::destroy($topic->id)) {
            return back()->with('info', $topic->id . ' Deleted!');
        }
    }
}
