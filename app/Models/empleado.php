<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class empleado extends Model
{
    use HasFactory;

    protected $fillable=[
        'nombreEmpleado',
        'apellidoEmpleado',
        'duiEmpleado',
        'generoEmpleado',
        'edadEmpleado'    
    ];
}
