<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>@yield('title', 'Home') | Test</title>
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
			Todos los derechos reservadors &copy {{ date('Y') }}
			<div class="pull-right">
				{!! link_to_route('admin.auth.login', 'Admin') !!}
				Ricardo Fuentes
			</div>
		</footer>
	</div>

	<script src="{{ asset('plugins/jquery/js/jquery.js') }}"></script>
</body>
</html>