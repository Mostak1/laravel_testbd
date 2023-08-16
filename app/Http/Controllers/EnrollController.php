<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Enroll;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EnrollController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $enroll = Enroll::with('category')->get();
        return view("enroll.index")
            ->with('enroll', $enroll)
            ->with('user', Auth::user());
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::pluck('name', 'id');
        $users = User::pluck('name', 'id');
        
        return view("enroll.create")->with('categories', $categories)->with('users', $users);
  
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $enroll=Enroll::create($request->all());
        if ($enroll) {
            return back()->with('success', 'Your enroll  has been created successfully! You will active soon. Thanks for your patience')->withInput($request->input());
        } else {
            return back()->with('error', 'Error!! Enroll Not successfull!')->withInput($request->input());
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Enroll $enroll)
    {
        return view('enroll.show', compact('enroll'))->with('user', Auth::user());
  
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Enroll $enroll)
    {
        $categories = Category::pluck('name', 'id');
        $users = User::pluck('name', 'id');
        return view('enroll.edit', compact('enroll'))->with('categories', $categories)->with('users', $users);
   
    }
    public function uenroll($id)
    {
        if (Auth::user()) {
            $uid= Auth::user()->id;
            $categories = Category::where('id',$id)->pluck('name', 'id');
            $users = User::where('id',$uid)->pluck('name', 'id');
            return view('enroll.ucreate')->with('categories', $categories)->with('users', $users);
       
        }
      
        return redirect()->route('login')->with('success', 'Please Log In First');

   
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Enroll $enroll)
    {
        $enroll->update($request->all());
        if ($enroll->save()) {
            return back()->with('success', "Update Successfully!");
        } else {
            return back()->with('error', "Update Failed!!!");
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Enroll $enroll)
    {
        if (Enroll::destroy($enroll->id)) {
            return back()->with('success', $enroll->id . ' Deleted!!!!');
        }
    }
}
