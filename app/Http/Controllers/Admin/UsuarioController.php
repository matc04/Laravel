<?php

namespace App\Http\Controllers\Admin;

use App\Usuario;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;

class UsuarioController extends Controller
{

    public function Index(){
        $usuarios = Usuario::paginate();

        return view('Admin.lista_usuarios', compact( 'usuarios'));

    }

    public function create(){
        return view('Admin.usuario_create');
    }

    public function store(Request $request){

        $rules = array('snombre'     => 'required', 
                       'sapellido'   => 'required', 
                       'scontrasena' => 'required', 
                       'scorreo'     => 'required'
        );

        $this->validate($request, $rules);

        $usuario = Usuario::create($request->all());
        return redirect()->route('admin.usuario.index');

    }

    public function edit( $id ){
        $usuario = Usuario::findOrFail($id);
        
        return view('Admin.usuario_edit', compact('usuario'));

        
    }

    public function update( $id ){
        $usuario = Usuario::findOrFail($id);
 
        $usuario->fill($this->request->all());
        $usuario->save();

        return redirect()->route('admin.usuario.index');
        
    }
}
