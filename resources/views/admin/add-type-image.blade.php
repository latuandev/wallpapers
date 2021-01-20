@extends('admin.layout.master')
@section('body')
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-5">
                            <div class="card shadow-lg border-0 rounded-lg mt-5">
                                <div class="card-header"><h3 class="text-center font-weight-light my-4"><b>Thêm thể loại hình ảnh</b></h3></div>
                                <div class="card-footer text-center">
                                    <?php
                                        // thông báo trạng thái thêm thể loại hình ảnh
                                        $messageTypeImage = Session::get('messageTypeImage');
                                        if($messageTypeImage){
                                            echo "<font color='red'>".$messageTypeImage."</font>";
                                            Session::put('messageTypeImage',null);
                                        }
                                        // thông báo nếu trùng thể loại hình ảnh
                                        $messageTypeImageError = Session::get('messageTypeImageError');
                                        if($messageTypeImageError){
                                            echo "<font color='red'>".$messageTypeImageError."</font>";
                                            Session::put('messageTypeImageError',null);
                                        }
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
                                            <h5>Chọn tệp hình ảnh</h5><font color ="red">(Hình ảnh tượng trưng cho thể loại!)</font color>
                                            <input name="uploadFile" type="file">
                                            <label class="small mb-1" for="inputEmailAddress"><br><h5>Thể loại hình ảnh</h5></label>
                                            <input placeholder="Nhập thể loại hình ảnh" name="imageType" class="form-control py-4" type="text" required="">
                                        </div>
                                    <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0"><input class="btn btn-primary" type="submit" value="Thêm" name="addType"></div>
                                </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><br><br>
                <div class="card mb-4">
                    <div class="card-header"><i class="fas fa-table mr-1"></i>Bảng dữ liệu thể loại hình ảnh</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th style="text-align: center">ID</th>
                                        <th style="text-align: center">Thể loại</th>
                                        <th style="text-align: center">Hình ảnh</th>
                                        <th style="text-align: center">Chức năng</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($select as $item)
                                        <tr>
                                            <td style="text-align: center">{{$item->id}}</td>
                                            <td style="text-align: center">{{$item->type}}</td>
                                            <td style="text-align: center"><img src="/upload/image/{{$item->img_name}}" alt="{{$item->type}}" width="100px" height="100px"></td>
                                            <td style="text-align: center">
                                                <a href=""><input class="btn btn-primary" type="submit" value="Xóa" name="deleteImage" onclick="deleteFunction({{$item->id}})"></a>
                                            </td>
                                            <script type="text/javascript">
                                                function deleteFunction(id) {
                                                    var link = "{{url ('/deleteType')}}";
                                                    if(confirm('Bạn có muốn xóa thể loại này không?')) {
                                                        $.ajax({
                                                            url: link,
                                                            data: {'id':id, '_token':'{{csrf_token()}}'},
                                                            type: 'post',
                                                            error: function(xhr, status, errorThrow) {
                                                                alert(errorThrow);
                                                            },
                                                            success: function(data) {
                                                                alert(data);
                                                                location.reload();
                                                            }
                                                        });
                                                    }
                                                }
                                            </script>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </main>
@endsection
