<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBidsTable extends Migration
{
    public function up()
    {
        Schema::create('bids', function (Blueprint $table) {
            $table->id(); // Auto-incrementing primary key
            $table->foreignId('customer_id')->constrained()->onDelete('cascade');
            $table->foreignId('auction_id')->constrained()->onDelete('cascade');
            $table->foreignId('item_id')->constrained()->onDelete('cascade');
            $table->decimal('amount', 10, 2);
            $table->timestamp('bid_time')->useCurrent();
            $table->timestamps(); // Creates `created_at` and `updated_at` columns
        });
    }

    public function down()
    {
        Schema::dropIfExists('bids');
    }
}
