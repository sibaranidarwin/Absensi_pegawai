@extends('layouts.app')

@section('content')

<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Posisi Karyawan</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">
                        <a href="{{ route('admin.index') }}">Dashboard Admin</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Daftar Posisi
                    </li>
                </ol>
            </div>
        </div>
    </div>
</div>

<section class="content">
    <div class="container-fluid">
        @include('messages.alerts')
        <div class="row">
            <div class="col-lg-12 mx-auto">
                <div class="card card-primary">
                    <div class="card-header">
                        <div class="card-title text-center">
                            Daftar Posisi Karyawan
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="mb-3">
                            <a href="{{ route('admin.positions.create') }}" class="btn btn-success">Tambah Posisi</a>
                        </div>
                        <table class="table table-bordered table-hover" id="dataTable">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Posisi Code</th>
                                    <th>Posisi Name</th>
                                    <th>Is Default</th>
                                    <th hidden>Parent Position</th>
                                    <th hidden>Company ID</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach($positions as $key => $position)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $position->position_code }}</td>
                                    <td>{{ $position->position_name }}</td>
                                    <td>{{ $position->is_default ? 'Yes' : 'No' }}</td>
                                    <td hidden>{{ $position->parent_position_id }}</td>
                                    <td hidden>{{ $position->company_id }}</td>
                                    <td>
                                        <a href="{{ route('admin.positions.edit', $position->id) }}" class="btn btn-primary">Edit</a>
                                        <form action="{{ route('admin.positions.destroy', $position->id) }}" method="POST" style="display: inline-block;">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure you want to delete?')">Delete</button>
                                        </form>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection

@section('extra-js')
<script>
    $(document).ready(function() {
        $('#dataTable').DataTable({
            responsive: true,
            autoWidth: false,
        });
    });
</script>
@endsection
