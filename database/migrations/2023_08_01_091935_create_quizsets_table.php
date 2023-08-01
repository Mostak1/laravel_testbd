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
        Schema::create('quizsets', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('title');
            $table->string('quizzes');
            $table->set('active',['0','1'])->default('1');
            $table->bigInteger('user_id')->unsigned()->nullable();
            $table->foreign('user_id')->references('id')->on('users');
            $table->bigInteger('category_id')->unsigned()->nullable();
            $table->foreign('category_id')->references('id')->on('categories')->onDelete('restrict');
            $table->bigInteger('subcategory_id')->unsigned()->nullable();
            $table->foreign('subcategory_id')->references('id')->on('subcategories')->onDelete('restrict');
            $table->bigInteger('topic_id')->unsigned()->nullable();
            $table->foreign('topic_id')->references('id')->on('topics')->onDelete('restrict');
            $table->datetime('stime')->nullable();
            $table->datetime('entime')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('quizsets');
    }
};
