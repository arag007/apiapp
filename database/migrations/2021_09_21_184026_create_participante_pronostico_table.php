<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateParticipantePronosticoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('participante_pronostico', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('id_juegojornada')->unsigned();
            $table->integer('id_torneoorganizado')->unsigned();
            $table->integer('id_participante')->unsigned();
            $table->json('pronostico');
            $table->integer('total_goles');
            $table->integer('estatus');
            $table->foreign('id_juegojornada')
                 ->references('id')->on('juegojornada');
            $table->foreign('id_torneoorganizado')
                 ->references('id')->on('torneo_organizado');
                 $table->foreign('id_participante')
                      ->references('id')->on('participante');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('participante_pronostico');
    }
}
