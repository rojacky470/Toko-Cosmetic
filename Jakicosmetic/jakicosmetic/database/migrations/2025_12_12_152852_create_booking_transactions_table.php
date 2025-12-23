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
        Schema::create('booking_transactions', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('phone');
            $table->string('email');
            $table->string('city');
            $table->string('post_code')->nullable();
            $table->text('address');
            $table->integer('quantity')->default(0)->after('booking_trx_id');
            $table->string('booking_trx_id')->unique();
            $table->boolean('is_paid')->default(false);
            $table->string('proof')->nullable();
            $table->bigInteger('sub_total_amount')->default(0);
            $table->bigInteger('total_tax_amount')->default(0);
            $table->bigInteger('total_amount')->default(0);
            $table->bigInteger('total_price')->default(0);
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // 💡 Metode down() hanya membuang tabel yang dibuat di up()
        Schema::dropIfExists('booking_transactions');
    }
};