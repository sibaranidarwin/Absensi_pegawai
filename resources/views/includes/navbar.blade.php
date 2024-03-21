<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"
                ><i class="fas fa-bars"></i
            ></a>
        </li>

    </ul>


    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">

        <li class="nav-item dropdown user user-menu">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                <img src="/dist/img/firyanul.png" class="user-image img-circle elevation-2" alt="User Image">
                <span class="hidden-xs">{{ Auth::user()->name }}</span>
            </a>
            <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <li class="user-header bg-primary">
                <img src="/dist/img/firyanul.png" class="img-circle elevation-2" alt="User Image">
        
                <p>
                    {{ Auth::user()->name }}
                </p>
                </li>
                <!-- Menu Body -->
                <li class="user-body text-center">
                </li>
                <!-- Menu Footer-->
                <li class="user-footer">
                <div class="pull-left">
                </div>
                <div class="pull-right">
                    <a href="{{ route('logout') }}" 
                    class="btn btn-default btn-flat"
                    onclick="event.preventDefault();
                    document.getElementById('logout-form').submit();"
                    >Sign out</a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        @csrf
                    </form>
                </div>
                </li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
                <i class="fas fa-th-large"></i>
            </a>
        </li>
    </ul>
</nav>