<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignUusuarioToTableTorneoorganizado extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('torneo_organizado', function (Blueprint $table) {
            $table->foreign('id_usuario')
                 ->references('id')->on('usuarios');
            $table->foreign('id_torneo')
                 ->references('id')->on('torneo');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('table_torneoorganizado', function (Blueprint $table) {
            //
        });
    }
}
