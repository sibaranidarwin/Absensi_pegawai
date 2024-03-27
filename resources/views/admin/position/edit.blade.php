@extends('layouts.app')

@section('content')

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-header">
                    <h4>Edit Posisi Personel</h4>
                </div>
                <div class="card-body">
                    @include('messages.alerts')
                    <form action="{{ route('admin.positions.update', $position->id) }}" method="POST">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <label for="position_code">Code:</label>
                            <input type="text" class="form-control" id="position_code" name="position_code" value="{{ $position->position_code }}">
                        </div>
                        <div class="form-group">
                            <label for="position_name">Name:</label>
                            <input type="text" class="form-control" id="position_name" name="position_name" value="{{ $position->position_name }}">
                        </div>
                        <div class="form-group">
                            <label for="is_default">Is Default:</label>
                            <select class="form-control" id="is_default" name="is_default">
                                <option value="1" {{ $position->is_default ? 'selected' : '' }}>Yes</option>
                                <option value="0" {{ !$position->is_default ? 'selected' : '' }}>No</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="company_id" class="col-sm-3 col-form-label">Company</label>
                            <div class="col-sm-9">
                                <select class="form-select" id="company_id" name="company_id">
                                    <option value="">-- Select Company --</option>
                                    @foreach($companies as $company)
                                        <option value="{{ $company->id }}" {{ $position->company_id == $company->id ? 'selected' : '' }}>{{ $company->company_name }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection
