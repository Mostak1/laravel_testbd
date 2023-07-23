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
}
