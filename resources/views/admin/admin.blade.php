@extends('admin.layout.master')
@section('body')
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid"><br>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">
                            <?php
                                // thông báo trạng thái chỉnh sửa tài khoản Admin
                                $messageEditAdmin = Session::get('messageEditAdmin');
                                if($messageEditAdmin){
                                    echo "<font color='red'>".$messageEditAdmin."</font>";
                                    Session::put('messageEditAdmin',null);
                                }

                                // thông báo trạng thái thêm tài khoản Admin
                                $messageAddAdminAcc = Session::get('messageAddAdminAcc');
                                if($messageAddAdminAcc){
                                    echo "<font color='red'>".$messageAddAdminAcc."</font>";
                                    Session::put('messageAddAdminAcc',null);
                                }
                            ?>
                        </li>
                    </ol>
                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table mr-1"></i>Bảng dữ liệu Admin
                        <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0"><a href="{{URL::to('/addAdminAcc')}}"><input class="btn btn-primary" type="submit" value="Thêm tài khoản" name="addAdmin"></a></div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th style="text-align: center">ID</th>
                                            <th style="text-align: center">Tên Admin</th>
                                            <th style="text-align: center">Email</th>
                                            <th style="text-align: center">Mật khẩu</th>
                                            <th style="text-align: center">Chức năng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($users as $row)
                                            <tr>
                                                <td style="text-align: center">{{$row->id}}</td>
                                                <td style="text-align: center">{{$row->name}}</td>
                                                <td>{{$row->email}}</td>
                                                <td style="text-align: center">{{$row->password}}</td>
                                                <td style="text-align: center">
                                                    <a href="{{URL::to('/editAdminShow')}}/{{$row->id}}"><input class="btn btn-primary" type="submit" value="Đổi mật khẩu" name="editAdmin"></a><br><br>
                                                    <a href=""><input class="btn btn-primary" type="submit" value="Xóa" name="deleteAdmin" onclick="deleteAdminFunction({{$row->id}})"></a>
                                                </td>
                                                <script type="text/javascript">
                                                    function deleteAdminFunction(id) {
                                                        var link = "{{url ('/deleteAdmin')}}";
                                                        if(confirm('Bạn có muốn xóa tài khoản này không?')) {
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
