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
    Route::get('/departement/create', 'AdminController@create')->name('departement.create');
    Route::post('/departement', 'AdminController@store')->name('departement.store');
    Route::get('/departement/{id}/edit', 'AdminController@edit')->name('departement.edit');
    Route::put('/departement/update/{id}', 'AdminController@update')->name('departement.update');
    Route::delete('/departement/{id}', 'AdminController@destroy')->name('departement.destroy');


    //Route untuk Jabatan
     Route::get('positions', 'PositionController@index')->name('positions');
     Route::get('/positions/create', 'PositionController@create')->name('positions.create');
     Route::post('/positions', 'PositionController@store')->name('positions.store');
     Route::get('/positions/{id}/edit', 'PositionController@edit')->name('positions.edit');
     Route::put('/positions/{id}', 'PositionController@update')->name('positions.update');
     Route::delete('/positions/{id}', 'PositionController@destroy')->name('positions.destroy');

     //
    Route::get('/employees/{employee}/edit', 'EmployeeController@edit')->name('employees.edit');
    Route::put('/employees/{employee}', 'EmployeeController@updatev2')->name('employees.update');
});

