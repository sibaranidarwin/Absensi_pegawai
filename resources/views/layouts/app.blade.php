<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ Session::token() }}">
    <title>Web Absensi | Dashboard</title>
    <!-- Favicon -->
    <link rel="icon" href="/img/partner.png">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/dist/css/adminlte.min.css">
    <!-- Overlay Scrollbars -->
    <link rel="stylesheet" href="/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <!-- Date Range Picker -->
    <link rel="stylesheet" href="/plugins/daterangepicker/daterangepicker.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="/css/custom.css">
</head>
<body class="hold-transition @guest login-page @else sidebar-mini layout-fixed @endguest">
    @guest
        <!-- Tampilan saat pengguna tidak masuk -->
        @yield('content')
    @else
        <!-- Tampilan saat pengguna masuk -->
        <div class="wrapper">
            <!-- Navbar -->
            @include('includes.navbar')

            <!-- Main Sidebar Container -->
            @include('includes.main_sidebar')

            <!-- Konten Utama -->
            <div class="content-wrapper">
                @yield('content')
            </div>

            <!-- Footer -->
            <footer class="main-footer">
                <!-- Konten footer -->
            </footer>
        </div>
        <!-- /.wrapper -->
    @endguest

    <!-- jQuery -->
    <script src="/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/dist/js/adminlte.min.js"></script>
    <!-- DataTables -->
    <script src="/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <!-- Date Range Picker -->
    <script src="/plugins/moment/moment.min.js"></script>
    <script src="/plugins/daterangepicker/daterangepicker.js"></script>
    <!-- Custom Script -->
    <script src="/js/custom.js"></script>
</body>
</html>
