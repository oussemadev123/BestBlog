@extends('layout.master')
@section('content')
 <div class="row">
     <div class="col-md-9 offset-md-2">
         <h3>Edit Post</h3>
         <hr>
         <form action="{{ '/posts/'. $post->id }}" method="POST" enctype='multipart/form-data'>
         @csrf
         @method('PUT')
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" name="title" value="{{ $post->title }}" id="title" class="form-control">
            </div>
            <div class="form-group">
               <label for="body">Body</label>
               <textarea name="body"  id="body" cols="30" rows="4" class="form-control">{{ $post->body }}</textarea>
           </div> 
          <img src="{{ asset('storage/coverimages/' . $post->image) }}" height="200"/>
           <div class="form-group">
               <label for="image">Image</label>
               <input type="file" name="CoverImage" class="form-control">
           </div> 
            <div class="form-group">
               <button type="submit" class="btn btn-primary">Update</button>
           </div>
         </form>        
     </div>
 </div>
@endsection