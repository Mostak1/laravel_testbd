<?php

namespace App\Http\Controllers;

use App\Models\Subcategory;
use App\Models\Category;
use App\Http\Requests\StoreSubcategoryRequest;
use App\Http\Requests\UpdateSubcategoryRequest;
use Illuminate\Support\Facades\Auth;
class SubcategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $allsubcat = Subcategory::with('category')->get();
        return view("subcategory.index")
            ->with('allsubcat', $allsubcat)
            ->with('user', Auth::user());
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::pluck('name', 'id');
        // array_unshift($categories , ['-1'=>"Select Category"]);
        // dd($categories);
        return view("subcategory.create")->with('categories', $categories)->with('user', Auth::user());
  
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreSubcategoryRequest $request)
    {
        $sc = new Subcategory();
        $sc->name = $request->name;
        $sc->active = $request->active;
        $sc->description = $request->description;
        $c = Category::find($request->category_id);
        if ($c->subcategories()->save($sc)) {
            return back()->with('success', 'Subject ' . $sc->id . ' has been created successfully!')->withInput($request->input());
        } else {
            return back()->with('success', 'Error!!');
        }
   
    }

    /**
     * Display the specified resource.
     */
    public function show(Subcategory $subcategory)
    {
        return view('subcategory.show', compact('subcategory'))->with('user', Auth::user());
  
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Subcategory $subcategory)
    {
        $categories = Category::pluck('name', 'id');
        return view('subcategory.edit', compact('subcategory'))->with('categories', $categories)->with('user', Auth::user());
   
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateSubcategoryRequest $request, Subcategory $subcategory)
    {
        
        $subcategory->update($request->all());
        if ($subcategory->save()) {
            return back()->with('success', "Update Successfully!");
        } else {
            return back()->with('error', "Update Failed!!!");
        }
    }
 // for subcats as cats
 public function subcats($cid)
 {
     //$cid = $request->cid;
     $cat = Subcategory::where('category_id', $cid)->pluck('name', 'id');
     return response()->json($cat);
 }
    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Subcategory $subcategory)
    {
        if (Subcategory::destroy($subcategory->id)) {
            return back()->with('success', $subcategory->id . ' Deleted!!!!');
        }
    }
}
