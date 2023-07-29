<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;
use Illuminate\Support\Facades\Auth;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Category::all();
        return view('category.index',compact('categories'))->with('user',Auth::user());
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('category.create')->with('user',Auth::user());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreCategoryRequest $request)
    {
        
        $data = [
            'name'=>$request->name,
            'description'=>$request->description,
            'active'=>$request->active,
        ];
        // dd($data);
        $cat = Category::create($data);
        if($cat){
            return back()->with('success','Category ' .$cat->id. ' has been created Successfully!');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        return view('category.show',compact('category'))->with('user',Auth::user());
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category)
    {
        return view('category.edit',compact('category'))->with('user',Auth::user());
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateCategoryRequest $request, Category $category)
    {
        $category->update($request->all());
        if($category->save()){
                return back()->with('success',"Update Successfully!");
            }
            else{
                return back()->with('error',"Update Failed!");
            }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        if(Category::destroy($category->id)){
            return back()->with('success',$category->id. ' has been deleted!');
        }else{
            return back()->with('error','Delete Failed!');
        }
    }
}
