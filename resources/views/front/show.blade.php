@extends('front.template.main')

@section('content')
  
  <div class="row">
    <div class="col-md-12">
      <div class="row">
        <div class="page-header">
          <h1 class="title-front">{{ $article->title }}</h1>
        <small><i class="fa fa-folder-open-o"></i><a href="">{{ $article->category->name }}</a>
                      Escrito {{ $article->created_at->diffForHumans() }}</small>
        </div>
        
        <div class="text-justify">
            <div class="well well-lg">
                @foreach($article->images as $image)
                  <img  src="{{ asset('images/articles/' . $image->name) }}" width="140px">
                @endforeach  
              {!! $article->content !!}
              <div class="text-right">
                  
              </div>
            </div>
               
        </div>
         {!! link_to_route('front.index', 'Regresar...') !!}
        
      </div>
    </div>
   
  </div>
@endsection