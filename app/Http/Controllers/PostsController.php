<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
// use DB;

class PostsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth')->except(['index','show']);
    }
    public function index(){
        //get spécifique post
        // $posts = Post::take(5)->get();
        // $posts = Post::where('id',5)->get();
        $posts = Post::orderby('id','desc')->paginate(7);
        //utliser DB 
        // $posts = DB::select('select * from posts'); 
        $count = Post::count();
        return view('posts.index',compact('posts','count'));
    }
    public function show($id){
        $post = Post::find($id);
        return view('posts.show',compact('post'));
    }
    public function create(){
        return view('posts.create');
    }
    public function store(Request $request){
        $request->validate([
            'title' => 'required|max:100',
            'body' => 'required|max:300',
            'CoverImage' => 'image|mimes:jpeg,png,jpg'
        ]);
        if($request->hasFile('CoverImage')){
            $file = $request->file('CoverImage');
            $ext = $file->getClientOriginalExtension();
            $filename = 'cover_image' . '_' . time() . '.' . $ext;
            $file->storeAs('public/coverimages',$filename);
        }else{
            $filename = 'noimage.png';
        }
        $post = new Post;
        $post->title = $request->title;
        $post->body = $request->body;
        $post->image = $filename;
        $post->user_id = auth()->user()->id;
        $post->save();
        return redirect('/posts')->with('status','Post was created successfuly');
    }
    public function edit($id){
        $post = Post::find($id);
        if(auth()->user()->id !== $post->user_id){
            return redirect('/posts')->with('error','You are not authorized'); 
        }
        return view('posts.edit',compact('post'));
    }
    public function update($id, Request $request)
   {
        $request->validate([
            'title' => 'required|max:100',
            'body' => 'required|max:300',
            'CoverImage' => 'image|mimes:jpeg,png,jpg'
        ]);
        if($request->hasFile('CoverImage')){
            $file = $request->file('CoverImage');
            $ext = $file->getClientOriginalExtension();
            $filename = 'cover_image' . '_' . time() . '.' . $ext;
            $file->storeAs('public/coverimages',$filename);
        }else{
            $filename = 'noimage.png';
        }
        $post = Post::find($id);
        $post->title = $request->title;
        $post->body = $request->body;
        $post->image = $filename;
        $post->save();
        return redirect('/posts')->with('status','Post was updated successfuly');
   }
   public function destroy($id){
        $post = Post::find($id);
        $post->delete();
        return redirect('/posts')->with('status','Post was deleted successfuly');
   }
}
