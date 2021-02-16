@extends('layout.app')

@section('blogarea')
blog-nav
@endsection
@section('banner')

@endsection


@section('content')
<style>
    .blog-fixed-img {
        background: no-repeat;
    background-size: cover;
    height: 400px;
    background-position: center;
}
@media only screen and (max-width: 600px) {

           .blog-fixed-img {
       background: no-repeat;
       background-size: cover;
       height: 250px;
       background-position: center;
       }
   }
</style>
    <!-- start post area  -->
    <main id="post-area" class="bg-white">

        <div class="container py-5 post-width">
            <!-- post link area  -->
            <div class="user-info-area">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('blogs')}}">Blog</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Post</li>
                    </ol>
                </nav>
            </div>
            <hr>

            <!-- start articale area  -->
            <div class="post-content-area">
                <!-- articale or content section area  -->
                <article class="content-area">
                        <h1>{{$blog->title}}</h1>
                        <div class="blog-fixed-img" style=" background-image: url('{{asset('storage/'.$blog->image)}}');"></div>
                        {!! $blog->content, 100 !!}
                </article>

                <!-- social sharing buttons area  -->
                {{-- <section id="social-icon-share" class="py-3 pb-3">
                    <hr>
                    <div class="f-social-icon d-flex pb-2" id="footer-icon-post">
                        <a href="" class=""><i class="fab fa-facebook-f"></i></a>
                        <a href="" class=""><i class="fab fa-twitter"></i></a>
                        <a href="" class=""><i class="fab fa-instagram"></i></a>
                        <a href="" class=""><i class="fab fa-linkedin"></i></a>
                    </div>
                    <hr>
                </section> --}}
            </div>
            <!-- end articale area  -->

            @include('components.resentposts')

        </div>


    </main>
    <!-- end post area  -->
@endsection
