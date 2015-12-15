@extends('admin.template.main')

@section('title', 'Agregar Categoria')

@section('content')
	{!! Form::open(['route' => 'admin.categories.store', 'method' => 'POST']) !!}
	<div class="form-group">
		{!! Form::label('name', 'Nombre') !!}
		{!! Form::text('name', null, [
			'class' => 'form-control',
			'placeholder' => 'Nombre de la Categoria', 
			'required'
		]) !!}
	</div>
	<div class="form-group">
		{!! Form::submit('Registrar', ['class' => 'btn btn-success']) !!}
	</div>
		

	{!! Form::close() !!}
@endsection