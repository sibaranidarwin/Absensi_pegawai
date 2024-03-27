@extends('layouts.app')        

@section('content')

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Tambah Posisi</h1>
            </div>
            <!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.index') }}">Halaman Utama</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Tambah Posisi
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
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card card-primary">
                    <div class="card-header">
                        <h5 class="text-center mt-2">Tambah Posisi Baru</h5>
                    </div>
                    <div class="card-body">
                        @include('messages.alerts')
                        
                        <!-- Form untuk menambah posisi -->
                        <form action="{{ route('admin.positions.store') }}" method="POST" class="p-3">
                            @csrf
                            <div class="mb-3">
                                <label for="position_code" class="form-label">Kode Posisi</label>
                                <input type="text" class="form-control" id="position_code" name="position_code" placeholder="Masukkan Kode Posisi">
                            </div>
                            <div class="mb-3">
                                <label for="position_name" class="form-label">Nama Posisi</label>
                                <input type="text" class="form-control" id="position_name" name="position_name" placeholder="Masukkan Nama Posisi">
                            </div>
                            <div class="mb-3">
                                <label for="is_default" class="form-label">Is Default</label>
                                <select class="form-control" id="is_default" name="is_default">
                                    <option value="1">Ya</option>
                                    <option value="0">Tidak</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="company_id" class="col-sm-3 col-form-label">Company:</label>
                                <div class="col-sm-9">
                                    <select class="form-select" id="company_id" name="company_id">
                                        <option value="">-- Select Company --</option>
                                        @foreach($companies as $company)
                                            <option value="{{ $company->id }}">{{ $company->company_name }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary">Tambah Posisi</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
</section>
<!-- /.content -->

<!-- /.content-wrapper -->

@endsection
