<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Position;

use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;

class PositionController extends Controller
{
    public function index()
    {
        $positions = Position::all();

        // dd($positions);
        return view('admin.position.index', compact('positions'));
    }

    public function create()
    {
        return view('admin.position.create');
    }


    public function store(Request $request)
    {
        // Validasi data yang diterima dari form
        $request->validate([
            'position_code' => 'required|unique:personnel_position',
            'position_name' => 'required',
            'is_default' => 'required',
            'parent_position_id' => 'required',
            'company_id' => 'required',
        ]);
    
        // Simpan data ke database menggunakan Query Builder
        DB::table('personnel_position')->insert([
            'position_code' => $request->position_code,
            'position_name' => $request->position_name,
            'is_default' => $request->is_default,
            'parent_position_id' => $request->parent_position_id,
            'company_id' => $request->company_id,
        ]);
    
        // Set pesan sukses
        Session::flash('success', 'Position created successfully.');
    
        // Redirect ke halaman index
        return redirect()->back()
        ->with('success', 'Position created successfully.');
    }    

    public function edit($id)
    {
        $position = Position::findOrFail($id);
        return view('admin.position.edit', compact('position'));
    }


    public function update(Request $request, $id)
    {
        // Validasi data yang diterima dari form
        $request->validate([
            'position_code' => 'required|unique:personnel_position,position_code,' . $id,
            'position_name' => 'required',
            'is_default' => 'required',
            'parent_position_id' => '',
            'company_id' => 'required',
            // Sesuaikan validasi lainnya sesuai kebutuhan
        ]);

        // Perbarui data yang ada di database menggunakan Query Builder
        DB::table('personnel_position')
            ->where('id', $id)
            ->update([
                'position_code' => $request->position_code,
                'position_name' => $request->position_name,
                'is_default' => $request->is_default,
                'parent_position_id' => $request->parent_position_id,
                'company_id' => $request->company_id,
            ]);

        // Set pesan sukses menggunakan session flash
        Session::flash('success', 'Position updated successfully.');

        // Redirect kembali ke halaman sebelumnya
        return redirect()->back()
        ->with('success', 'Position updated successfully.');
    }

    

    public function destroy($id)
    {
        // Hapus data berdasarkan ID
        Position::findOrFail($id)->delete();

        // Redirect ke halaman index dengan pesan sukses
        return redirect()->back()
            ->with('danger', 'Position deleted successfully.');
    }
}
