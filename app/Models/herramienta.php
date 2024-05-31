<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class herramienta extends Model
{
    use HasFactory;

    protected $fillable=[
        'tipoHerramienta',
        'nombreHerramienta',
        'cantidadHerramienta'
    ];
}
