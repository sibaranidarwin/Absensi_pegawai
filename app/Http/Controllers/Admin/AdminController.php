<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;


use App\Attendance;
use App\Department;
use App\Employee;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
    {
        public function index() {
            $currentDate = Carbon::now()->toDateString();

            $transaction = DB::table('iclock_transaction')
            ->join('personnel_employee', 'iclock_transaction.emp_id', '=', 'personnel_employee.id')
            ->select('iclock_transaction.*', 'personnel_employee.first_name')
            ->whereDate('iclock_transaction.punch_time', $currentDate)
            ->get();
        

            return view('admin.index')->with('transactions' ,$transaction);
        }

    
    public function departement (){
        $data =  DB::table('personnel_department')->get();

        return view('admin.departement.index')->with('datas', $data);
    }
    
    public function create()
    {
        return view('admin.departement.create');
    }

    public function store(Request $request)
    {
        // Validasi data yang dikirimkan dari form
        $request->validate([
            'dept_code' => 'required',
            'dept_name' => 'required',
        ]);

        // Simpan data departemen baru ke dalam database
        Department::create($request->all());

        // Redirect kembali ke halaman daftar departemen
        return redirect()->route('departement.index')->with('success', 'Departemen berhasil ditambahkan.');
    }

    public function edit($id)
    {
        // Mengambil data departemen berdasarkan ID
        $departement = Department::find($id);

        // Kemudian kirim data ke view edit
        return view('admin.departement.edit', compact('departement'));
    }

    public function update(Request $request, $id)
    {
        // Validasi data yang dikirimkan dari form
        $request->validate([
            'dept_code' => 'required',
            'dept_name' => 'required',
        ]);

        // Temukan data departemen berdasarkan ID
        $departement = Department::findOrFail($id);
        
        // Update data departemen dengan data baru
        $departement->update($request->all());

        // Redirect kembali ke halaman daftar departemen
        return redirect()->route('departement.index')->with('success', 'Departemen berhasil diperbarui.');
    }

    public function destroy($id)
    {
        // Menghapus data departemen berdasarkan ID
        Department::destroy($id);
        // Kemudian redirect kembali ke halaman daftar departemen
        return redirect()->route('admin.employees.department')->with('success', 'Departement has been deleted successfully');
    }


    public function reset_password() {
        return view('auth.reset-password');
    }

    public function update_password(Request $request) {
        $user = Auth::user();
        dd($user->password);
        if($user->password == Hash::make($request->old_password)) {
            dd($request->all());
        } else {
            $request->session()->flash('error', 'Password Salah');
            return back();
        }
    }
}
