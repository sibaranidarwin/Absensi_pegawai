<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    //
    protected $fillable = [
        'create_time',
        'create_user',
        'change_time',
        'change_user',
        'status',
        'enable_attendance',
        'enable_schedule',
        'enable_overtime',
        'enable_holiday',
        'emp_id',
        'group_id',
        'enable_compensatory',
        'ip_address'
    ];
    
    public function employee() {
        return $this->belongsTo('App\Employee');
    }
}
