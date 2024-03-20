<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Position extends Model
{
    protected $table = 'personnel_position'; 

    protected $fillable = [
        'position_code',
        'position_name',
        'is_default',
        'parent_position_id',
        'company_id',
    ];

    // Define relationship with employees
    public function employees()
    {
        return $this->hasMany('App\Employee', 'position_id');
    }

}
