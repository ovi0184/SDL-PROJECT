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
        Schema::create('items_table', function (Blueprint $table) {
            $table->id('item_id');
            $table->unsignedBigInteger('seller_user_id');
            $table->foreign('seller_user_id')->references('user_id')->on('registration_table')->onUpdate('cascade')->onDelete('cascade');
            $table->string('title',100);
            $table->text('description');
            $table->string('category');
            $table->string('condition');
            $table->integer('starting_price');
            $table->integer('quantity');
            $table->date('listing_start_date');
            $table->date('listing_end_date');
            $table->string('images',300);
            $table->string('payment_terms');
            $table->string('current_highest_bid');
            $table->string('location');
            $table->string('status');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('items_table');
    }
};
