$(document).ready(function () {


    // banner owl carousel
    $("#banner-area .owl-carousel").owlCarousel({
        dots: false,
        loop: true,
        autoplay: true,
        autoplayTimeout: 5000,
        items: 1
    });


    // top  owl carousel
    $('#clint-area-card .owl-carousel').owlCarousel({
        loop: false,
        margin: 10,
        dots: true,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: false,
        nav: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 3
            }
        }
    })

    // fixed home area background img whit owl carousel
    $("#fixed-home-bg .owl-carousel").owlCarousel({
        dots: false,
        loop: true,
        autoplay: true,
        autoplayTimeout: 5000,
        items: 1
    });


    // top  owl carousel
    $('#services-area-3 .owl-carousel').owlCarousel({
        loop: false,
        dots: true,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: false,
        nav: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 2
            }
        }
    })


    // recent post owl carousel in post centent area
    $('#recent-post .owl-carousel').owlCarousel({
        loop: true,
        dots: true,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: false,
        nav: false,
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 3
            }
        }
    })

    // recent services owl carousel in post centent area
    $('#recent-services .owl-carousel').owlCarousel({
        loop: false,
        dots: false,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: false,
        nav: false,
        responsive: {
            0: {
                items: 2,
                dots: true
            },
            600: {
                items: 2
            },
            1000: {
                items: 6
            }
        }
    })


    // recent services owl carousel in post centent area
    $('#blog-area .owl-carousel').owlCarousel({

        dots: false,
        nav: false,
        responsive: {
            0: {
                items: 1,
                loop: true,
                dots: true,
                autoplay: true,
                autoplayTimeout: 5000,
                autoplayHoverPause: false,
            },
            600: {
                items: 2
            },
            1000: {
                items: 3
            }
        }
    })


});

window.onscroll = function () { myFunction() };

var navbar = document.getElementById("navbar-area");
var sticky = navbar.offsetTop;

function myFunction() {
    if (window.pageYOffset >= sticky) {
        navbar.classList.add("sticky")
    } else {
        navbar.classList.remove("sticky");
    }
}

