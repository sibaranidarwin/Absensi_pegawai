<?php

namespace App\Http\Controllers\Admin;

use App\Attendance;
use App\Department;
use App\Employee;
use App\Http\Controllers\Controller;
use App\Role;
use App\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Intervention\Image\ImageManagerStatic as Image;

use function Ramsey\Uuid\v1;

class EmployeeController extends Controller
{
    public function index() {
        $data = [
            'personnel_employee' => DB::table('personnel_employee')->get()
        ];
        // dd($data);
        return view('admin.employees.index')->with($data);
    }
    public function create() {
        $data = [
            'departments' => Department::all(),
            'desgs' => ['Manajer','Pegawai']
        ];
        return view('admin.employees.create')->with($data);
    }

    public function store(Request $request) {
        $this->validate($request, [
            'first_name' => 'required',
            'last_name' => 'required',
            'sex' => 'required',
            'desg' => 'required',
            'department_id' => 'required',
            'salary' => 'required|numeric',
            'email' => 'required|email',
            'photo' => 'image|nullable',
            'password' => 'required|confirmed|min:6'
        ]);
        $user = User::create([
            'name' => $request->first_name.' '.$request->last_name,
            'email' => $request->email,
            'password' => Hash::make($request->password)
        ]);
        $employeeRole = Role::where('name', 'employee')->first();
        $user->roles()->attach($employeeRole);
        $employeeDetails = [
            'user_id' => $user->id, 
            'first_name' => $request->first_name, 
            'last_name' => $request->last_name,
            'sex' => $request->sex, 
            'dob' => $request->dob, 
            'join_date' => $request->join_date,
            'desg' => $request->desg, 
            'department_id' => $request->department_id, 
            'salary' => $request->salary, 
            'photo'  => 'user.png'
        ];

        // Photo upload
        if ($request->hasFile('photo')) {
            // GET FILENAME
            $filename_ext = $request->file('photo')->getClientOriginalName();
            // GET FILENAME WITHOUT EXTENSION
            $filename = pathinfo($filename_ext, PATHINFO_FILENAME);
            // GET EXTENSION
            $ext = $request->file('photo')->getClientOriginalExtension();
            //FILNAME TO STORE
            $filename_store = $filename.'_'.time().'.'.$ext;
            // UPLOAD IMAGE
            // $path = $request->file('photo')->storeAs('public'.DIRECTORY_SEPARATOR.'employee_photos', $filename_store);
            // add new file name
            $image = $request->file('photo');
            $image_resize = Image::make($image->getRealPath());              
            $image_resize->resize(300, 300);
            $image_resize->save(public_path(DIRECTORY_SEPARATOR.'storage'.DIRECTORY_SEPARATOR.$filename_store));
            $employeeDetails['photo'] = $filename_store;
        }
        
        Employee::create($employeeDetails);
        
        $request->session()->flash('success', 'Karyawan berhasil ditambahkan!');
        return back();
    }

    public function attendance(Request $request) {
        $data = [
            'date' => null
        ];
        
        // dd($data);
        if($request->has('date')) {
            $dateRange = explode(' - ', $request->date);
            $startDate = Carbon::createFromFormat('d-m-Y', $dateRange[0])->startOfDay();
            $endDate = Carbon::createFromFormat('d-m-Y', $dateRange[1])->endOfDay();
            
            $employees = $this->attendanceByDateRange($startDate, $endDate);
            $data['date'] = $startDate->format('d M, Y') . ' - ' . $endDate->format('d M, Y');
        } else {
            $employees = $this->attendanceByDate(Carbon::now());
            $today = Carbon::now()->format('Y-m-d');
            $employees = $employees->filter(function ($employee) use ($today) {
                return substr($employee->create_time, 0, 10) === $today; });

        }

        $data['personnel_employee'] = $employees;
                    
        return view('admin.employees.attendance')->with($data);
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

    public function destroy($employee_id) {
        $employee = DB::table('personnel_employee')->where('id', $employee_id)->first();
        if ($employee) {
            DB::table('personnel_employee')->where('id', $employee_id)->delete();
            request()->session()->flash('success', 'Karyawan berhasil dihapus!');
        } else {
            request()->session()->flash('warning', 'Karyawan tidak ditemukan!');
        }        
        return back();
    }

    public function attendanceDelete($attendance_id) {
        $attendance = Attendance::findOrFail($attendance_id);
        $attendance->delete();
        request()->session()->flash('success', 'Riwayat Absensi berhasil dihapus!');
        return back();
    }

    public function employeeProfile($employee_id) {
        $employee = Employee::findOrFail($employee_id);
        return view('admin.employees.profile')->with('employee', $employee);
    }
}
