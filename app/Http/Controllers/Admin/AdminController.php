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
            // Get current date
            $currentDate = now()->toDateString();
            $employeesall = DB::table('personnel_employee')->get();
        
            // Query to fetch all employees and their first clock-in time and last clock-out time for the current date
            $employees = DB::table('personnel_employee')
                ->leftJoin('iclock_transaction', 'personnel_employee.id', '=', 'iclock_transaction.emp_id')
                ->select(
                    'personnel_employee.id',
                    'personnel_employee.first_name',
                    'personnel_employee.last_name',
                    DB::raw('MIN(iclock_transaction.punch_time) as clock_in'),
                    DB::raw('MAX(iclock_transaction.punch_time) as clock_out')
                )
                ->whereDate('iclock_transaction.punch_time', $currentDate)
                // ->orWhereNull('iclock_transaction.punch_time') // Include employees without attendance records
                ->groupBy('personnel_employee.id', 'personnel_employee.first_name', 'personnel_employee.last_name')
                ->get();
        
            return view('admin.index', compact('employees', 'currentDate','employeesall'));
        }

    public function departement (){
        $data =  DB::table('personnel_department')->get();

        foreach ($data as $department) {
            $company = DB::table('personnel_company')->where('id', $department->company_id)->first();
            $department->company_name = $company ? $company->company_name : 'No Company Assigned';
        }

        return view('admin.departement.index', compact('data'));
    }
    
    public function create()
    {
        $departments = DB::table('personnel_department')->get();
        $companies = DB::table('personnel_company')->select('id','company_code', 'company_name')->get();
        return view('admin.departement.create', compact('departments', 'companies'));
        
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
        $companies = DB::table('personnel_company')->get();
    
        // Kemudian kirim data ke view edit
        return view('admin.departement.edit', compact('departement', 'companies'));
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
