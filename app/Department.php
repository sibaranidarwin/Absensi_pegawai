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
        'company_id',
    ];

    public function employees() {
        return $this->hasMany('App\Employee', 'department_id');
    }
}
