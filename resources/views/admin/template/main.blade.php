<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>@yield('title', 'Default') | Panel de Administracion</title>
	<link rel="stylesheet" href="{{ asset('plugins/bootstrap/css/bootstrap.css') }}">
	<link rel="stylesheet" href="{{ asset('plugins/chosen/chosen.css') }}">
	<link rel="stylesheet" href="{{ asset('plugins/trumbowyg/ui/trumbowyg.css') }}">
</head>
<body>
	<div class="container">
		@include('admin.template.partials.nav')
	</div>
	<section>
		<div class="container">
			<div class="panel panel-primary">
	  			<div class="panel-heading">
	    			<h3 class="panel-title">@yield('title')</h3>
	  			</div>
	  			<div class="panel-body">
	  				@include('flash::message')
	  				@include('admin.template.partials.errors')
	    			@yield('content')
	  			</div>
			</div>
		</div>
	</section>

	

<script src="{{ asset('plugins/jquery/js/jquery.js') }}"></script>
<script src="{{ asset('plugins/bootstrap/js/bootstrap.js') }}"></script>
<script src="{{ asset('plugins/chosen/chosen.jquery.js') }}"></script>
<script src="{{ asset('plugins/trumbowyg/trumbowyg.js') }}"></script>

@yield('js')

</body>
</html>