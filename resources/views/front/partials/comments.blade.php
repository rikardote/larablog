{!! Form::open(['route' => ['comments.store', $article->id], 'method' => 'POST']) !!}
  <div class="col-md-4">
    <div class="form-group">
      {!! Form::label('name', 'Nombre') !!}
      {!! Form::text('name', null, ['class' => 'form-control', 'placeholder' => 'Ingresa un nombre', 'required']) !!}
    </div>  
    <div class="form-group">  
      {!! Form::label('email', 'Email') !!}
      {!! Form::email('email', null, ['class' => 'form-control', 'placeholder' => 'ejemplo@mail.com', 'required']) !!}
    </div>
    <div class="form-group">
      {!! Form::label('comment', 'Comentario') !!}
      {!! Form::textarea('comment', null, ['class' => 'form-control', 'placeholder' => 'Comentario', 'required']) !!}
    </div>  
    <div class="form-group">
      {!! Form::submit('Ingresar', ['class' => 'btn btn-primary']) !!}
    </div>
  </div>
<div class="text-center">
  <b>Comentarios</b>
</div>
{!! Form::close() !!}
<div class="col-md-8">
 <div class="panel panel-default">
    @foreach($article->comments as $comment)
      <div class="panel-body">
        <it class="font-italic">{{ $comment->comment }}</it>
      </div>
      <div class="panel-footer">
        Por: <a href="mailto:{{  $comment->email }}">{{ $comment->name }}</a>
      <div class="pull pull-right">
        <i class="fa fa-clock-o"></i> {{ $comment->created_at->diffForHumans() }} 
      </div>
    </div>

    @endforeach
 
</div>
</div>
