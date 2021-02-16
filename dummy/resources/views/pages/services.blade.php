@extends('layout.app')

@section('banner')
        <!-- backgroung fixd image area -->
        <section id="fixed-bg-service" style=" background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.5)), url({{asset('storage/'.$settings->headimage)}}); ">
            <div id="contect-img" class="d-flex justify-content-center align-items-center p-5">
                <div class="text-white m-md-5">
                    <h1>Service Department</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center">
                            <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                            <li class="breadcrumb-item" aria-current="page">Services</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </section>
@endsection


@section('content')

<main id="service-area">
    <!-- service department area start -->
    <section id="service-department-area">
        <div class="container py-5 pb-5">
            <div class="">
                <h1>Department <span class="h-color">Services</span></h1>
                <hr class="w-75" />
            </div>
            <div class="row">

                @foreach ($services as $service)

                <div class="col-6 col-md-4 col-lg-2 text-center item">
                    <div class="d-flex justify-content-center align-items-center py-3">
                        <a href="{{route('singleservice',$service->id)}}" class="g"><img src=" {{asset('storage/'.$service->image)}}" alt="baner" class="img-fluid" /></a>
                        <br />
                    </div>
                    <div class="second pb-3">
                         <a href="{{route('singleservice',$service->id)}}"><h5 class="">{{$service->title}}</h5></a>
                        <small><span>
                            {!! Str::limit($service->content, 40) !!}</span></small>
                        <br />
                    </div>
                </div>
                @endforeach

            </div>

        </div>
    </section>
    <!-- service department area end  -->
</main>

@endsection
