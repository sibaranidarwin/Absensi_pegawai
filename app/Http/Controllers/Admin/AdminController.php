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

            $transaction = DB::table('att_attemployee')
                ->join('personnel_employee', 'att_attemployee.emp_id', '=', 'personnel_employee.id')
                ->select('att_attemployee.*', 'personnel_employee.first_name')
                ->whereDate('att_attemployee.change_time', $currentDate)
                ->get();

            // dd($transaction);

            return view('admin.index')->with('transactions' ,$transaction);
        }

    
    public function attendanceByDate($date) {
        $employees = DB::table('personnel_employee')->select('id', 'first_name', 'last_name', 'create_time', 'status' , 'enroll_sn', 'update_time', 'department_id')->get();
        $attendances = DB::table('att_attemployee')->get()->filter(function($attendance, $key) use ($date){
            return $attendance->create_time;
        });
        return $employees->map(function($employee, $key) use($attendances) {
            $attendance = DB::table('att_attemployee')->pluck('create_time')->first();
            $employee->attendanceToday = $attendance;
       
            return $employee;
        });
    }

    public function attendanceByDateRange($startDate, $endDate) {
        $attendances = DB::table('att_attemployee')
        ->whereBetween('create_time', [$startDate, $endDate])
        ->get();    
        $employees = collect();
    
        foreach ($attendances as $attendance) {
            $employee = DB::table('personnel_employee')->select('id', 'first_name', 'last_name', 'create_time', 'status' , 'enroll_sn', 'update_time', 'department_id')->find($attendance->emp_id);
            if ($employee) {
                $employee->attendanceToday = $attendance;
                $employees->push($employee);
            }
        }
        return $employees;
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
