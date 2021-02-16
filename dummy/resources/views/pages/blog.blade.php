@extends('layout.app')

@section('blogarea')
blog-nav
@endsection

@section('content')

<main id="blog-area-main" class="">
    <div class="container blog-width">
        <!-- blog heading area  -->
        <div class="">
            <!-- post link area  -->
            <div class="user-info-area">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>

                        <li class="breadcrumb-item active" aria-current="page">Blog</li>
                    </ol>
                </nav>
            </div>
            <hr>
        </div>
        <div class="row">
            <!--start left side main area of articales -->
            <div class="col-12 col-lg-8">
                @forelse ($blogs as $blog)
                <div class="row bg-white p-3 mb-2">
                    <!-- image area  -->
                    <div class="col-12 col-md-4"><a href="" class="s"><img src="{{asset('storage/'.$blog->image)}}" alt=""
                                class="img-fluid"></a>
                    </div>
                    <!-- heading and content area  -->
                    <div class="col-12 col-md-8 px-md-1 px-2">
                        <a href="{{route('singleblog',$blog->id)}}" class="">
                            <h4 class="mt-2 mt-md-0">{{$blog->title}}</h4>
                        </a>
                        {!! Str::limit($blog->content, 100) !!}
                        <footer class="d-flex justify-content-between align-items-center">
                            <a class="btn btn-outline-primary btn-sm col-4" href="{{route('singleblog',$blog->id)}}">read more</a>

                            <small><i class="far fa-clock"></i>
                                <span>{{$blog->updated_at->format('d/m/Y')}}</span></small>
                        </footer>
                    </div>
                </div>

                @empty
                <h1 class="p-5">Blog Not Found</h1>
                @endforelse


                {{$blogs->links()}}

            </div>
            <!--end  left side main area of articales -->

            <!-- stsrt right sidebar area   -->
            <div class="col-12 col-lg-4">
                <!-- search bar area  -->
                {{-- <div class="col-12 d-flex bg-white py-4 pb-4 px-2 mb-3" id="search-group">
                    <input type="text" class="w-75 form-control rounded-0" placeholder="Search"
                        aria-label="Promo code" aria-describedby="button-addon2">
                    <button class="btn btn-outline-secondary w-25 rounded-0" type="button"
                        id="button-addon2">Apply</button>
                    <span class="input-combined_indicator"></span>
                </div> --}}

                <!-- recent post  -->
                @if (count($resentblog)>0)

                <div class="bg-white p-2 mb-3">
                    <div class="py-1">
                        <h4>Recent <span class="h-color">Post</span></h4>
                        <hr>
                    </div>
                    @foreach ($resentblog as $blog)

                    <div class="row py-2 pb-2">
                        <div class="col-4"><a href="" class="s"><img src="{{asset('storage/'.$blog->image)}}" alt=""
                                    class="img-fluid"></a></div>
                        <div class="col-8 px-1">
                            <a href="{{route('singleblog',$blog->id)}}" class="">
                                <h6 class="">{{$blog->title}}
                                </h6>
                            </a>
                            <small><i class="far fa-clock"></i>
                                <span class="px-2">{{$blog->updated_at->format('d/m/Y')}}</span></small>
                        </div>

                    </div>
                    @endforeach
                </div>

                @endif

            </div>
            <!-- end right sidebar area  -->
        </div>
    </div>


</main>
@endsection
