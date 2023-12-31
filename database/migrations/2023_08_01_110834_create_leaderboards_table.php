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
        Schema::create('leaderboards', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users');
            $table->bigInteger('topic_id')->unsigned(); 
            $table->foreign('topic_id')->references('id')->on('topics');
            $table->bigInteger('quizset_id')->unsigned()->nullable();
            $table->foreign('quizset_id')->references('id')->on('quizsets');
            $table->string('given_ans');
            $table->string('submitted_at')->nullable();
            $table->bigInteger('marks');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('leaderboards');
    }
};
