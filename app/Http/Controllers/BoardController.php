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
        $data['board'] = Board::withTrashed()->paginate(10);
        // dd($data);
        return view('admin.board.all', $data);
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
        $board = Board::find($board)?->first();
        //dd($cat);
        return view("admin.board.edit", compact("board"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateBoardRequest $request, Board $board)
    {
        $board->name = $request->name;
        $board->url = $request->url;
        if ($board->save()) {
            return redirect()->back()->with("success", "Successfully Updated");
        }
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
    public function restore($id)
    {
        $board = Board::onlyTrashed()->find($id);
        if ($board->restore()) {
            return redirect()->back()->with("success", "Restored Successfully");
        }
    }
}
