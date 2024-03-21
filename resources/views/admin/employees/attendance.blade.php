@extends('layouts.app')        

@section('content')
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Include DateRangePicker CSS -->
<link href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Transaksi</h1>
            </div>
            <!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.employees.attendance') }}">Dashboard Admin</a>
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
            <div class="col-md-4 mx-auto">
                <div class="card card-primary">
                    <div class="card-header">
                        <h5 class="text-center">Tanggal Absensi</h5>
                    </div>
                    <form action="{{ route('admin.employees.attendance') }}" method="POST">
                    @csrf
                    <div class="card-body">
                        <div class="input-group mx-auto" style="width:70%">
                            <span class="input-group-text"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                            <input type="text" name="date" id="date" class="form-control text-center" placeholder="Pilih rentang waktu">
                            <button class="btn btn-flat btn-primary" type="submit">Submit</button>
                        </div>
                    </div>
                    {{-- <div class="card-footer text-center">
                        <button class="btn btn-flat btn-primary" type="submit">Submit</button>
                    </div> --}}
                    </form>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 mx-auto">
                @include('messages.alerts')
                <div class="card card-primary">
                    <div class="card-header">
                        <div class="card-title text-center">
                            @if ($date)
                            Absensi Karyawan berdasarkan rentang tanggal {{ $date }}                                
                            @else
                            Absensi Karyawan Hari ini
                            @endif
                        </div>
                        
                    </div>
                    <div class="card-body">
                        @if ($iclock_transaction->count())
                        <table class="table table-bordered table-hover" id="dataTable">
                            <thead>
                                <tr>
                                    <th>Employee ID</th>
                                    <th>First Name</th>
                                    <th>Departement</th>
                                    <th>Date</th>
                                    <th>Time</th>
                                    <th>Punch State</th>
                                    <th>Tunggakan</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($iclock_transaction as $index => $employee)
                                <tr>
                                    <td>{{ $employee->id }}</td>
                                    <td>{{ $employee->first_name}}</td>
                                    <td>
                                    ({{ $employee->department_id}})
            
                                    </td>
                                    <td>{{ date('Y-m-d', strtotime($employee->punch_time)) }}</td>
                                    <td>{{ substr($employee->punch_time, 11, 8) }}</td>
                                    <td>
                                        @if($employee->sync_status == 0)
                                            Check In
                                        @elseif($employee->sync_status == 1)
                                            Check Out
                                        @else
                                            Unknown
                                        @endif
                                    </td>
                                    <td>
                                        @php
                                            $lateTime = Carbon\Carbon::createFromFormat('H:i:s', substr($employee->punch_time, 11, 8));
                                            $lateTimeLimit1 = Carbon\Carbon::createFromFormat('H:i:s', '08:05:00');
                                            $lateTimeLimit2 = Carbon\Carbon::createFromFormat('H:i:s', '08:10:00');
                                            $halfDayLimit = Carbon\Carbon::createFromFormat('H:i:s', '12:00:00');
                                        
                                            $lateFine = 0;
                                            $cutLeave = false;
                                        
                                            if ($lateTime->gt($halfDayLimit)) {
                                                // Jika lewat dari setengah hari, potong cuti setengah hari
                                                $cutLeave = true;
                                            } else {
                                                // Jika lewat dari pukul 8.05, tetapi masih di bawah atau sama dengan pukul 8.10, dikenakan denda 50k
                                                // Jika lewat dari pukul 8.10, dikenakan denda 100k
                                                if ($lateTime->gt($lateTimeLimit1) && $lateTime->lte($lateTimeLimit2)) {
                                                    $lateFine = 50000;
                                                } elseif ($lateTime->gt($lateTimeLimit2)) {
                                                    $lateFine = 100000;
                                                }
                                            }
                                        @endphp
                                    
                                        <!-- Menampilkan nilai yang sesuai berdasarkan kondisi -->
                                        {{ $lateFine > 0 ? 'Denda: Rp ' . number_format($lateFine, 0, ',', '.') : '' }}
                                        {{ $cutLeave ? 'Potong Cuti Setengah Hari' : '' }}
                                    </td>                                  
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        @else
                        <div class="alert alert-info text-center" style="width:50%; margin: 0 auto">
                            <h4>Belum Ada Riwayat</h4>
                        </div>
                        @endif
                        
                    </div>
                </div>
                <!-- general form elements -->
                
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
</section>
    <!-- /.content -->

@endsection
@section('extra-js')
{{-- <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script> --}}
<script src="https://cdn.datatables.net/buttons/2.0.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.html5.min.js"></script>
{{-- <script src="https://cdn.datatables.net/buttons/2.0.1/js/buttons.print.min.js"></script> --}}
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

<script>
    $(document).ready(function() {
        // Inisialisasi DataTables
        var table = $('#dataTable').DataTable({
            responsive: true,
            autoWidth: false,
            dom: 'Bfrtip',
            buttons: [
                {
                    extend: 'excelHtml5',
                    text: 'Export Excel',
                    filename: 'Data Kehadiran', // Nama file Excel yang akan diunduh
                    title: 'Data Kehadiran', // Judul tabel dalam Excel
                    exportOptions: {}
                },
                'pdfHtml5',
                'print'
            ]
        });

        // Mengirimkan data form saat tombol submit ditekan
        $(document).on('submit', '#attendanceForm', function(e) {
            e.preventDefault(); // Menghentikan perilaku default form submit
            
            // Ambil rentang tanggal yang dipilih
            var startDate = $('#date').data('daterangepicker').startDate.format('YYYY-MM-DD');
            var endDate = $('#date').data('daterangepicker').endDate.format('YYYY-MM-DD');

            // Kirim data ke server menggunakan AJAX
            $.ajax({
                url: "{{ route('admin.index') }}", // Ganti dengan URL tujuan Anda
                method: "POST",
                data: {
                    _token: '{{ csrf_token() }}',
                    start_date: startDate,
                    end_date: endDate
                },
                success: function(response) {
                    // Lakukan sesuatu setelah permintaan berhasil
                    console.log("Data berhasil disimpan:", response);
                },
                error: function(xhr, status, error) {
                    // Tangani kesalahan jika ada
                    console.error("Terjadi kesalahan:", error);
                }
            });
        });

        // Menambahkan rentang tanggal
        $('#date').daterangepicker({
            "locale": {
                "format": "DD-MM-YYYY"
            },
            "ranges": {
                'Rentang Kustom': [moment().startOf('day'), moment().endOf('day')]
            }
        });
    });
</script>

@endsection