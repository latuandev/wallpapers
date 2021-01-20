<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Wallpapers</title>

    <!-- Bootstrap core CSS -->
    <link href="{{asset('public/front-end/bootstrap/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="{{asset('public/front-end/bootstrap/css/heroic-features.css')}}" rel="stylesheet">

    <!-- Pagination -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- End Pagination -->

    <!-- Button -->

    <!-- Button -->

</head>

<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <a class="navbar-brand" href="{{URL::to('/')}}">Trang chủ Wallpapers</a>
            <form action="" method="post" enctype="multipart/form-data">
                <input type="hidden" name="_token" value="{{ csrf_token()}}"> <!-- Không chuyển trang sau khi load form -->
                <!-- Search form -->
                <input class="form-control" name="search" type="text" placeholder="Tìm kiếm: Space, Beach, Anime, Sky, ..." aria-label="Search" size="52px">
            </form>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <?php
                        // thông báo trạng thái thêm tài khoản Admin
                        $messageSearch = Session::get('messageSearch');
                        if($messageSearch){
                            echo '<font color = "red"><b>'.$messageSearch.'</b></font>';
                            Session::put('messageSearch',null);
                        }
                    ?>
                </li>
                </ul>&nbsp;&nbsp;&nbsp;&nbsp;
                <a class="navbar-brand" href="{{URL::to('/admin')}}">Đăng nhập Admin</a>
            </div>
        </div>
    </nav>

    @yield('content')

    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container">
        <p class="m-0 text-center text-white">Developed by Lê Anh Tuấn</p>
        </div>
        <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="{{asset('public/front-end/bootstrap/vendor/jquery/jquery.min.js')}}"></script>
    <script src="{{asset('public/front-end/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    </body>
</html>

