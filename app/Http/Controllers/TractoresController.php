<?php

namespace App\Http\Controllers;

use App\Models\tractore;
use Illuminate\Http\Request;

class TractoresController extends Controller
{
    public function inicioTractores(){
        $tractores = tractore::all();
        return view('Tractores.Tractores',compact('tractores'));
    }
}
