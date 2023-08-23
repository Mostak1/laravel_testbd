<?php

namespace App\Http\Controllers;

use App\Http\Requests\ProfileUpdateRequest;
use App\Models\Profile;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\View\View;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as Image;

class ProfileController extends Controller
{
    public function index()
    {
        $id = Auth::user()->id;
        $profile = Profile::where('user_id', $id)->get();

        return view('profile.index')
            ->with('profile', $profile);
    }
    public function ucreate()
    {
        return view('profile.create');
    }
    public function uedit()
    {
        $id = Auth::user()->id;
        $profile = Profile::where('user_id', $id)->get();
        return view('profile.uedit', compact('profile'));
    }


    public function ustore(Request $request)
    {
        // Create a new Profile instance and set its attributes
        $profile = new Profile([
            'user_id' => $request->user_id,
            'fullname' => $request->fullname,
            'institute' => $request->institute,
            'batch' => $request->batch,
            'subject' => $request->subject,
            'designation' => $request->designation,
            'gender' => $request->gender,
            'bio' => $request->bio,
            'phone' => $request->phone,
            'address' => $request->address,
            'yt' => $request->yt,
            'fb' => $request->fb,
            'in' => $request->in,
            'guardianname' => $request->guardianname,
            'guardianemail' => $request->guardianemail,
            'guardianphone' => $request->guardianphone,
            'bloodgroup' => $request->bloodgroup,
        ]);

        // Handle image upload if present
        if ($request->hasFile('image')) {
            $file = $request->file('image');

            $fileName = $file->getClientOriginalName();

            // Store the file and get its path
            $loc = $file->storeAs('public/profileimg', $fileName);
            $profile->image = $fileName;
            $image = Image::make(Storage::path($loc))->save(Storage::path($loc));
        }

        // Save the new profile instance
        $profile->save();
        if ($profile) {
            return redirect()->back()->with("success", "Profile Information saved successfully.");
        } else {
            return redirect()->back()->with("info", "Profile Information Not saved.");
        }
    }
    public function uupdate(Request $request)
    {
        // Get the authenticated user's ID
        $userId = Auth::user()->id;

        // Retrieve the existing profile for the user
        $profile = Profile::where('user_id', $userId)->first();

        if ($profile) {
            // Update profile attributes with the new data
            $profile->fill([
                'fullname' => $request->fullname,
                'institute' => $request->institute,
                'batch' => $request->batch,
                'subject' => $request->subject,
                'designation' => $request->designation,
                'gender' => $request->gender,
                'bio' => $request->bio,
                'phone' => $request->phone,
                'address' => $request->address,
                'yt' => $request->yt,
                'fb' => $request->fb,
                'in' => $request->in,
                'guardianname' => $request->guardianname,
                'guardianemail' => $request->guardianemail,
                'guardianphone' => $request->guardianphone,
                'bloodgroup' => $request->bloodgroup,
            ]);

            // Handle image update if a new image is provided
            if ($request->hasFile('image')) {
                $file = $request->file('image');
                $fileName = $file->getClientOriginalName();
                $loc = $file->storeAs('public/profileimg', $fileName);
                $profile->image = $fileName;
                $image = Image::make(Storage::path($loc))->save(Storage::path($loc));
            }

            // Save the updated profile
            $profile->save();

            return redirect()->back()->with("success", "Profile Information updated successfully.");
        } else {
            return redirect()->back()->with("info", "Profile not found.");
        }
    }

    public function store(Request $request)
    {
        $profile = Profile::create($request->all());
        if ($profile) {


            //
            //    dd($request);
            // if ($request->hasFile('images')) {
            //     $files = $request->file('images');
            //     foreach ($files as $file) {

            //     };
            //     $extention = $file->extension();
            //     $qid  = Quiz::all()->last()->id;
            //     $filename = $qid + 1 . '.' . $extention;
            //     $request->quizimage->move(public_path('/assets/img/'), $filename);
            // }

        }
    }








    //created by laravel  
    /**
     * Display the user's profile form.
     */
    public function edit(Request $request): View
    {
        return view('profile.edit', [
            'user' => $request->user(),
        ]);
    }

    /**
     * Update the user's profile information.
     */
    public function update(ProfileUpdateRequest $request): RedirectResponse
    {
        $request->user()->fill($request->validated());

        if ($request->user()->isDirty('email')) {
            $request->user()->email_verified_at = null;
        }

        $request->user()->save();

        return Redirect::route('profile.edit')->with('status', 'profile-updated');
    }

    /**
     * Delete the user's account.
     */
    public function destroy(Request $request): RedirectResponse
    {
        $request->validateWithBag('userDeletion', [
            'password' => ['required', 'current_password'],
        ]);

        $user = $request->user();

        Auth::logout();

        $user->delete();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return Redirect::to('/');
    }
}
