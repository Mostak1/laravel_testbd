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
        Schema::create('questions', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users');
            $table->bigInteger('board_id')->unsigned();
            $table->foreign('board_id')->references('id')->on('boards');
            
            $table->bigInteger('district_id')->unsigned();
            $table->foreign('district_id')->references('id')->on('districts');
            
            $table->bigInteger('thana_id')->unsigned();
            $table->foreign('thana_id')->references('id')->on('thanas');
           
            $table->bigInteger('institute_id')->unsigned();
            $table->foreign('institute_id')->references('id')->on('institutes');

            $table->bigInteger('subcategory_id')->unsigned();
            $table->foreign('subcategory_id')->references('id')->on('subcategories');

            $table->text('exam_name');
            $table->char('year',4);
            $table->char('hot', 10);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('questions');
    }
};
