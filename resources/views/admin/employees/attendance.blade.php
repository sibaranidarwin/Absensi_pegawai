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
                <h1 class="m-0 text-dark">Absensi</h1>
            </div>
            <!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.index') }}">Dashboard Admin</a>
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
                        @if ($employees->count())
                        <table class="table table-bordered table-hover" id="dataTable">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Riwayat Database</th>
                                    <th class="none">Riwayat Awal Absensi</th>
                                    {{-- <th hidden>Tanggal Hadir</th> --}}
                                    <th>Riwayat Absensi</th>
                                    <th class="none">Riwayat Akhir Absensi</th>
                                    <th>Lokasi</th>
                                    <th>Jabatan</th>
                                    <th class="none">Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($employees as $index => $employee)
                                <tr>
                                    <td>{{ $index + 1 }}</td>
                                    <td>{{ $employee->first_name.' '.$employee->last_name }}</td>
                                    @if($employee->attendanceToday)
                                    <td><h6 class="text-center"><span class="badge badge-pill badge-success">Terekam</span></h6></td>
                                    <td>
                                        Terekam sejak pukul {{ $employee->attendanceToday->created_at->format('d M Y H:i:s') }} dari {{ $employee->attendanceToday->entry_location}} dengan alamat IP {{ $employee->attendanceToday->entry_ip}}
                                    </td>
                                    {{-- <td hidden>
                                        {{ $employee->attendanceToday->created_at->format('d M, Y')}}
                                    </td> --}}
                                    @php
                                        // Convert created_at time to timestamp
                                        $entryTime = strtotime($employee->attendanceToday->created_at);
                                        // Convert the current time to the correct format
                                        $currentTime = strtotime(date('h:i A', $entryTime));

                                        // Define valid time ranges
                                        $validStartTime = strtotime('07:45 AM');
                                        $validEndTime = strtotime('08:15 AM');
                                        $endOfWorkTime = strtotime('05:00 PM');
                                    @endphp

                                    @if ($currentTime >= $validStartTime && $currentTime <= $validEndTime)
                                        <td><h6 class="text-center"><span class="badge badge-pill badge-success">Hadir Tepat Waktu</span></h6></td>
                                    @elseif ($currentTime > $validEndTime && $currentTime <= $endOfWorkTime)
                                        <td><h6 class="text-center"><span class="badge badge-pill badge-warning">Hadir Terlambat</span></h6></td>
                                    @else
                                        <td><h6 class="text-center"><span class="badge badge-pill badge-danger">Absensi Tidak Valid</span></h6></td>
                                    @endif
                                    <td>
                                        Terekam sejak {{ $employee->attendanceToday->updated_at->format('H:i:s') }} dari {{ $employee->attendanceToday->exit_location}} dengan alamat IP {{ $employee->attendanceToday->exit_ip}}
                                    </td>
                                @else
                                    <td><h6 class="text-center"><span class="badge badge-pill badge-danger">Belum Ada Riwayat</span></h6></td>
                                    <td><h6 class="text-center"><span class="badge badge-pill badge-danger">Belum Ada Riwayat</span></h6></td>
                                    <td><h6 class="text-center"><span class="badge badge-pill badge-danger">Belum Ada Riwayat</span></h6></td>
                                    <td><h6 class="text-center"><span class="badge badge-pill badge-danger">Belum Ada Riwayat</span></h6></td>
                                @endif                                
                                <td>
                                    <?php 
                                    // Membuat koneksi ke database
                                    $conn = mysqli_connect("localhost", "root", "", "absensi");
                                
                                    // Memeriksa apakah koneksi berhasil
                                    if ($conn) {
                                        // Menjalankan query untuk mengambil lokasi masuk
                                        $result = mysqli_query($conn, "SELECT entry_location FROM attendances LIMIT 1");
                                
                                        // Memeriksa apakah query berhasil dijalankan
                                        if (mysqli_num_rows($result) > 0) {
                                            // Mengambil baris pertama dari hasil query
                                            $row = mysqli_fetch_assoc($result);
                                
                                            // Memeriksa apakah lokasi masuk tidak kosong
                                            if (!empty($row['entry_location'])) { 
                                                echo $row['entry_location']; 
                                            } else { 
                                                echo " - ";
                                            }
                                        } else {
                                            echo " - ";
                                        }
                                
                                        // Menutup koneksi ke database
                                        mysqli_close($conn);
                                    } else {
                                        echo "Koneksi ke database gagal";
                                    }
                                    ?>
                                </td>
                                    <td>{{ $employee->desg }}</td>
                                    <td>
                                        @if($employee->attendanceToday)
                                        <button 
                                        class="btn btn-flat btn-danger"
                                        data-toggle="modal"
                                        data-target="#deleteModalCenter{{ $employee->attendanceToday->id }}"
                                        >Hapus Riwayat</button>
                                        @else 
                                        Aksi Tidak Tersedia
                                        @endif
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                        @for ($i = 1; $i < $employees->count()+1; $i++)
                                <!-- Modal -->
                                @if($employees->get($i-1)->attendanceToday)
                                <div class="modal fade" id="deleteModalCenter{{ $employees->get($i-1)->attendanceToday->id }}" tabindex="-1" role="dialog" aria-labelledby="deleteModalCenterTitle1{{ $employees->get($i-1)->attendanceToday->id }}" aria-hidden="true">
                                    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
                                        <div class="modal-content">
                                            <div class="card card-danger">
                                                <div class="card-header">
                                                    <h5 style="text-align: center !important">Yakin ingin dihapus?</h5>
                                                </div>
                                                <div class="card-body text-center d-flex" style="justify-content: center">
                                                    
                                                    <button type="button" class="btn flat btn-secondary" data-dismiss="modal">Tidak</button>
                                                    
                                                    <form 
                                                    action="{{ route('admin.employees.attendance.delete', $employees->get($i-1)->attendanceToday->id) }}"
                                                    method="POST"
                                                    >
                                                    @csrf
                                                    @method('DELETE')
                                                        <button type="submit" class="btn flat btn-danger ml-1">Ya</button>
                                                    </form>
                                                </div>
                                                <div class="card-footer text-center">
                                                    <small>Aksi tidak tersedia</small>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.modal -->
                                @endif
                            @endfor
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
                url: "{{ route('admin.employees.attendance') }}", // Ganti dengan URL tujuan Anda
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