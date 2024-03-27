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
                        <div class="mb-3 row">
                            <label for="departemen_code" class="col-sm-3 col-form-label">Departemen Code</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="departemen_code" name="departemen_code" placeholder="Masukkan Kode Departemen">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="departemen_name" class="col-sm-3 col-form-label">Departemen Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="departemen_name" name="departemen_name" placeholder="Masukkan Nama Departemen">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <div class="col-sm-3">Is Default</div>
                            <div class="col-sm-9">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="is_default" name="is_default" value="1">
                                    <label class="form-check-label" for="is_default">Centang jika default</label>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="company_id" class="col-sm-3 col-form-label">Company</label>
                            <div class="col-sm-9">
                                <select class="form-select" id="company_id" name="company_id">
                                    <option value="">-- Select Company --</option>
                                    @foreach($companies as $company)
                                        <option value="{{ $company->id }}">{{ $company->company_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-3"></div>
                            <div class="col-sm-9">
                                <button type="submit" class="btn btn-primary">Tambah Departemen</button>
                            </div>
                        </div>
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
