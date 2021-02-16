
        <!-- header info area start-->
        <div id="top-heade-bar">
            <div class="fixed-top head-top">
                <div class="container">
                    <div class="row">
                        <!-- right info area -->
                        <div class="col-6 col-md-6 d-flex justify-content-start align-items-center">
                            <div class="row">
                                <span class="col-2"><a href="" type="button" class="p-md-2 m-2 m-md-0"
                                        data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                            class="fas fa-phone"></i></a>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">

                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="modal-body">
                                                        <div class="row" style="width: 200px;">
                                                            <div class="col-2"><i class="fas fa-phone"></i></div>
                                                            <div class="col-10" id="clipboardExample1"> {{$settings->mobile}} </div>

                                                        </div>
                                                    </div>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </span>

                                <!-- model end   -->
                                <span class="col-8 px-md-3 d-none d-lg-table pt-2">{{$settings->mobile}}</span>
                            </div>

                            <div class="row">
                                <span class="col-2"><a href="" type="button" class="p-md-2 m-2 m-md-0"
                                        data-bs-toggle="modal" data-bs-target="#exampleModal1"><i
                                            class="fas fa-envelope"></i></a>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="modal-body">
                                                        <div class="row" style="width: 200px;">
                                                            <div class="col-2"><i class="fas fa-envelope"></i></div>
                                                            <div class="col-10"> {{$settings->email}}</div>
                                                        </div>
                                                    </div>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </span>

                                <span class="col-8 px-md-3 d-none d-lg-grid pt-2">{{$settings->email}}</span>
                            </div>
                        </div>
                        <!-- left social icon area -->
                        <div class="col-6 col-md-6 d-flex justify-content-md-end justify-content-center"
                            id="top-social-icon">
                           @if ($settings->facebook)
                           <a href="{{$settings->facebook}}" class=""><i class="fab fa-facebook-f"></i></a>
                           @endif
                           @if ($settings->twitter)
                           <a href="{{$settings->twitter}}" class=""><i class="fab fa-twitter"></i></a>
                           @endif
                           @if ($settings->instagram)
                           <a href="{{$settings->instagram}}" class=""><i class="fab fa-instagram"></i></a>
                           @endif
                           @if ($settings->linkedin)
                           <a href="{{$settings->linkedin}}" class=""><i class="fab fa-linkedin"></i></a>
                           @endif
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- header info area end -->

        <!-- Primary Navigation bar start -->
        <nav class="navbar navbar-expand-lg navbar-light @yield('blogarea') " id="navbar-area">
            <div class="container">
                <a class="" href="{{route('home')}}"><img  src="{{asset('storage/'.$settings->logo)}}" alt="{{$settings->name}}" class="img-fluid logo-img"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <div class="m-auto"></div>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link {{request()->routeIs('home')?'active':''}} " aria-current="page" href="{{route('home')}}">Home</a>
                        </li>
                        @if (count($services) >0)
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle  {{request()->routeIs('services')?'active':''}}   {{request()->routeIs('singleservice')?'active':''}} " href="#" id="navbarDropdown" role="button"
                                data-bs-toggle="dropdown" aria-expanded="false">
                                Services
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="{{route('services')}}">Department Services</a></li>
                                @foreach ($services as $service)
                                <li><a class="dropdown-item" href="{{route('singleservice',$service->id)}}">{{$service->title}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                        @endif

                        <li class="nav-item">
                            <a class="nav-link {{request()->routeIs('blogs')?'active':''}}  " href="{{route('blogs')}}">Blog</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{request()->routeIs('about')?'active':''}} " href="{{route('about')}}">About</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link {{request()->routeIs('contact')?'active':''}} " href="{{route('contact')}}">Contact</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Primary Navigation bar end -->
