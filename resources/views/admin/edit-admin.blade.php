@extends('admin.layout.master')
@section('body')
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header"><h3 class="text-center font-weight-light my-4"><b>Chỉnh sửa thông tin Admin</b></h3></div>
                                <div class="card-footer text-center">
                                    <?php
                                        // thông báo trạng thái xác nhận mật khẩu
                                        $messageEditAdmin = Session::get('messageEditAdmin');
                                        if($messageEditAdmin){
                                            echo "<font color='red'>".$messageEditAdmin."</font>";
                                            Session::put('messageEditAdmin',null);
                                        }
                                    ?>
                                </div>
                                <div class="card-body">
                                <form action="" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="_token" value="{{ csrf_token()}}"> <!-- Không chuyển trang sau khi load form -->
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress"><br><h5>Mật khẩu cũ</h5></label>
                                                <input placeholder="Nhập mật khẩu" name="imageType" class="form-control py-4" type="text" required="" value="{{$users->password}}" disabled>
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress"><br><h5>Mật khẩu mới</h5></label>
                                                <input placeholder="Nhập mật khẩu mới" name="newPassword" class="form-control py-4" type="text" required="" value="">
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress"><br><h5>Xác nhận mật khẩu</h5></label>
                                                <input placeholder="Nhập lại mật khẩu mới" name="newPasswordAgain" class="form-control py-4" type="text" required="" value="">
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress"><br><h5>Tên Admin</h5></label>
                                                <input placeholder="Nhập tên tài khoản" name="name" class="form-control py-4" type="text" required="" value="{{$users->name}}">
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress"><br><h5>Email</h5></label>
                                                <input placeholder="Nhập địa chỉ email" name="email" class="form-control py-4" type="text" required="" value="{{$users->email}}">
                                            </div>
                                        </div>
                                    <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0"><input class="btn btn-primary" type="submit" value="Sửa" name="editAdmin"></div>
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
@endsection
