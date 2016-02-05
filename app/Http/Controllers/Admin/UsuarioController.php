<?php

namespace App\Http\Controllers\Admin;

use App\Usuario;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\CrearUsuarioRequest;
use App\Http\Requests\EditarUsuarioRequest;


class UsuarioController extends Controller
{

    public function Index(){
        $usuarios = Usuario::paginate();

        return view('Admin.lista_usuarios', compact( 'usuarios'));

    }

    public function create(){
        return view('Admin.usuario_create');
    }

    public function store(CrearUsuarioRequest $request){

        $usuario = Usuario::create($request->all());
        return redirect()->route('admin.usuario.index');

    }

    public function edit( $id ){
        $usuario = Usuario::findOrFail($id);
        
        return view('Admin.usuario_edit', compact('usuario'));

        
    }

    public function update(EditarUsuarioRequest $request, $id ){
        $usuario = Usuario::findOrFail($id);
 
        $usuario->fill($request->all());
        $usuario->save();

        return redirect()->route('admin.usuario.index');
        
    }
}
