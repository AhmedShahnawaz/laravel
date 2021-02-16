  <!-- Owl-carousel -->
  <div class="owl-carousel owl-theme">
    <!-- <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 py-3"> -->
    @foreach ($blogs as $blog)
    <div class="item p-1 col">
        <div class="card shadow-sm">
            <div class="blog-fixed-img" style=" background-image: url('{{asset('storage/'.$blog->image)}}');"></div>
            <div class="card-body">
                <a href="{{route('singleblog',$blog->id)}}">
                    <h6>{{$blog->title}}</h6>
                </a>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="footer pt-2">
                        <small><i class="far fa-clock"></i><span class="px-2">{{$blog->updated_at->format('d/m/Y')}}</span>
                        </small>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endforeach


    <!-- </div> -->
</div>
