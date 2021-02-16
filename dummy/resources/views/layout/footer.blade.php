<!-- start footer area -->
<footer class="pt-5 pb-0 bg-dark text-white" id="footer">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md d-none d-lg-block">
                <h5>Social Links</h5>
                <div class="f-social-icon d-flex pb-2 mt-3" id="footer-icon">
                    @if ($settings->facebook)
                        <a href="{{ $settings->facebook }}" class=""><i class="fab fa-facebook-f"></i></a>
                    @endif
                    @if ($settings->twitter)
                        <a href="{{ $settings->twitter }}" class=""><i class="fab fa-twitter"></i></a>
                    @endif
                    @if ($settings->instagram)
                        <a href="{{ $settings->instagram }}" class=""><i class="fab fa-instagram"></i></a>
                    @endif
                    @if ($settings->linkedin)
                        <a href="{{ $settings->linkedin }}" class=""><i class="fab fa-linkedin"></i></a>
                    @endif
                </div>
            </div>
            @if (count($servicefooter) > 0)
                <div class="col-6 col-md">
                    <h5>Our Services</h5>
                    <ul class="list-unstyled text-small">
                        @foreach ($servicefooter as $service)
                            <li><a class="link-secondary"
                                    href="{{ route('singleservice', $service->id) }}">{{ $service->title }}</a></li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <div class="col-6 col-md">
                <h5>Important Links</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="link-secondary" href="{{ route('blogs') }}">Blog</a></li>
                    <li><a class="link-secondary" href="{{ route('about') }}">About Us</a></li>
                    <li><a class="link-secondary" href="{{ route('contact') }}">Contect Us</a></li>

                </ul>
            </div>
        </div>
    </div>
    <hr>

    <div class="d-flex justify-content-center pb-2">
        <small>
            Copyright &copy; {{ date('Y') }} Sehat Soft Pvt.LTD
        </small>
    </div>
</footer>

<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous">
</script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    -->

<!-- Owl Carousel Js file -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
    integrity="sha256-pTxD+DSzIwmwhOqTFN+DB+nHjO4iAsbgfyFq5K5bcE0=" crossorigin="anonymous"></script>

<!-- main script file  -->
<script src="{{ asset('js/index.js') }}"></script>
