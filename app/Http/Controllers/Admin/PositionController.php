<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;

use App\Position;


class PositionController extends Controller
{
    public function index()
    {
        $positions = Position::all();
        return view('admin.position.index', compact('positions'));
    }

    public function create()
    {
        $companies = DB::table('personnel_company')->select('id','company_code', 'company_name')->get();
        return view('admin.position.create', compact('companies'));
    }


    public function store(Request $request)
    {
        // Validasi data yang diterima dari form
        $request->validate([
            'position_code' => 'required|unique:personnel_position',
            'position_name' => 'required',
            'is_default' => 'nullable',
            'parent_position_id' => 'nullable',
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
        $companies = DB::table('personnel_company')->get();
        return view('admin.position.edit', compact('position', 'companies'));
    }


    public function update(Request $request, $id)
    {
        $request->validate([
            'position_code' => 'required|unique:personnel_position,position_code,' . $id,
            'position_name' => 'required',
            'is_default' => 'required',
            'parent_position_id' => '',
            'company_id' => 'required',
        ]);

        DB::table('personnel_position')
            ->where('id', $id)
            ->update([
                'position_code' => $request->position_code,
                'position_name' => $request->position_name,
                'is_default' => $request->is_default,
                'parent_position_id' => $request->parent_position_id,
                'company_id' => $request->company_id,
            ]);

        Session::flash('success', 'Position updated successfully.');

        return redirect()->back()
        ->with('success', 'Position updated successfully.');
    }

    

    public function destroy($id)
    {
        Position::findOrFail($id)->delete();

        return redirect()->back()
            ->with('danger', 'Position deleted successfully.');
    }
}
