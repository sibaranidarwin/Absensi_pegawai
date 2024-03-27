@extends('layouts.app')

@section('content')

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Tambah Jam Kantor</h1>
            </div>
            <!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.index') }}">Halaman Utama</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Tambah Jam Kantor
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
            <div class="col-md-8 offset-md-2">
                <div class="card">
                    <div class="card-header">
                        Create Timetable
                    </div>
                    <div class="card-body">
                        <form action="{{ route('admin.timetable.store') }}" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="alias">Nama Jam Kerja:</label>
                                <input type="text" name="alias" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="in_time">Jam Masuk:</label>
                                <input type="time" name="in_time" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="duration">Durasi Kerja (Menit):</label>
                                <input type="number" name="duration" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="in_required">Apakah perlu Absen Masuk?</label>
                                <select name="in_required" class="form-control" required>
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="out_required">Apakah perlu Absen Keluar?</label>
                                <select name="out_required" class="form-control" required>
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="in_ahead_margin">Jam Absen Masuk Dimulai:</label>
                                <input type="number" name="in_ahead_margin" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="in_above_margin">Jam Absen Masuk Terakhir:</label>
                                <input type="number" name='in_above_margin' class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="in_ahead_margin">Jam Absen Keluar Dimulai:</label>
                                <input type="number" name='in_ahead_margin' class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="out_above_margin">Jam Absen Keluar Terakhir:</label>
                                <input type="number" name="out_above_margin" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="allow_late">Apakah diperbolehkan terlambat?</label>
                                <select name="allow_late" class="form-control" required>
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="allow_leave_early">Apakah diperbolehkan keluar lebih cepat?</label>
                                <select name="allow_leave_early" class="form-control" required>
                                    <option value="1">Yes</option>
                                    <option value="0">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="work_day">Jam Kerja _ Hari</label>
                                <input type="number" name="work_day" step="0.01" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="min_early_in">Toleransi Absen Masuk Lebih Awal (Menit)</label>
                                <input type="number" name="min_early_in" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="min_late_out">Toleransi Absen Keluar Terakhir (Menit)</label>
                                <input type="number" name="min_early_out" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="max_ot_limit">Berapa Menit Overtime</label>
                                <input type="number" name="max_ot_limit" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="work_time_duration">Durasi Jam Kerja (Menit):</label>
                                <input type="number" name="work_time_duration" class="form-control" required>
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

                            <button type="submit" class="btn btn-primary">Create Timetable</button>
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
