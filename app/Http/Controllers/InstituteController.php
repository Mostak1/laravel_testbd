<?php

namespace App\Http\Controllers;

use App\Models\Board;
use App\Models\District;
use App\Models\Institute;
use App\Models\Thana;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class InstituteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $institute= Institute::with(['board','district','thana'])->get();

        return view('institute.index')
        ->with('institute',$institute);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $board = Board::pluck('name','id');
        $district=District::pluck('name','id');
        $thana=Thana::pluck('name','id');
        return view('institute.create')
        ->with('board',$board)
        ->with('district',$district)
        ->with('thana',$thana)
        ->with('user',Auth::user());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $institute=Institute::create($request->all());
        if ($institute) {
            return back()->with('success','Institute created successfully');
        } else {
            return back()->with('info','Data not inserted !!!');
        }
        
    }

    /**
     * Display the specified resource.
     */
    public function show(Institute $institute)
    {
       $id=$institute->id;

       $ins =Institute::with(['board','district','thana'])->find($id);

        // $board = Board::pluck('name','id');
        // $district=District::pluck('name','id');
        // $thana=Thana::pluck('name','id');
        return view('institute.show',compact('ins'));
        // ->with('board',$board)
        // ->with('district',$district)
        // ->with('thana',$thana)
        // ->with('user',Auth::user());
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Institute $institute)
    {
        $board = Board::pluck('name','id');
        $district=District::pluck('name','id');
        $thana=Thana::pluck('name','id');
        return view('institute.edit',compact('institute'))
        ->with('board',$board)
        ->with('district',$district)
        ->with('thana',$thana)
        ->with('user',Auth::user());
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Institute $institute)
    {
        $institute->update($request->all());
        if ($institute->save()) {
            return back()->with('success', "Update Successfully!");
        } else {
            return back()->with('error', "Update Failed!");
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Institute $institute)
    {
        if (Institute::destroy($institute->id)) {
            return back()->with('success', $institute->id . ' Deleted!!!!');
        }
    }
    public function insJson($id){
        $ins = Institute::where('thana_id', $id)->pluck('name', 'id');
        return response()->json($ins);
    }
}
