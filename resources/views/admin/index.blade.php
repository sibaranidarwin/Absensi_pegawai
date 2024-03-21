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
               <!-- Card Merah -->
               <div class="col-lg-4">
                <div class="card bg-success">
                    <div class="card-body">
                        Check-in = {{ $transactions->where('punch_state', 0)->count() }}
                    </div>
                </div>
            </div>


            <!-- Card Hijau -->
            <div class="col-lg-4">
                <div class="card bg-danger">
                    <div class="card-body">
                        Check-out = {{ $transactions->where('punch_state', 1)->count() }}
                    </div>
                </div>
            </div>
            <!-- /.col -->

            <!-- Card Kuning -->
            <div class="col-lg-4">
                <div class="card bg-warning">
                    <div class="card-body text-white"> <!-- Menambahkan kelas text-white -->
                        Total = {{ $transactions->whereIn('punch_state', [0, 1])->count() }}
                    </div>
                </div>
            </div>      
            
            
            <div class="col-lg-12 mt-4">
                <div class="card">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Nama</th>
                                    <th>Tanggal</th>
                                    <th>Jam</th>
                                    <th>Status</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($transactions as $transaction)
                                <tr>
                                    <td>{{ $transaction->first_name }}</td>
                                    <td>{{ date('Y-m-d', strtotime($transaction->punch_time)) }}</td>
                                    <td>{{ date('H:i:s', strtotime($transaction->punch_time)) }}</td>
                                    <td>
                                        @if($transaction->punch_state == 0)
                                            Check-in
                                        @elseif($transaction->punch_state == 1)
                                            Check-out
                                        @else
                                            Unknown
                                        @endif
                                    </td>                                    
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