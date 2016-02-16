{!! Form::open(['route' => [ 'admin.usuario.destroy', $usuario->id ], 'method' => 'DELETE']) !!}
    <button type="submit" onclick=" return confirm('Seguro que desea eliminar el regsitro ?')" class="btn btn-danger">Eliminar usuario</button>
{!! Form::close() !!}