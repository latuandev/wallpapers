@extends('client.layout.master')
@section('content')
<!-- Page Content -->
<div class="container"><br><br><br>

    <!-- Page Features -->
    <div class="row text-center">

        @foreach ($data as $item)
        <div class="col-lg-3 col-md-6 mb-4">
            <div class="card h-100">
            <a href="{{URL::to('/../wallpapers/public/upload/image/'.$item->img_name)}}"><img class="card-img-top" src="/../wallpapers/public/upload/image/{{$item->img_name}}" alt="" width="300px" height="400px"></a>
                <div class="card-body">
                    {{$item->img_type}}
                </div>
            </div>
        </div>
        @endforeach

        <!-- Phân trang -->
        <div class="container">
            <ul class="pagination">
                {!! $data->links() !!}
            </ul>
        </div>

    </div>
    <!-- /.row -->
</div>
<!-- /.container -->
@endsection
