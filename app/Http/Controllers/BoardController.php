<?php

namespace App\Http\Controllers;

use App\Models\Board;
use App\Http\Requests\StoreBoardRequest;
use App\Http\Requests\UpdateBoardRequest;

class BoardController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data['board'] = Board::paginate(10);
        // dd($data);
        return view('admin.board', $data);
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
    public function store(StoreBoardRequest $request)
    {
        Board::create($request->all());
        return redirect("board")->with("success", 'Board Successfully Added');
    }

    /**
     * Display the specified resource.
     */
    public function show(Board $board)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Board $board)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateBoardRequest $request, Board $board)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Board $board)
    {
        if (Board::destroy($board->id)) {
            return redirect('board')->with("success", "Successfully Deleted");
        }
    }
}
