<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Enroll;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Carbon\Carbon;
use GuzzleHttp\Client;

class HomeController extends Controller
{
    public function index()
    {
        $cats  = Category::where('active', '2')->whereNotIn('id', [12, 13])->with('subcategories')->get();
        return view('users/home', compact('cats'));
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
    public function sendEmail(Request $request)
    {
        // Get form data from the request
        $formData = [
            'user_name' => $request->user_name,
            'user_email' => $request->user_email,
            'message' => $request->message,
        ];

        $client = new Client();

        // Send a POST request using Guzzle
        try {
            $response = $client->post('https://mostaksarker.com/API/mail.php', [
                'form_params' => $formData,
            ]);

            // Check the response status code and take appropriate action
            if ($response->getStatusCode() === 200) {
                return back()->with('success', 'Email successfully sent');
            } else {
                return back()->with('success', 'Email successfully sent');
            }
        } catch (\Exception $e) {
            return back()->with('error', 'Email not sent');
        }
    }

}
