<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Carbon;

use App\Timetable;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;

class TimeController extends Controller
{
    public function index()
    {
        $times = Timetable::all();
        return view('admin.timetable.index', compact('times'));
    }

    public function create()
    {
        $companies = DB::table('personnel_company')->select('id','company_code', 'company_name')->get();
        return view('admin.timetable.create', compact('companies'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'alias' => 'required',
            'in_time' => 'required|date_format:H:i:s',
            'duration' => 'numeric',
            'in_ahead_margin' => 'required',
            'in_above_margin' => 'required',
            'out_ahead_margin' => 'required',
            'out_above_margin' => 'required',
            'in_required' => 'required',
            'out_required' => 'required',
            'allow_late' => 'required',
            'allow_leave_early' => 'required',
            'work_day' => 'required',
            'min_early_in' => 'required',
            'min_late_out' => 'required',
            'work_time_duration' => 'required',
            'max_ot_limit' => 'required',
            'company_id' => 'required',
        ]);
        

        DB::table('att_timeinterval')->insert([
            'alias' => $request->alias,
            'in_time' => $request->in_time,
            'duration' => $request->duration,
            'in_ahead_margin' => $request->in_ahead_margin,
            'in_above_margin' => $request->in_above_margin,
            'out_ahead_margin' => $request->out_ahead_margin,
            'out_above_margin' => $request->out_above_margin,
            'in_required' => $request->in_required,
            'out_required' => $request->out_required,
            'allow_late' => $request->allow_late,
            'allow_leave_early' => $request->allow_leave_early,
            'work_day' => $request->work_day,
            'min_early_in' => $request->min_early_in,
            'min_late_out' => $request->min_late_out,
            'work_time_duration' => $request->work_time_duration,
            'max_ot_limit' => $request->max_ot_limit,
            'company_id' => $request->company_id,
        ]);
        Session::flash('success', 'Timetable created successfully.');
        return redirect()->back()->with('success', 'Timetable created successfully.');
    }

    public function edit($id)
    {
        $timetable = DB::table('att_timeinterval')->find($id);
        return view('admin.timetable.edit', compact('timetable'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'alias' => 'required',
            'in_time' => 'required|date_format:H:i',
            'duration' => 'numeric',
            'in_ahead_margin' => 'required|date_format:H:i',
            'in_above_margin' => 'required|date_format:H:i',
            'out_above_margin' => 'required|date_format:H:i',
            'out_ahead_margin' => 'required|date_format:H:i',
            'in_required' => 'required|in:0,1',
            'out_required' => 'required|in:0,1',
            'allow_late' => 'required|in:0,1',
            'allow_leave_early' => 'required|in:0,1',
            'work_day' => 'required',
            'min_early_in' => 'required',
            'min_late_out' => 'required',
            'work_time_duration' => 'required',
            'max_ot_limit' => 'required',
            'company_id' => 'required',
        ]);

        DB::table('att_timeinterval')->insert([
            'alias' => $request->alias,
            'in_time' => $request->in_time,
            'duration' => $request->duration,
            'in_ahead_margin' => $request->in_ahead_margin,
            'in_above_margin' => $request->in_above_margin,
            'out_above_margin' => $request->out_above_margin,
            'out_ahead_margin' => $request->out_ahead_margin,
            'in_required' => $request->in_required,
            'out_required' => $request->out_required,
            'allow_late' => $request->allow_late,
            'allow_leave_early' => $request->allow_leave_early,
            'work_day' => $request->work_day,
            'min_early_in' => $request->min_early_in,
            'min_late_out' => $request->min_late_out,
            'work_time_duration' => $request->work_time_duration,
            'max_ot_limit' => $request->max_ot_limit,
            'company_id' => $request->company_id,
        ]);

        return redirect()->route('timetable.index')->with('success', 'Timetable updated successfully.');
    }
}
