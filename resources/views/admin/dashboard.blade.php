@extends('admin.layout.master')
@section('body')
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid"><br>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">
                            <?php
                                // thông báo trạng thái chỉnh sửa hình ảnh
                                $messageEditImage = Session::get('messageEditImage');
                                if($messageEditImage){
                                    echo "<font color='red'>".$messageEditImage."</font>";
                                    Session::put('messageEditImage',null);
                                }
                            ?>
                        </li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-header"><i class="fas fa-table mr-1"></i>Bảng dữ liệu Wallpapers</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center">ID</th>
                                            <th style="text-align: center">Hình ảnh</th>
                                            <th style="text-align: center">Liên kết hình ảnh</th>
                                            <th style="text-align: center">Thể loại</th>
                                            <th style="text-align: center">Chức năng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($select as $row)
                                            <tr>
                                                <td style="text-align: center">{{$row->id}}</td>
                                                <td style="text-align: center"><img src="/../wallpapers/public/upload/image/{{$row->img_name}}" alt="{{$row->img_type}}" width="100px" height="100px"></td>
                                                <td>{{$row->img_url}}</td>
                                                <td style="text-align: center">{{$row->img_type}}</td>
                                                <td style="text-align: center">
                                                    <a href="{{URL::to('/editImageShow')}}/{{$row->id}}"><input class="btn btn-primary" type="submit" value="Sửa" name="editImage"></a><br><br>
                                                    <a href=""><input class="btn btn-primary" type="submit" value="Xóa" name="deleteImage" onclick="deleteFunction({{$row->id}})"></a>
                                                </td>
                                                <script type="text/javascript">
                                                    function deleteFunction(id) {
                                                        var link = "{{url ('/deleteImage')}}";
                                                        if(confirm('Bạn có muốn xóa hình ảnh này không?')) {
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
