
        <section id="clint-area-card">
            <div class="container-fluid py-5">
                <div class="text-center py-3">
                    <h2>Our <span class="h-color">Teams</span> </h2>
                    <small class="sub-h">Best Teams are Here</small>
                </div>
                <!-- Owl-carousel -->
                <div class="owl-carousel owl-theme">
                    @foreach ($teams as $team)
                    <div class="item py-2 color-card">
                        <div class="product" id="img-rounded">
                            <div class="d-flex justify-content-center align-items-center">
                                <div class="rounded">
                                    <div
                                        style="width:250px; height:250px; background-image: url('{{ asset('storage/' . $team->image) }}');border-radius: 50%; background-size: cover; background-position: center; ">
                                    </div>
                                </div>
                            </div>
                            <div class="text-center py-3 p-5">
                                <h5 class="">{{$team->title}}</h5>
                                <p>{{$team->content}}</p>
                              <!-- <a href="">click here..</a> -->
                            </div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </section>
