<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Employee extends Model
{
    use HasFactory;
    protected $table = 'personnel_employee';    

    protected $dates = ['created_at', 'dob','updated_at', 'join_date'];
    protected $fillable = [
        'create_time',
        'create_user',
        'change_time',
        'change_user',
        'status',
        'emp_code',
        'first_name',
        'last_name',
        'nickname',
        'passport',
        'driver_license_automobile',
        'driver_license_motorcycle',
        'photo',
        'self_password',
        'device_password',
        'dev_privilege',
        'card_no',
        'acc_group',
        'acc_timezone',
        'gender',
        'birthday',
        'address',
        'postcode',
        'office_tel',
        'contact_tel',
        'mobile',
        'national',
        'religion',
        'title',
        'enroll_sn',
        'ssn',
        'update_time',
        'hire_date',
        'verify_mode',
        'city',
        'emp_type',
        'enable_payroll',
        'app_status',
        'app_role',
        'email',
        'last_login',
        'is_active',
        'session_key',
        'login_ip',
        'department_id',
        'position_id',
        'leave_group',
        'emp_code_digit',
        'superior_id',
        'company_id',
    ];
    public function user() {
        return $this->belongsTo('App\User');
    }

    public function department() {
        // return $this->hasOne('App\Department');
        return $this->belongsTo('App\Department');
    }

    public function attendance() {
        return $this->hasMany('App\Attendance');
    }

    public function leave() {
        return $this->hasMany('App\Leave');
    }

    public function expense() {
        return $this->hasMany('App\Expense');
    }

    public function position(){
        return $this->belongsTo('App\Position');
    }
    
}
