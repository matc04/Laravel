@extends('base')

@section('title')
    Prueba con Manuel
@stop

@section('content')
    <div class="container">
       <div class="row row-content">
           <div class="col-md-10 col-md-offset-1">
                <div class="panel panel-default">
                    <div class="panel-heading">Usuarios</div>
                        <div class="panel-body">
                            <p>
                                <a class="btn btn-info" href="{{ route('admin.usuario.create') }}" role="button">Agregar Usuario</a>
                            </p>
                            <table class="table table-striped">
                                <tr>
                                    <th>Nombre</th>
                                    <th>Email</th>
                                    <th>Acciones</th>
                                <tr>
                                    @foreach ($usuarios as $usuario)
                                        <tr>
                                            <td>{{ $usuario->fullname }}</td>
                                            <td>{{ $usuario->scorreo }}</td>
                                            <td>
                                                <a href="{{ route('admin.usuario.edit', $usuario->id) }}">Update</a>
                                                <a href="delete">Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach    
                            </table>
                            {!! $usuarios->render() !!}
                        </div>
                    </div>
                </div>
           </div>
       </div>
    </div>
@stop    