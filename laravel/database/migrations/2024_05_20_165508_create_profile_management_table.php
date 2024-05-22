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
        Schema::create('profile_management', function (Blueprint $table) {
            $table->id('profile_id');
            $table->string('first_name',60);
            $table->string('last_name',60);
            $table->string('email');
            $table->integer('phone_number');
            $table->string('address');
            $table->string('profile_picture',300);
            $table->string('Bio');
            $table->string('status');
            $table->string('additional_information');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('profile_management');
    }
};
