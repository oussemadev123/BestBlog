@extends('layout.master')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <table class="table">
                       <thead>
                            <tr>
                                <th>Id</th>
                                <th>Title</th>
                                <th>Action</th>
                            </tr>                    
                       </thead>
                       <tbody>
                       @foreach ($posts as $post)
                            <tr>
                                <td>{{ $post->id }}</td>
                                <td>{{ $post->title }}</td>
                                <td>
                                   <a href="{{ '/posts/' . $post->id }}">Show</a>
                                </td>
                            </tr> 
                        @endforeach      
                       </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
