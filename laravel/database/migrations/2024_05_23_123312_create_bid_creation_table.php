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
        Schema::create('bid_creation', function (Blueprint $table) {
            $table->id('bid_id');
            $table->unsignedBigInteger('creator_user_id');
            $table->foreign('creator_user_id')->references('user_id')->on('registration_table')->onUpdate('cascade')->onDelete('cascade');
            $table->unsignedBigInteger('item_id');
            $table->foreign('item_id')->references('user_id')->on('registration_table')->onUpdate('cascade')->onDelete('cascade');
            $table->text('item_description');
            $table->integer('starting_price');
            $table->integer('bid_increment');
            $table->dateTime('start_date_time');
            $table->dateTime('end_date_time');
            $table->integer('current_highest_bid');
            $table->integer('number_of_bid');
            $table->string('bid_status');
            $table->string('payment_terms');
            $table->string('bid_category');
            $table->string('auction_type');
            $table->text('additional_terms');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('bid_creation');
    }
};
