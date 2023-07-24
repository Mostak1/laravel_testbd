<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    //`id`, `district_id`, `name`, `bn_name`, `url`
    public function up(): void
    {
        Schema::create('thanas', function (Blueprint $table) {
            $table->id();
            $table->bigInteger("district_id")->unsigned();
            $table->foreign('district_id')->references('id')->on('districts');
            $table->string('name');
            $table->string('bn_name');
            $table->string('url');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('thanas');
    }
};
