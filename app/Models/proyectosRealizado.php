<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class proyectosRealizado extends Model
{
    use HasFactory;

    protected $fillable=[
        'idHerramienta',
        'idMaquina',
        'nombreProyecto'
    ];
}
