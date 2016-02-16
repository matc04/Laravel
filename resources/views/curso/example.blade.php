@extends('base')

@section('title')
    Prueba con Manuel
@stop

@section('content')
    <div class="container">
       <div class="row row-content">
           <div class="col-xs-12">
               <p>Texto de Prueba Bienvenido {{ $user }}</p>
           </div>
       </div>
    </div>
@stop    



   
