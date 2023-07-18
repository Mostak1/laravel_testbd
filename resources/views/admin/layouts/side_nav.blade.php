<div id="layoutSidenav_nav">
    <nav class="sb-sidenav accordion sb-sidenav bg-info shadow-lg" id="sidenavAccordion">
        <div class="sb-sidenav-menu">
            <div class="nav mt-2">
                <!-- Navbar Brand-->
                <a class="navbar-brand ps-3 text-black" target="_blank" href="{{ url('/') }}">Test BD</a>
                <div class="sb-sidenav-menu-heading">Core</div>
                <a class="nav-link" href="{{ url('dashboard') }}">
                    <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                    Dashboard
                </a>
                <div class="sb-sidenav-menu-heading">Interface</div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts"
                    aria-expanded="false" aria-controls="collapseLayouts">
                    <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                    Manage Tables
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne"
                    data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested  nav">
                        {{-- @anchor("admin/boards", "Boards",  'nav-link text-black');
                        @anchor("admin/districts", "Districts",  'nav-link text-black'); 
                        @anchor("admin/thana", "Thana",  'nav-link text-black') 
                        @anchor("admin/institutes", "Institutes",  'nav-link text-black') 
                        @anchor("admin/exams", "Exams",  'nav-link text-black') 
                        @anchor("admin/subject", "Subjects",  'nav-link text-black') 
                        @anchor("admin/orders", "Orders",  'nav-link text-black') 
                        @anchor('admin/questions', 'Questions', 'nav-link text-black') --}}
                        <a href="{{ url('admin/users') }}" class="dropdown-item" rel="noopener noreferrer">Users</a>
                        <a href="{{ url('admin/b') }}" class="dropdown-item" rel="noopener noreferrer">Board</a>
                        <a href="{{ url('admin/d') }}" class="dropdown-item" rel="noopener noreferrer">District</a>
                        <a href="{{ url('admin/t') }}" class="dropdown-item" rel="noopener noreferrer">Thana</a>
                        <a href="{{ url('admin/i') }}" class="dropdown-item" rel="noopener noreferrer">Institute</a>
                        <a href="{{ url('admin/s') }}" class="dropdown-item" rel="noopener noreferrer">Subject</a>
                        <a href="{{ url('admin/q') }}" class="dropdown-item" rel="noopener noreferrer">Questions</a>
                        <a href="{{ url('admin/o') }}" class="dropdown-item" rel="noopener noreferrer">Order
                            Management</a>
                    </nav>
                </div>
                <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapsePages"
                    aria-expanded="false" aria-controls="collapsePages">
                    <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                    Pages
                    <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                </a>
                <div class="collapse" id="collapsePages" aria-labelledby="headingTwo"
                    data-bs-parent="#sidenavAccordion">
                    <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                            data-bs-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                            Authentication
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordionPages">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="login.html">Login</a>
                                <a class="nav-link" href="register.html">Register</a>
                                <a class="nav-link" href="password.html">Forgot Password</a>
                            </nav>
                        </div>
                        <a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
                            data-bs-target="#pagesCollapseError" aria-expanded="false"
                            aria-controls="pagesCollapseError">
                            Error
                            <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                        </a>
                        <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne"
                            data-bs-parent="#sidenavAccordionPages">
                            <nav class="sb-sidenav-menu-nested nav">
                                <a class="nav-link" href="401.html">401 Page</a>
                                <a class="nav-link" href="404.html">404 Page</a>
                                <a class="nav-link" href="500.html">500 Page</a>
                            </nav>
                        </div>
                    </nav>
                </div>
                <div class="sb-sidenav-menu-heading">Addons</div>
                <a class="nav-link" href="{{ url('admin/users') }}">
                    <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                    Users
                </a>
                <a class="nav-link" href="tables.html">
                    <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                    Tables
                </a>
            </div>
        </div>
        <div class="sb-sidenav-footer">
            <div class="small">Logged in as:</div>
            Admin
        </div>
    </nav>
</div>
