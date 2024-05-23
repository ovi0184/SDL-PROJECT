<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('registration_table', function (Blueprint $table) {
            $table->id('user_id');
            $table->string('user_name',60);
            $table->string('password');
            $table->string('first_name',60);
            $table->string('last_name',60);
            $table->string('email',100);
            $table->text('address');
            $table->date('dob')->nullable();
            $table->date('registration_date');
            $table->boolean('status')->default(1);
            $table->date('last_login');            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('registration_table');
    }
};
