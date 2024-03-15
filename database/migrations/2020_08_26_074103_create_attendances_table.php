<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAttendancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('att_attemployee', function (Blueprint $table) {
            $table->id();
            $table->datetime('create_time');
            $table->string('create_user');
            $table->string('change_time');
            $table->string('change_user')->nullable();
            $table->string('status')->nullable();
            $table->string('enable_attendance')->nullable();
            $table->string('enable_schedule')->nullable();
            $table->string('enable_overtime')->nullable();
            $table->string('enable_holiday')->nullable();
            $table->string('emp_id')->nullable();
            $table->string('group_id')->nullable();
            $table->string('enable_compensatory')->nullable();
            $table->string('ip_address')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('attendances');
    }
}
