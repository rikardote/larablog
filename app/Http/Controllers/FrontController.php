<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Article;
use App\Comment;
use App\Category;
use App\Tag;
use Carbon\Carbon;


class FrontController extends Controller
{
    public function __construct()
    {
      Carbon::setLocale('es');
    }
    public function index()
    {

        $articles = Article::orderBy('id', 'DESC')->paginate(4);          
        
        $articles->each(function($articles){
          $articles->category;  
          $articles->images;  
          
        });
       
              
        return view('front.index')->with('articles', $articles);
    }

    /*public function categoria($id)
    {

        $articles = Article::orderBy('id', 'DESC')->where('category_id',$id)->paginate(4);          
        
        $articles->each(function($articles){
          $articles->category;  
          $articles->images;  
        });
        
        return view('front.index')->with('articles', $articles);
    }
*/
    public function autor($id)
    {

        $articles = Article::orderBy('id', 'DESC')->where('user_id',$id)->paginate(4);          
        
        $articles->each(function($articles){
          $articles->category;  
          $articles->images;  
        });
        
        return view('front.index')->with('articles', $articles);
    }
    

    public function articulo($slug)
    {

        $article = Article::findBySlug($slug);
        
        $my_tags = $article->tags;
        $article->category;  
        $article->images;  
        $article->comments;  

       return view('front.show')
          ->with('article', $article)
          ->with('my_tags', $my_tags);
        
    }
    public function searchCategory($name)
    {
        $category = Category::SearchCategory($name)->first();
        $articles = $category->articles()->paginate(4);

        $articles->each(function($articles){
          $articles->category;  
          $articles->images;  
        });
        
        return view('front.index')->with('articles', $articles);
    }
    public function searchTag($name)
    {
        $tag = Tag::SearchTag($name)->first();
        $articles = $tag->articles()->paginate(4);

        $articles->each(function($articles){
          $articles->category;  
          $articles->images;  
        });
        
        return view('front.index')->with('articles', $articles);
    }

}
