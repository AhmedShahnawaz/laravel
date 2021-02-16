@extends('layout.app')

@section('banner')

    <!-- backgroung fixd image area -->
    <section id="fixed-bg-contect">
        <div class="d-flex justify-content-center align-items-center p-5">
            <div class="text-white m-md-5">
                <h1 class="">Contact Us</h1>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb justify-content-center">
                        <li class="breadcrumb-item"><a href="{{ route('home') }}">Home</a></li>
                        <li class="breadcrumb-item" aria-current="page">Contact</li>
                    </ol>
                </nav>
            </div>
        </div>
    </section>
@endsection


@section('content')
    <main id="">
        <section id="contect-area">
            <div class="container-fluid">
                <div class="row py-5 pb-5">
                    <div class="col-12 col-md-12 col-lg-6 p-md-5 d-flex align-items-center">
                        {!! $contact->content !!}
                    </div>

                    <div class="col-12 col-md-12 col-lg-6">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
                        <form class="row g-3 py-5 pb-5" action="{{ route('contacfrom') }}" method="POST">
                            @csrf
                            <div class="form-floating">
                                <input type="text" class="form-control bg-light" name="name" value="{{ old('name') }}"
                                    id="floatingInput" placeholder="Name" required />
                                <label for="floatingInput">Name</label>
                            </div>
                            <div class="form-floating">
                                <input type="email" class="form-control bg-light" name="email" value="{{ old('email') }}"
                                    id="floatingPassword" placeholder="Email" required />
                                <label for="floatingPassword">Email</label>
                            </div>
                            <div class="form-floating">
                                <input type="number" class="form-control bg-light" name="phone" value="{{ old('phone') }}"
                                    id="floatingPassword" placeholder="Mobile No" required />
                                <label for="floatingPassword">Phone</label>
                            </div>
                            <div class="form-floating">
                                <textarea class="form-control bg-light" placeholder="Message" name="comment"
                                    id="floatingTextarea2" style="height: 100px" required>{{ old('comment') }}</textarea>
                                <label for="floatingTextarea2">Message</label>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary col-6">
                                    Submit
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>


        <section id="map-area">

            <iframe width="100%" height="450" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
                src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=+({{ $contact->address }})&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
        </section>
    </main>


@endsection
