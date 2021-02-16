<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @include('layout.head')
    <title>{{$settings->name}}</title>
</head>

<body>
    <!-- top header area start -->
    <header id="header-area" class="">
        @include('layout.nav')

        @yield('banner')

    </header>
    <!-- top header area end -->

    <!-- main content area start -->

        @yield('content')

    @include('layout.footer')

</body>

</html>
