<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('sms_orders', function (Blueprint $table) {
            $table->id();
            $table->string('order_number')->unique();
            $table->timestamp('order_date')->useCurrent();
            $table->unsignedBigInteger('cust_id')->nullable();
            $table->decimal('total_amount', 10, 2);
            $table->decimal('vat_amount', 10, 2);
            $table->decimal('discount_amount', 10, 2);
            $table->decimal('received_amount', 10, 2);
            $table->decimal('revised_amount', 10, 2);
            $table->string('status');
            $table->string('payment_status');
            $table->string('payment_method');
            $table->string('table_number')->nullable();
            $table->string('create_by');
            $table->string('create_date');
            $table->string('update_by')->nullable();
            $table->string('update_date')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sms_orders');
    }
};
