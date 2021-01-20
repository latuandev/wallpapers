@extends('admin.layout.master')
@section('body')
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header"><h3 class="text-center font-weight-light my-4"><b>Thêm hình ảnh</b></h3></div>
                                <div class="card-footer text-center">
                                    <?php
                                        // thông báo trạng thái upload file ảnh
                                        $messageUploadFile = Session::get('messageUploadFile');
                                        if($messageUploadFile){
                                            echo "<font color='red'>".$messageUploadFile."</font>";
                                            Session::put('messageUploadFile',null);
                                        }
                                    ?>
                                </div>
                                <div class="card-body">
                                <form action="" method="post" enctype="multipart/form-data">
                                    <input type="hidden" name="_token" value="{{ csrf_token()}}"> <!-- Không chuyển trang sau khi load form -->
                                        <div class="form-group">
                                            <h5>Chọn tệp hình ảnh</h5>
                                            <input name="uploadFile" type="file">
                                            <!--<div class="form-group">
                                                <label class="small mb-1" for="inputEmailAddress"><br><h5>Thể loại hình ảnh</h5></label>
                                                <input placeholder="Nhập thể loại hình ảnh" name="imageType" class="form-control py-4" type="text" required="">
                                            </div>-->
                                            <div class="form-group">
                                                <label for="sel1"><br><h5>Chọn thể loại hình ảnh</h5><font color='red'>(*Bắt buộc)</font></label>
                                                <select class="form-control" id="sel1" name="imageType">
                                                    @foreach ($data as $item)
                                                        <option>{{$item->type}}</option>
                                                    @endforeach
                                                </select>
                                                <br>
                                            </div>
                                        </div>
                                    <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0"><input class="btn btn-primary" type="submit" value="Thêm" name="addImage"></div>
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
@endsection
