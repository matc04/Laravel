@extends('base')

@section('title')
    Creación de Usuarios
@stop

@section('content')
    <div class="container">
       <div class="row row-content">
           <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">Datos Usuario</div>
                        <div class="panel-body">
                        <p>Actualizando ---> {{ $usuario->fullname }}</p>
                        {!! Form::model($usuario, ['route' => ['admin.usuario.update', $usuario->id], 'method' => 'PUT']) !!}

                            @include('Admin.Forms.form_usuario')
                            
                            
                            <button type="submit" class="btn btn-default">Actualizar Usuario</button>
                        {!! Form::close() !!}
                           
                        </div>
                    </div>
                </div>
           </div>
       </div>
    </div>
@stop 