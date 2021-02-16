@extends('layout.app')

@section('banner')
    <!-- backgroung fixd image area -->
    <section id="fixed-bg-about"
        style=" background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.5)), url({{ asset('storage/' . $settings->headimage) }}); ">
        <div class="d-flex justify-content-center align-items-center p-5">
            <div class="text-white m-md-5">
                <h1>About Us</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item" aria-current="page">About</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
@endsection


@section('content')

    <!-- start  about area  -->
    <main id="about-area">
        <!-- start content info area with image  -->
        <section id="about-content-area1">
            <div class="container py-5 pb-5">
                <div class="row">
                    <!-- content area  -->
                    <div class="col-12 col-md-6 py-3">
                        {{-- <h1><span class="text-muted">Checkmate.</span></h1> --}}
                        <h1>{{ $about->heading }}</h1>

                        <div class="row py-3 pb-3">
                            <!-- left side info area  -->
                            <div class="col-12">
                                <div class="d-flex justify-content-center align-items-center py-1">
                                    <div class="col-2">
                                        <i class="fa fa-envelope-open" aria-hidden="true"></i>
                                    </div>
                                    <div class="col-10">{{ $settings->email }}</div>
                                </div>

                                <div class="d-flex justify-content-center align-items-center py-1">
                                    <div class="col-2">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                    </div>
                                    <div class="col-10">{{ $settings->mobile }}</div>
                                </div>

                            </div>

                            <!-- right side info area  -->

                        </div>
                        <a href="tel:{{ $settings->mobile }}" class="btn btn-primary col-6"> <i class="fa fa-phone px-2"
                                aria-hidden="true"> </i> Call</a>
                    </div>
                    <!-- image area  -->
                    <div class="col-12 col-md-6">
                        <img src="{{ asset('storage/' . $about->image) }}" alt="banner" class="img-fluid" />
                    </div>
                </div>
            </div>
        </section>
        <!-- end content info area with image  -->

        <!-- about aouther area  -->
        <section id="about-text-area" class="d-flex justify-content-center align-items-center">
            <div class="container">
                <div class="bg-light shadow p-3 p-md-5">
                        {!! $about->content !!}

                </div>
            </div>
        </section>

        @if (count($teams) > 0)
            @include('components.teamarea')
        @endif
    </main>
    <!-- end about area  -->

@endsection
