@extends('users.layouts.main')
@section('style')
@endsection
@section('content')
    {{-- <x-guest-layout>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <!-- Name -->
        <div>
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" class="block mt-1 w-full" type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Email')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Password')" />

            <x-text-input id="password" class="block mt-1 w-full"
                            type="password"
                            name="password"
                            required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Confirm Password')" />

            <x-text-input id="password_confirmation" class="block mt-1 w-full"
                            type="password"
                            name="password_confirmation" required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
            <a class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500" href="{{ route('login') }}">
                {{ __('Already registered?') }}
            </a>

            <x-primary-button class="ml-4">
                {{ __('Register') }}
            </x-primary-button>
        </div>
    </form>
</x-guest-layout> --}}

    <div class="afterNav"></div>
    <div class="container  my-5">
        <div class="row contact">
            <div class="col-md-6">
                <!-- <Lottie animationData={contactm} loop={true} /> -->

                <lottie-player src="https://assets7.lottiefiles.com/packages/lf20_mjlh3hcy.json" background="transparent"
                    speed="1" style=" height: 400px;" loop autoplay></lottie-player>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage mx-auto text-center">
                            <h2>LogIn Here</h2>
                        </div>
                    </div>
                </div>
                @include('layouts.flash')

                <!-- <form method="post" action="registration/store">/ -->
                <form method="POST" action="{{ route('register') }}">
                    @csrf
                    <label for="name" class="form-label">Full Name</label>
                    <input id="name" class="form-control" type="text" name="name" value="" required />
                    <x-input-error :messages="$errors->get('name')" class="mt-2" />

                    <label for="email" class="form-label">Email</label>
                    <input id="email" class="form-control" type="email" name="email" value="" required />
                    <x-input-error :messages="$errors->get('email')" class="mt-2" />

                    <label for="role" class="form-label" @required(true)>Your Label</label>
                    <select name="role" id="role" class="form-control">
                        <option value="1">Student</option>
                        <option value="3">Teacher</option>
                        <option value="1">Common User</option>
                    </select>
                    <label for="password" class="form-label">Password</label>
                    <input id="password" class="form-control" type="password" name="password" />
                    <x-input-error :messages="$errors->get('password')" class="mt-2" />

                    <label for="password_confirmation" class="form-label">Confirm Password</label>
                    <input id="password_confirmation" class="form-control" type="password" name="password_confirmation" />
                    <x-input-error :messages="$errors->get('password')" class="mt-2" />

                    <input class="btn btn-outline-primary my-4" type="submit" value="Register" />
                </form>
            </div>
        </div>
    </div>
@endsection
