<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Trang đăng nhập quản lý Wallpapers</title>
        <link href="{{asset('/../wallpapers/public/bootstrap/dist/css/styles.css')}}" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Đăng nhập</h3></div>
                                    <div class="card-body">
                                        <form action="{{URL::to('/admin-dashboard')}}" method="post">
                                            @csrf
                                            <div class="form-group"><label class="small mb-1" for="inputEmailAddress">Email</label><input placeholder="Nhập email" name="email" class="form-control py-4" type="email" required=""></div>
                                            <div class="form-group"><label class="small mb-1" for="inputPassword">Mật khẩu</label><input  placeholder="Nhập mật khẩu" name="password" class="form-control py-4" type="password" required=""></div>
                                        <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">Developed by Lê Anh Tuấn<input class="btn btn-primary" type="submit" value="Đăng nhập" name="Login"></div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center">
                                        <?php
                                            $message = Session::get('message');
                                            if($message){
                                                echo $message;
                                                Session::put('message',null);
                                            }
                                        ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="{{asset('/../wallpapers/public/bootstrap/dist/js/scripts.js')}}"></script>
    </body>
</html>
