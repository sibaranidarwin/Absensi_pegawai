@extends('layouts.app')

@section('content')

<section class="content">
    <div class="container-fluid">
        @include('messages.alerts')
        <div class="row">
            <div class="col-lg-12 mx-auto">
                <div class="card card-primary">
                    <div class="card-header">
                        <div class="card-title text-center">
                            Jam Kerja Karyawan
                        </div>
                    </div>           
                    <div class="card-body">
                        <div class="mb-3">
                            <a href="{{ route('admin.timetable.create') }}" class="btn btn-success">Tambah Timetable</a>
                        </div>
                        <table class="table table-bordered table-hover" id="dataTable">
                            <thead>
                                <tr>
                                    <th>Nama Jam Kerja</th>
                                    <th>Jam Masuk</th>
                                    <th>Jam Keluar</th>
                                    <th>Work Duration (minutes)</th>
                                    <th>Check In Start Time</th>
                                    <th>Check Out End Time</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($times as $time)
                                <tr>
                                    <td>{{ $time->alias}}</td>
                                    <td>{{ \Carbon\Carbon::parse($time->in_time)->toTimeString() }}</td>
                                    <td>{{ \Carbon\Carbon::parse($time->in_time)->addMinutes($time->duration)->format('H:i:s') }}</td>
                                    <td>{{ $time->duration }}</td>
                                    <td>{{ \Carbon\Carbon::parse($time->in_time)->subHours(2)->format('H:i:s') }}</td>
                                    <td>{{ \Carbon\Carbon::parse($time->in_time)->addMinutes($time->duration)->addHours(3)->format('H:i:s') }}</td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>   
                    </div>
                </div>
                <!-- general form elements -->
                
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
</section>

@endsection
