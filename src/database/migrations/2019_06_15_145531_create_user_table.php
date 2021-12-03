<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        if (Schema::hasTable('user')) {
            Schema::dropIfExists('user');
        }
        Schema::create('user', function (Blueprint $table) {
            $table->bigIncrements('userId');
            $table->string('username');
            $table->integer('permission')->comment('1: admin, 2: staff');
            $table->string('password');
            $table->string('address');
            $table->string('phone');
            $table->string('avatar');
            $table->rememberToken();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user');
    }
}
