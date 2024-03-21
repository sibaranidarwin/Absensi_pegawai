<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $table = 'personnel_department';
    
    protected $fillable = [
        'dept_code',
        'dept_name',
        'is_default',
        'parent_dept_id',
        'dept_manager_id',
        'company_id',
    ];

    public function employees() {
        return $this->hasMany('App\Employee', 'department_id');
    }
}
