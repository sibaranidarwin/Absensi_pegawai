<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return redirect()->route('login');
});



Auth::routes(['register' => 'Register2Controller@register']);
Route::get('/employees/list-employees', 'Register2Controller@index')->name('register.index');
    Route::get('/employees/add-employee', 'Register2Controller@create')->name('register.create');
    Route::post('/employees', 'RegisterController@store')->name('register.store');
Route::get('/home', 'HomeController@index')->name('home');

Route::namespace('Admin')->prefix('admin')->name('admin.')->middleware(['auth','can:admin-access'])->group(function () {
    Route::get('/', 'AdminController@index')->name('index');

    Route::get('/reset-password', 'AdminController@reset_password')->name('reset-password');
    Route::put('/update-password', 'AdminController@update_password')->name('update-password');

    // Routes for employees //
    Route::get('/employees/list-employees', 'EmployeeController@index')->name('employees.index');
    Route::get('/employees/add-employee', 'EmployeeController@create')->name('employees.create');
    Route::post('/employees', 'EmployeeController@store')->name('employees.store');
    Route::get('/dashboard', 'AdminController@index')->name('index');

    //Routes untuk transaksi
    Route::get('/employees/attendance', 'EmployeeController@attendance')->name('employees.attendance');
    Route::post('/employees/attendance', 'EmployeeController@attendance')->name('employees.attendance');

    //Routes untuk delete
    Route::delete('/employees/attendance/{attendance_id}', 'EmployeeController@attendanceDelete')->name('employees.attendance.delete');
    Route::get('/employees/profile/{employee_id}', 'EmployeeController@employeeProfile')->name('employees.profile');
    Route::delete('/employees/{employee_id}', 'EmployeeController@destroy')->name('employees.delete');

    //Routes untuk Departemen
    Route::get('/employees/departement', 'AdminController@departement')->name('employees.department');


    //Route untuk Jabatan
    Route::get('/employees/jabatan', 'AdminController@jabatan')->name('employees.jabatan');
});

