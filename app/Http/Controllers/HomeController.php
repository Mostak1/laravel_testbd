<?php

namespace App\Http\Controllers;

use App\Models\Enroll;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Carbon\Carbon;

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
    public function admin()
    {
        $currentDate = Carbon::now();
         // Get date 7 days ago
         $sevenDaysAgo = Carbon::now()->subDays(7);

         // Get date 30 days ago
         $thirtyDaysAgo = Carbon::now()->subDays(30);


        $orderCountD = Enroll::whereDate('created_at', $currentDate)->count();

        $totalSalesD = Enroll::whereDate('created_at', $currentDate)
            ->where('status', 'Active')
            ->sum('price');
        


            // Count orders for the last 7 days
        $orderCountW = Enroll::whereBetween('created_at', [$sevenDaysAgo, $currentDate])->count();

        // Count orders for the last 30 days
        $orderCountM = Enroll::whereBetween('created_at', [$thirtyDaysAgo, $currentDate])->count();

        // Calculate total sales for the last 7 days
        $totalSalesW = Enroll::whereBetween('created_at', [$sevenDaysAgo, $currentDate])
            ->where('status', 'Active')
            ->sum('price');

        // Calculate total sales for the last 30 days
        $totalSalesM = Enroll::whereBetween('created_at', [$thirtyDaysAgo, $currentDate])
            ->where('status', 'Active')
            ->sum('price');

            $salesCountD = Enroll::whereDate('created_at', $currentDate)
            ->where('status', 'Active')
            ->count();
            $salesCountW = Enroll::whereBetween('created_at', [$sevenDaysAgo, $currentDate])
            ->where('status', 'Active')
            ->count();
            $salesCountM = Enroll::whereBetween('created_at',[$thirtyDaysAgo, $currentDate])
            ->where('status', 'Active')
            ->count();

            // dd($orderCountD);
        return view('admin/dashboard')
        ->with('orderCountD', $orderCountD)
        ->with('totalSalesD', $totalSalesD)
        ->with('salesCountD', $salesCountD)
        ->with('orderCountW', $orderCountW)
        ->with('totalSalesW', $totalSalesW)
        ->with('salesCountW', $salesCountW)
        ->with('orderCountM', $orderCountM)
        ->with('totalSalesM', $totalSalesM)
        ->with('salesCountM', $salesCountM);
    }
}
