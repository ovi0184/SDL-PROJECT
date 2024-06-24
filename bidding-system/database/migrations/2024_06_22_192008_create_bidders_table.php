<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBiddersTable extends Migration
{
    public function up()
    {
        Schema::create('bidders', function (Blueprint $table) {
            $table->id('bidder_id');
            $table->string('username')->unique();
            $table->string('email')->unique();
            $table->string('location')->nullable();
            $table->string('password');
            $table->string('payment_method')->nullable();
            $table->string('contact_num')->nullable();
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('bidders');
    }
};


