<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    //'board_id', 'name', 'bn_name', 'lat', 'lon', 'url'
    public function up(): void
    {
        Schema::create('districts', function (Blueprint $table) {
            $table->id();
            $table->bigInteger("board_id")->unsigned();
            $table->foreign('board_id')->references('id')->on('boards');
            $table->string('name');
            $table->string('bn_name');
            $table->string('lat');
            $table->string('lon');
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
        Schema::dropIfExists('districts');
    }
};
