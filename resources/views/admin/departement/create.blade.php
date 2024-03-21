@extends('layouts.app')        

@section('content')

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Tambah Departemen</h1>
            </div>
            <!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.index') }}">Halaman Utama</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Tambah Departemen
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
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-8 mx-auto">
                <div class="card card-primary">
                    <div class="card-header">
                        <h5 class="text-center mt-2">Tambah Departemen Baru</h5>
                    </div>
                    @include('messages.alerts')
                    
                    <!-- Form untuk menambah departemen -->
                    <form action="{{ route('admin.departement.store') }}" method="POST" class="p-3">
                        @csrf
                        <div class="mb-3">
                            <label for="departemen_code" class="form-label">Departemen Code</label>
                            <input type="text" class="form-control" id="departemen_code" name="departemen_code" placeholder="Masukkan Kode Departemen">
                        </div>
                        <div class="mb-3">
                            <label for="departemen_name" class="form-label">Departemen Name</label>
                            <input type="text" class="form-control" id="departemen_name" name="departemen_name" placeholder="Masukkan Nama Departemen">
                        </div>
                        <button type="submit" class="btn btn-primary">Tambah Departemen</button>
                    </form>

                </div>
            </div>
        </div>
        
    </div>
    <!-- /.container-fluid -->
</section>
<!-- /.content -->

<!-- /.content-wrapper -->

@endsection

@section('extra-js')
<script>
    $(document).ready(function() {
        // Jika terdapat nilai sebelumnya, atur tanggal dengan format yang benar
        if('{{ old('dob') }}') {
            const dob = moment('{{ old('dob') }}', 'DD-MM-YYYY');
            const join_date = moment('{{ old('join_date') }}', 'DD-MM-YYYY');
            
            // Inisialisasi datepicker untuk tanggal lahir
            $('#dob').daterangepicker({
                "startDate": dob,
                "singleDatePicker": true,
                "showDropdowns": true,
                "locale": {
                    "format": "DD-MM-YYYY"
                }
            });
            
            // Inisialisasi datepicker untuk tanggal bergabung
            $('#join_date').daterangepicker({
                "startDate": join_date,
                "singleDatePicker": true,
                "showDropdowns": true,
                "locale": {
                    "format": "DD-MM-YYYY"
                }
            });
        } else {
            // Inisialisasi datepicker dengan format standar
            $('#dob').daterangepicker({
                "singleDatePicker": true,
                "showDropdowns": true,
                "locale": {
                    "format": "DD-MM-YYYY"
                }
            });
            
            $('#join_date').daterangepicker({
                "singleDatePicker": true,
                "showDropdowns": true,
                "locale": {
                    "format": "DD-MM-YYYY"
                }
            });
        }
        
    });
</script>
@endsection
