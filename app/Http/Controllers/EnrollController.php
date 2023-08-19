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
// ipn_listener/sss
    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $uid = $request->user_id;
        $catid = $request->category_id;
        $endata=Enroll::where('user_id',$uid)->where('category_id',$catid)->get();
        if ($endata->isEmpty()) {
            // No matching records found
            $enroll=Enroll::create($request->all());
            if ($enroll) {
                return back()->with('success', 'Congratulations!Your enroll  has been created successfully! You will active soon. Thanks for your patience')->withInput($request->input());
            } else {
                return back()->with('error', 'Error!! Enroll Not successfull!')->withInput($request->input());
            }
        } else {
            
                return back()->with('info', 'You are already enrolled successfully! You will activate soon. Thanks for your patience')->withInput($request->input());
          
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
            $cat = Category::find($id);
            $catp= $cat->price;
            // $catp = Category::where('id',$id)->pluck('price');
            // dd($catp);
            return view('enroll.ucreate')
            ->with('categories', $categories)
            ->with('users', $users)
            ->with('catp', $catp);
       
        }
      
        return redirect()->route('login')->with('warning', 'Please Log In First');

   
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
