<div class="form-group">
    {!! Form::label('scorreo', 'Correo electrónico') !!}
    {!! Form::text('scorreo', null, ['class' => 'form-control', 'placeholder' => 'Indique su dirección de correo']) !!}
</div>
<div class="form-group">
    {!! Form::label('snombre', 'Nombre') !!}
    {!! Form::text('snombre', null, ['class' => 'form-control', 'placeholder' => 'Indique su nombre']) !!} 
</div>
<div class="form-group">
    {!! Form::label('sapellido', 'Apellido') !!}
    {!! Form::text('sapellido', null, ['class' => 'form-control', 'placeholder' => 'Indique su apellido']) !!} 
</div>
<div class="form-group">
    {!! Form::label('scontrasena', 'Contraseña') !!}
    {!! Form::password('scontrasena', ['class' => 'form-control']) !!} 
</div>