@extends('users.layouts.main')
@section('style')
@endsection
@section('content')
    {{-- <x-guest-layout>
        <!-- Session Status -->
        <x-auth-session-status class="mb-4" :status="session('status')" />

        <form method="POST" action="{{ route('login') }}">
            @csrf

            <!-- Email Address -->
            <div>
                <x-input-label for="email" :value="__('Email')" />
                <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required
                    autofocus autocomplete="username" />
                <x-input-error :messages="$errors->get('email')" class="mt-2" />
            </div>

            <!-- Password -->
            <div class="mt-4">
                <x-input-label for="password" :value="__('Password')" />

                <x-text-input id="password" class="block mt-1 w-full" type="password" name="password" required
                    autocomplete="current-password" />

                <x-input-error :messages="$errors->get('password')" class="mt-2" />
            </div>

            <!-- Remember Me -->
            <div class="block mt-4">
                <label for="remember_me" class="inline-flex items-center">
                    <input id="remember_me" type="checkbox"
                        class="rounded border-gray-300 text-indigo-600 shadow-sm focus:ring-indigo-500" name="remember">
                    <span class="ml-2 text-sm text-gray-600">{{ __('Remember me') }}</span>
                </label>
            </div>

            <div class="flex items-center justify-end mt-4">
                @if (Route::has('password.request'))
                    <a class="underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"
                        href="{{ route('password.request') }}">
                        {{ __('Forgot your password?') }}
                    </a>
                @endif

                <x-primary-button class="ml-3">
                    {{ __('Log in') }}
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
                    speed="1" style="width: 600px; height: 400px;" loop autoplay></lottie-player>
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col-md-12">
                        <div class="titlepage mx-auto text-center">
                            <h2>LogIn Here</h2>
                        </div>
                    </div>
                </div>


                <!-- <form method="post" action="registration/store">/ -->
                <form method="POST" action="{{ route('login') }}">
                    @csrf
                    <label for="email" class="form-label">Email</label>
                    <input id="email" class="form-control" type="email" name="email" value="" required />
                    <x-input-error :messages="$errors->get('email')" class="mt-2" />

                    <label for="password" class="form-label">Password</label>
                    <input id="password" class="form-control" type="password" name="password" />

                    <x-input-error :messages="$errors->get('password')" class="mt-2" />
                    <input class="btn btn-outline-primary my-4" type="submit" value="LogIn" />
                </form>
            </div>
        </div>
    </div>
@endsection
