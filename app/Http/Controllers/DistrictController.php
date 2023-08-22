<?php

namespace App\Http\Controllers;

use App\Models\District;
use App\Http\Requests\StoreDistrictRequest;
use App\Http\Requests\UpdateDistrictRequest;
use App\Models\Board;
use Illuminate\Support\Str;


class DistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $board = Board::get();
        // dd($cat);
        $dis = District::with('board')->withTrashed()->get();

        return view("admin.district.all")
            ->with('b', $board)
            ->with('dis', $dis);
    }
    public function distJson($id)
    {
        $dist = District::where('board_id', $id)->pluck('name', 'id');
        return response()->json($dist);
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
    public function store(StoreDistrictRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(District $district)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(District $district)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateDistrictRequest $request, District $district)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(District $district)
    {
        //
    }
    public function restore($id)
    {
        $d = Board::onlyTrashed()->find($id);
        if ($d->restore()) {
            return redirect()->back()->with("success", "District Restored Successfully");
        }
    }
}
