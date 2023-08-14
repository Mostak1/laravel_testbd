<?php

namespace App\Http\Controllers;

use App\Models\Detail;
use App\Http\Requests\StoreDetailRequest;
use App\Http\Requests\UpdateDetailRequest;
use App\Models\Category;
use App\Models\Topic;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DetailController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $detail = Detail::with('topic')->get();
        return view("detail.index")
            ->with('detail', $detail)
            ->with('user', Auth::user());
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $topic = Topic::pluck('name', 'id');
        $categories = Category::pluck('name', 'id');
        // array_unshift($categories , ['-1'=>"Select Category"]);
        // dd($categories);
        return view("detail.create")->with('categories', $categories)->with('user', Auth::user());
  
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreDetailRequest $request)
    {
        
        $detail=Detail::create($request->all());
        if ($detail) {
            return back()->with('success', 'Detail  has been created successfully!')->withInput($request->input());
        } else {
            return back()->with('error', 'Error!! Data Not Inserted!')->withInput($request->input());
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Detail $detail)
    {
        return view('detail.show', compact('detail'))->with('user', Auth::user());
  
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Detail $detail)
    {
        $topic = Topic::pluck('name', 'id');
        return view('detail.edit', compact('detail'))->with('topic', $topic)->with('user', Auth::user());
   
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateDetailRequest $request, Detail $detail)
    {
        $detail->update($request->all());
        if ($detail->save()) {
            return back()->with('success', "Update Successfully!");
        } else {
            return back()->with('error', "Update Failed!!!");
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Detail $detail)
    {
        if (Detail::destroy($detail->id)) {
            return back()->with('success', $detail->id . ' Deleted!!!!');
        }
    }
    public function topic_detail(Request $request)
    {
       $tid = $request->tid;
       $tdetail = Detail::where('topic_id', $tid)->get();
    //    dd($tdetail);
       return response()->json($tdetail);
    //    return view('playquiz.subcat')->with('tdetail', $tdetail);
    }
}
