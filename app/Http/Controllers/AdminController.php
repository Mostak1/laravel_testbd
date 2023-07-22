<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    //

    public function user()
    {
        $tableName = 'users';
        $tableData = DB::table($tableName)->get();
        // dd($tableData);
        return view('admin/user', ['tableData' => $tableData]);
    }
}
