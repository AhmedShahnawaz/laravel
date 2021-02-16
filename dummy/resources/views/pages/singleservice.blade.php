@extends('layout.app')

@section('banner')
        <!-- backgroung fixd image area -->
        <section id="fixed-bg-service" style=" background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.5)), url({{asset('storage/'.$settings->headimage)}}); ">
            <div id="contect-img" class="d-flex justify-content-center align-items-center p-5">
                <div class="text-white m-md-5">
                    <h1 class="text-center">Services </h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                            <li class="breadcrumb-item"><a href="{{route('services')}}">Services</a></li>
                            <li class="breadcrumb-item" aria-current="page">{{$service->title}}</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
@endsection


@section('content')

<main id="service-area">


    <!-- about aouther area  -->
    <section id="about-text-area" class="d-flex justify-content-center align-items-center py-5">
        <div class="container">
            <div class="bg-light shadow">
                <p class="p-md-5 p-3"> {!! $service->content !!}</p>
            </div>
        </div>

    </section>


    <!-- service department area start -->
    <section id="recent-services">
        <div class="container py-5 pb-5">
            <div class="">
                <h1>Related <span class="h-color">Services</span></h1>
                <hr class="w-75">
            </div>

            <divv class="owl-carousel owl-theme">
                @foreach ($services as $service)
                <div class="item py-2 color-card">
                    <div class="product text-center p-2" id="img-rounded">
                        <div class="d-flex justify-content-center align-items-center pt-5">
                            <a href="{{route('singleservice',$service->id)}}" class="g"><img src="{{asset('storage/'.$service->image)}}" alt="baner" class="img-fluid"></a>
                            <br>
                        </div>
                        <div class="second p-1">
                           <a href="{{route('singleservice',$service->id)}}"><h5 class="">{{$service->title}} </h5></a>
                            <small><span> {!! Str::limit($service->content, 40) !!}</span></small>
                            <br>
                        </div>
                    </div>
                </div>
                @endforeach
            </divv>

        </div>
    </section>
    <!-- service department area end  -->

</main>

@endsection
