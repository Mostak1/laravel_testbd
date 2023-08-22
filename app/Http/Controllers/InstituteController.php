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
            return back()->with('success', $institute . 'Institute created successfully');
        } else {
            return back()->with('info','Data not inserted !!!');
        }
        
    }

    /**
     * Display the specified resource.
     */
    public function show(Institute $institute)
    {
        $board = Board::pluck('name','id');
        $district=District::pluck('name','id');
        $thana=Thana::pluck('name','id');
        return view('institute.show')
        ->with('board',$board)
        ->with('district',$district)
        ->with('thana',$thana)
        ->with('user',Auth::user());
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Institute $institute)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Institute $institute)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Institute $institute)
    {
        //
    }
}
