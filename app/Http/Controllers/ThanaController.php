<?php

namespace App\Http\Controllers;

use App\Models\Thana;
use App\Http\Requests\StoreThanaRequest;
use App\Http\Requests\UpdateThanaRequest;
use App\Models\District;

class ThanaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $district = District::get();
        // dd($dis);
        $thana = Thana::with('district')->withTrashed()->get();

        return view("admin.thana.all")
            ->with('thanas', $thana)
            ->with('district', $district);
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
    public function store(StoreThanaRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Thana $thana)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Thana $thana)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateThanaRequest $request, Thana $thana)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Thana $thana)
    {
        //
    }
    public function restore($id)
    {
        $d = Thana::onlyTrashed()->find($id);
        if ($d->restore()) {
            return redirect()->back()->with("success", "Restored Successfully");
        }
    }
}
