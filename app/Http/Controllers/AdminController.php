<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    //

    public function user()
    {
        $user['user'] = User::withTrashed()->paginate(10);
        // dd($tableData);
        return view('admin/user/all', $user);
    }

    public function user_edit($id)
    {
        $user = User::find($id);
        //dd($user);
        if (!$user) {
            abort(404); // User not found, return a 404 error.
        }
        return view("admin.user.edit", compact("user"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function user_update(Request $request, User $user)
    {
        $user->role = $request->role;
        if ($user->save()) {
            return redirect()->back()->with("success", "Successfully Updated");
        }
    }
    public function destroy(User $user)
    {
        if (User::destroy($user->id)) {
            return redirect('user')->with("success", "Successfully Deleted");
        }
    }
    public function restore($id)
    {
        $user = User::onlyTrashed()->find($id);
        if ($user->restore()) {
            return redirect()->back()->with("success", "Product Restored Successfully");
        }
    }
}
