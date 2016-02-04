<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;

use App\Usuario;

class PruebaController extends Controller
{
    public function getIndex(){
        $result = Usuario::first();

        dd($result);
    }
}
