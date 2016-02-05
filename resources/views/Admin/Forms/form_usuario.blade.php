<div class="form-group">
    {!! Form::label('scorreo', trans('usuario.scorreo') ) !!}
    {!! Form::text('scorreo', null, ['class' => 'form-control', 'placeholder' => 'Indique su dirección de correo']) !!}
</div>
<div class="form-group">
    {!! Form::label('snombre', trans('usuario.snombre') ) !!}
    {!! Form::text('snombre', null, ['class' => 'form-control', 'placeholder' => 'Indique su nombre']) !!} 
</div>
<div class="form-group">
    {!! Form::label('sapellido', trans('usuario.sapellido') ) !!}
    {!! Form::text('sapellido', null, ['class' => 'form-control', 'placeholder' => 'Indique su apellido']) !!} 
</div>
<div class="form-group">
    {!! Form::label('scontrasena', trans('usuario.scontrasena') ) !!}
    {!! Form::password('scontrasena', ['class' => 'form-control']) !!} 
</div>