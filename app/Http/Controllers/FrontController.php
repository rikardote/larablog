<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Article;

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

    public function categoria($id)
    {

        $articles = Article::orderBy('id', 'DESC')->where('category_id',$id)->paginate(4);          
        
        $articles->each(function($articles){
          $articles->category;  
          $articles->images;  
        });
        
        return view('front.index')->with('articles', $articles);
    }

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
        
          $article->category;  
          $article->images;  
    

        

        return view('front.show')->with('article', $article);//->with('articles', $articles);
    }

}
