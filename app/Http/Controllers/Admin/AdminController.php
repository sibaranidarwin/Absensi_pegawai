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
                'departemen_code' => 'required',
                'departemen_name' => 'required',
                'is_default' => 'nullable|boolean',
                'parent_dept_id' => 'nullable|integer',
                'dept_manager_id' => 'nullable|integer',
                'company_id' => 'nullable|integer',
            ]);
        
            // Simpan data departemen baru ke dalam database menggunakan DB::table()
            DB::table('personnel_department')->insert([
                'dept_code' => $request->departemen_code,
                'dept_name' => $request->departemen_name,
                'is_default' => $request->has('is_default') ? $request->is_default : 0,
                'parent_dept_id' => $request->parent_dept_id,
                'dept_manager_id' => $request->dept_manager_id,
                'company_id' => $request->company_id,
            ]);
        
            // Redirect kembali ke halaman daftar departemen
            return redirect()->back()->with('success', 'Department created successfully.');
    }
    public function edit($id)
    {
        // Mengambil data departemen berdasarkan ID
        $departement = DB::table('personnel_department')->find($id);
    
        // Kemudian kirim data ke view edit
        return view('admin.departement.edit', compact('departement'));
    }    

    public function update(Request $request, $id)
    {
        // Validasi data yang dikirimkan dari form
        $request->validate([
            'departemen_code' => 'required',
            'departemen_name' => 'required',
            'is_default' => 'nullable|boolean',
            'parent_dept_id' => 'nullable|integer',
            'dept_manager_id' => 'nullable|integer',
            'company_id' => 'nullable|integer',
        ]);
    
        // Lakukan update pada tabel personnel_department
        DB::table('personnel_department')->where('id', $id)->update([
            'dept_code' => $request->departemen_code,
            'dept_name' => $request->departemen_name,
            'is_default' => $request->has('is_default') ? $request->is_default : 0,
            'parent_dept_id' => $request->parent_dept_id,
            'dept_manager_id' => $request->dept_manager_id,
            'company_id' => $request->company_id,
        ]);
    
        // Redirect kembali ke halaman daftar departemen
        return redirect()->back()->with('success', 'Department updated successfully.');
    }    

    public function destroy($id)
    {
        // Menghapus data departemen berdasarkan ID
        DB::table('personnel_department')->where('id', $id)->delete();
    
        // Kemudian redirect kembali ke halaman daftar departemen
        return redirect()->back()->with('success', 'Departmen deleted successfully.');
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
