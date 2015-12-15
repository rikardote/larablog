<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\CommentsRequest;
use App\Comment;
use App\Article;
use Carbon\Carbon;

class CommentsController extends Controller
{ 
    public function __construct()
    {
      Carbon::setLocale('es');
    }
    
    public function store(CommentsRequest $request, $id)
    {
       
        $comment = new Comment($request->all());
        $comment->article_id = $id;
        $comment->save();

        $article = Article::find($id);
        
        $my_tags = $article->tags;
        $article->category;  
        $article->images;  
        $article->comments;  


       return view('front.show')
          ->with('article', $article)
          ->with('my_tags', $my_tags);

        
       
         
    }

   
    public function destroy($id)
    {
        //
    }
}
