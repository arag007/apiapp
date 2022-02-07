<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJuegojornadaTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('juegojornada', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('id_equipolocal');
            $table->integer('id_equipovisitante');
            $table->integer('id_jornada');
            $table->datetime('fecha_juego');
            $table->integer('estatus');
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
        Schema::dropIfExists('juegojornada');
    }
}
