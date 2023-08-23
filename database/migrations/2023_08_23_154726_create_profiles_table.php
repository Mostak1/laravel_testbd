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
        Schema::create('profiles', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id')->unsigned()->nullable();
            $table->foreign('user_id')->references('id')->on('users');
            $table->string('fullname');
            $table->string('institute');
            $table->string('batch')->nullable();
            $table->string('subject')->nullable();
            $table->string('designation')->nullable();
            $table->set('gender',['Male','Female','Others'])->nullable();
            $table->text('bio')->nullable();
            $table->string('phone');
            $table->string('address');
            $table->string('yt')->nullable();
            $table->string('fb')->nullable();
            $table->string('in')->nullable();
            $table->string('guardianname')->nullable();
            $table->string('guardianemail')->nullable();
            $table->string('guardianphone')->nullable();
            $table->string('bloodgroup');
            $table->string('image')->default('default.png');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('profiles');
    }
};
