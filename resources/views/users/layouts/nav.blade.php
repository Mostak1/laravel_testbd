<nav class="customBac navbar fixed-top navbar-expand-lg shadow mx-0 px-0 py-3">
    <div class="container">
        <!-- Logo -->
        <a class="navbar-brand customNav fs-2" href="{{ url('') }}">
            <span class="bc">Test</span>BD
        </a>
        <!-- Navbar toggle -->
        <button class="navbar-toggler wc" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fa-solid fa-bars fa-beat-fade wc"></i>
        </button>
        <!-- Collapse -->
        <div class="collapse navbar-collapse wc" id="navbarCollapse">
            <!-- Nav -->
            <div class="navbar-nav mx-lg-auto wc">
                <a class="customNav  me-4 fs-6  " href="{{ url('') }}">Home</a>

                <a class="customNav  me-4 fs-6 " href="{{ url('quiz/qz/qshow') }}">Random Quiz</a>
                <a class="customNav  me-4 fs-6 " href="{{ url('leaderboard/user') }}">Exam Score</a>
                <a class="customNav  me-4 fs-6 " href="{{ url('question/user/create') }}">Question Upload</a>
                <div class="dropdown">
                    <a class=" dropdown-toggle wc fs-6" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        Learning Sector
                    </a>

                    <ul class="dropdown-menu wc customBac">
                        <li><a class="dropdown-item wc " href="{{ url('playquiz') }}">Skill Devlopment</a></li>
                        <li><a class="dropdown-item wc " href="{{ url('playquiz_ac') }}">Academic</a></li>
                        <li><a class="dropdown-item wc " href="{{ url('playquiz_com') }}">Competitive Exams</a></li>
                    </ul>
                </div>
            </div>
            <!-- Right navigation -->
            <ul class="navbar-nav mt-2 mb-lg-0">
                <li class="nav-item  dropdown">
                    <a class=" dropdown-toggle wc" href="#" role="button" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        @if (Auth::check())
                            {{ $user->name }}
                        @else
                            Account
                        @endif
                    </a>
                    <ul class="dropdown-menu customBac dropdown-menu-end">
                        @if (Auth::check() && $user->role == 2)
                            <li><a class="dropdown-item customNav" href="{{ url('uprofile') }}">Profile</a></li>
                            <li><a class="dropdown-item customNav" href="{{ url('dashboard') }}"
                                    target="_blank">Dashboard</a>
                            </li>
                            @include('components.logout')
                        @elseif (Auth::check())
                            <li><a class="dropdown-item customNav" href="{{ url('uprofile') }}">Profile</a></li>
                            <li><a class="dropdown-item customNav" href="{{ url('uprofile/enroll') }}">Enrroll Information</a></li>
                            @include('components.logout')
                        @else
                            <li><a class="dropdown-item customNav" href="{{ url('login') }}">Login</a></li>
                            <li><a class="dropdown-item customNav" href="{{ url('register') }}">Register</a></li>
                        @endif

                    </ul>
                </li>
                
            </ul>
        </div>
    </div>
</nav>