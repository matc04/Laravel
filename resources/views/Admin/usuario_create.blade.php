@extends('base')

@section('title')
    Creación de Usuarios
@stop

@section('content')
    <div class="container">
       <div class="row row-content">
           <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">

                    @include('errors.errores')
                    
                    <div class="panel-heading">Datos Usuario</div>
                        <div class="panel-body">
    
                            {!! Form::open(['route' => 'admin.usuario.store', 'method' => 'POST']) !!}

                                @include('Admin.Forms.form_usuario')
                            
                            
                                <button type="submit" class="btn btn-default">Crear Usuario</button>
                            {!! Form::close() !!}
                           
                        </div>
                    </div>
                </div>
           </div>
       </div>
    </div>
@stop    