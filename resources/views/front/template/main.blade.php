<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>@yield('title', 'Home') | Blog</title>
	<link rel="stylesheet" href="{{ asset('plugins/bootstrap/css/journal/bootstrap.css') }}">
	<link rel="stylesheet" href="{{ asset('css/general.css') }}">
	<link rel="stylesheet" href="{{ asset('plugins/font-awesome/css/font-awesome.min.css') }}">
	<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
</head>
<body>
	<header>
		@include('front.template.partials.header')
	</header>
	<div class="container">
		@yield('content')
	
		<footer>
			<hr>
			
			<div class="pull-right">
				Todos los derechos Reservados&copy {{ date('Y') }}
				<br>
				{!! link_to_route('admin.auth.login', 'Admin') !!}
				Ricardo Fuentes
			</div>
		</footer>
	</div>

	<script src="{{ asset('plugins/jquery/js/jquery.js') }}"></script>
</body>
</html>