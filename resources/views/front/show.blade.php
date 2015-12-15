
@extends('front.template.main')

@section('content')
  <h3 class="title-front">{{ $article->title }}</h3>
  <div class="row">
    <div class="col-md-8">
      <div class="row">
       <small>
              <i class="fa fa-folder-open-o"></i><a href="{{ route('front.category', $article->category->id) }}">{{ $article->category->name }}</a><br>
              Por: <a href="{{ route('front.autor', $article->user->id) }}">{{ $article->user->name }}</a><br>
              <i class="fa fa-clock-o"></i> {{ $article->created_at->diffForHumans() }} 
       </small>
       <div class="text-justify">
          <article>
            <div class="well well-lg">
              @foreach($article->images as $image)
                <img  src="{{ asset('images/articles/' . $image->name) }}" width="140px">
              @endforeach  
               {!! $article->content !!}
             </div>
          </article>
       </div>
          
        
    </div>

  </div>
  <div class="col-md-4 aside">
      @include('front.partials.aside')
  </div>
  </div>
@endsection