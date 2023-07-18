<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view('users/home');
    }
    public function skill()
    {
        return view('users/skill');
    }
    public function user()
    {
        $tableName = 'users';
        $tableData = DB::table($tableName)->get();
        // dd($tableData);
        return view('admin/user', ['tableData' => $tableData]);
    }
    public function userall()
    {
        $tableName = 'users';
        $tableData = DB::table($tableName)->get();
        // dd($tableData);
        // return view('admin/user', ['tableData' => $tableData]);
        return response()->json(['tableData' => $tableData]);
    }
    public function board()
    {
        $tableName = 'boards';
        $tableData = DB::table($tableName)->get();
        // dd($tableData);
        return view('admin/board', ['tableData' => $tableData]);
    }
    public function district()
    {
        $tableName = 'boards';
        $tableData = DB::table($tableName)->get();
        $result = DB::table('districts')
            ->select('districts.id', 'districts.board_id', 'districts.name', 'districts.bn_name', 'districts.lat', 'districts.lon', 'districts.url', 'boards.name AS board_name')
            ->join('boards', 'boards.id', '=', 'districts.board_id')
            ->orderBy('districts.id', 'ASC')
            ->get();
        // dd($tableData);
        return view('admin/district', ['tableData' => $result]);
    }
    public function thana()
    {
        $result = DB::table('thana')
            ->select('thana.id', 'thana.district_id', 'thana.name', 'thana.bn_name', 'thana.url', 'districts.name AS d_name')
            ->join('districts', 'districts.id', '=', 'thana.district_id')
            ->orderBy('thana.id', 'ASC')
            ->get();

        // Fetch data from the 'districts' table
        $districts = DB::table('districts')
            ->select('id', 'name')
            ->get();

        return view("admin/thana", [
            'tableData' => $result,
            'dst' => $districts,

        ]);
    }
}
