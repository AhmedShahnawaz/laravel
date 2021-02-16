@extends('layout.app')

@section('banner')
<div class="item ">

        <!-- banner area start -->
        <section id="banner-area">
            <!-- Owl-carousel -->
            <div class="owl-carousel owl-theme">
                <div class="item">
                    <img src="{{asset('storage/'.$home->baner1)}}" alt="Banner1" class="img-fluid img5">
                    <div class="imbgb"></div>
                      <div class="centered text-white col-12 col-md-10 col-lg-6 font-12">
                        <h2>{{$home->baner1_heading}}</h2>
                        <p>{{$home->baner1_text}}</p>
                    </div>
                </div>
                <div class="item">
                    <img src="{{asset('storage/'.$home->baner2)}}" alt="Banner2" class="img-fluid">
                    <div class="imbgb"></div>
                      <div class="centered text-white col-12 col-md-10 col-lg-6 font-12">
                        <h2>{{$home->baner2_heading}}</h2>
                        <p>{{$home->baner2_text}}</p>
                    </div>
                </div>
                <div class="item">
                    <img src="{{asset('storage/'.$home->baner3)}}" alt="Banner3" class="img-fluid">
                    <div class="imbgb"></div>
                      <div class="centered text-white col-12 col-md-10 col-lg-6 font-12">
                        <h2>{{$home->baner3_heading}}</h2>
                        <p>{{$home->baner2_text}}</p>
                    </div>
                </div>
            </div>
            <!--  Owl-carousel -->
        </section>
        <!-- banner area end -->
@endsection


@section('content')
<main id="main-area">
    @if (count($service)>0)


        <!-- top section card area  -->
        <section id="home-card-area">
            <div class="container py-md-5 pb-md-5">
                <div class="text-center py-3">
                    <h2><span class="h-color">{{$settings->name}}</span> </h2>
                    <small class="sub-h">Why people need a Marts</small>
                </div>
                <div class="row">
                    @foreach ($service as $serviceitem)
      <!-- card 1  -->
      <div class="col-12 col-md-6 col-lg-3 pb-1">
        <div class="card text-center">
            <div class="d-flex justify-content-center align-items-center pt-5">
                <a href="{{ route('singleservice', $serviceitem->id) }}" class=""> <img src="{{asset('storage/'.$serviceitem->image)}}" class="img-fluid" alt="banner"></a>
            </div>

            <div class="card-body">
                <h5 class="card-text">{{$serviceitem->title}}</h5>
                {{-- <p class="card-text">Get Instant Confirmed Appointment With Doctors.</p> --}}
            </div>
        </div>
    </div>
                    @endforeach
                </div>
            </div>
        </section>
        @endif
        <!-- home content area section  -->
        <section id="home-content-area" class="bg-light py-3 ">
            <div class="container">
                <div class="text-center py-md-5">
                    <h1>Featured <span class="h-color">area</span></h1>
                    {{-- <small class="sub-h"> text to build on the card</small> --}}
                </div>

                <!-- home content area -->
                <div class="row">
                    <!-- left side content area  -->
                    <div class="col-12 col-md-12 col-lg-6 d-flex justify-content-center align-items-center py-5">
                        <div class="">
                            <h2>{{$home->featured_area_heading}}</h2>
                            <hr class="w-25">
                            <p>{!! $home->featured_area_text !!}</p>
                        </div>
                    </div>
                    <!-- acordion content right area  -->
                    <div class="col-12 col-md-12 col-lg-6">
                        <div class="accordion" id="accordionExample">
                            @if ($home->fh1_heading && $home->fh1_text)

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingOne">
                                    <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        {{$home->fh1_heading}}
                                    </button>
                                </h2>
                                <div id="collapseOne" class="accordion-collapse collapse show"
                                    aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        {!! $home->fh1_text !!}
                                    </div>
                                </div>
                            </div>
                            @endif

                            @if ($home->fh2_heading && $home->fh2_text)

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingTwo">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        {{$home->fh2_heading}}
                                    </button>
                                </h2>
                                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                                    data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        {!! $home->fh2_text !!}
                                    </div>
                                </div>
                            </div>
                            @endif

                            @if ($home->fh3_heading && $home->fh3_text)

                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingThree">
                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                        data-bs-target="#collapseThree" aria-expanded="false"
                                        aria-controls="collapseThree">
                                        {{$home->fh3_heading}}
                                    </button>
                                </h2>
                                <div id="collapseThree" class="accordion-collapse collapse"
                                    aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                    <div class="accordion-body">
                                        {!! $home->fh3_text !!}
                                    </div>
                                </div>
                            </div>
                            @endif

                        </div>
                    </div>
                </div>

            </div>
        </section>
        @if (count($clients) >0)
        @include('components.clientarea')
        @endif
        @if ($home->app_image && $home->app_link)
        @include('components.android')
        @endif
        @if (count($blogs) >0)
        @include('components.blogarea')
        @endif
</main>
@endsection
