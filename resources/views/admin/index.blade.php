@extends('layouts.app')        

@section('content')
<!-- Content Wrapper. Contains page content -->
    <!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Dashboard Admin</h1>
            </div>
            <!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">
                        <a href="#">Dashboard Admin</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Absensi
                    </li>
                </ol>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">      
            
            
            <div class="col-lg-12 mt-4">
                <div class="card">
                    <div class="card-body">
                    <table class="table">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <!-- <th>Departmen</th>
                            <th>Jabatan</th> -->
                            <th>Date</th>
                            <th>Clock In</th>
                            <th>Clock Out</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($employeesall as $employee)
                        <tr>
                            <td>{{ $employee->first_name }} {{ $employee->last_name }}</td>
                            <td>{{ $currentDate }}</td>
                            @foreach($employees as $check)
                                @if($check->id == $employee->id)
                                <td>{{ \Carbon\Carbon::parse($check->clock_in)->format('H:i:s') }}</td>
                                <td>{{ \Carbon\Carbon::parse($check->clock_out)->format('H:i:s') }}</td>                                
                                    @break
                                @endif
                            @endforeach
                        </tr>
                        @endforeach
                    </tbody>
                </table>

                    </div>
                </div>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
</section>
<!-- /.content -->
<!-- /.content-wrapper -->

@endsection