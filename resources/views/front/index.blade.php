@extends('front.template.main')

@section('content')
	<h3 class="title-front left">Ultimos Articulos</h3>
	<div class="row">
		<div class="col-md-8">
			<div class="row">
       
        @foreach($articles as $article)     
  				<div class="col-md-6">
  					<div class="panel panel-default">
  						<div class="panel-body">
  							<a href="{{ route('front.show', $article->slug) }}" class="thumbnail">
                  @foreach($article->images as $image)
  								  <img class="img-responsive img-article" src="{{ asset('images/articles/' . $image->name) }}" width="140px">
                  @endforeach  
  								</a>
                  <h3 class="text-center">{{ $article->title }}</h3>
                  
  								<hr>
                  <small>
  								<i class="fa fa-folder-open-o"></i><a href="{{ route('front.category', $article->category->id) }}">{{ $article->category->name }}</a>
  								<div class="pull pull-right">
  									<i class="fa fa-clock-o"></i> {{ $article->created_at->diffForHumans() }} 
                    <span class="badge">{{ $article->comments->count() }}</span> Comentarios
  								</div>
                  </small>

  						</div>
  					</div>
  				</div>
        @endforeach
			</div>

      {!! $articles->render() !!}

		</div>
		<div class="col-md-4 aside">
      @include('front.partials.aside')
  	</div>
  </div>
@endsection