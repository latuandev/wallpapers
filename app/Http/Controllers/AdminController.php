<?php

namespace App\Http\Controllers;

use App\Http\Requests\UploadFileRequest;
use App\Type;
use App\Wallpapers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
use App\User;
session_start();

class AdminController extends Controller
{
    // Hàm kiểm tra trạng thái đăng nhập
    public function authLogin() {
        $id = Session::get('id');
        if($id) {
            return Redirect::to('/dashboard');
        } else {
            return Redirect::to('/admin')->send();
        }
    }

    // Hàm hiển thị trang đăng nhập
    public function index(){
        return view('admin.login');
    }

    // Hàm hiển thị trang quản lý wallpapers
    public function dashboardShow(){
        $this->authLogin();

        $select = DB::table('wallpapers')->select('*')->get();

        return view('admin.dashboard')->with('select', $select);
    }

    // Hàm kiểm tra tài khoản đăng nhập
    public function dashboard(Request $request){

        $email = $request->email;
        $password = md5($request->password);

        $result = DB::table('users')->where('email', $email)->where('password', $password)->first();
        if($result){
            Session::put('name',$result->name);
            Session::put('id',$result->id);
            return Redirect::to('/dashboard');
        }
        else{
            Session::put('message','Mật Khẩu hoặc tài khoản không đúng. Vui lòng nhập lại!');
            return Redirect::to('/admin');
        }
    }

    // Hàm đăng xuất
    public function logout(){
        $this->authLogin();

        Session::put('name',null);
        Session::put('id',null);
        return Redirect::to('/admin');
    }

    // Hàm hiển thị trang thêm hình ảnh và upload file
    public function addImageShow(UploadFileRequest $req) {
        $this->authLogin();

        if($req->isMethod('post')) {
        if($req->hasFile('uploadFile')) {

                $fileName = $req->file('uploadFile')->getClientOriginalName();
                $req->file('uploadFile')->move('public/upload/image', $fileName);
                $type = $req->imageType;

                $selectType = DB::table('types')->where('type', '=', $type)->select('*')->get();
                // Lấy id và tên thể loại
                foreach ($selectType as $item) {
                    $typeName = $item->type;
                    $typeID = $item->id;
                }

                if($type == $typeName) {

                    $wallpapers = new Wallpapers();
                    $wallpapers->img_name = $fileName;
                    $wallpapers->img_url = 'https://anhtuan-it.000webhostapp.com/upload/image/'.$fileName;
                    $wallpapers->type_id = $typeID;
                    $wallpapers->img_type = $type;
                    $wallpapers->save();

                    Session::put('messageUploadFile','Thêm hình ảnh thành công!');
                    return Redirect::to('/addImageShow');
                }

                } else {
                        Session::put('messageUploadFile','Chưa chọn File!');
                        return Redirect::to('/addImageShow');
                    }
        }

        $data = DB::table('types')->select('*')->get();

        return view('admin.add-image')->with('data', $data);
    }

    // Hàm sửa thông tin hình ảnh và lưu vào mysql
    public function editImageShow($id, Request $req) {
        $this->authLogin();

        $dataView = array();
        $wallpapers = Wallpapers::find($id);
        $dataView['wallpapers'] = $wallpapers;

        if($req->isMethod('post')) {

            $img_name = $wallpapers->img_name;
            $img_url = $req->imageUrl;
            $img_type = $req->imageType;

            $select = DB::table('types')->where('type', '=', $img_type)->select('*')->get();
            foreach ($select as $item) {
                $type = $item->type;
                $typeID = $item->id;
            }
            if($img_type == $type) {
                $wallpapers = new Wallpapers();
                $wallpapers = DB::table('wallpapers')->where('id', $req->id)->update([
                    'img_name' => $img_name,
                    'img_url' => $img_url,
                    'type_id' => $typeID,
                    'img_type' => $img_type
                ]);
                Session::put('messageEditImage','Chỉnh sửa hình ảnh thành công!');
                Return Redirect::to('/dashboard');
            }
        }

        $getData = DB::table('types')->select('*')->get();
        return view('admin.edit-image', $dataView)->with('getData', $getData);
    }

    // Hàm xóa hình ảnh
    public function deleteImage(Request $req) {
        $id = isset($_POST["id"])?$_POST["id"]:0;
        if($id > 0) {
            $wallpapers = Wallpapers::find($id);
            $wallpapers->delete();
            echo "Xóa hình ảnh thành công!";
            exit();
        }
    }

    // Hàm hiển thị trang quản lý Admin
    public function adminShow(){
        $this->authLogin();

        $users = DB::table('users')->select('*')->get();

        return view('admin.admin')->with('users', $users);
    }

    // Hàm sửa thông tin tài khoản admin và lưu vào mysql
    public function editAdminShow($id, Request $req) {
        $this->authLogin();

        $data = array();
        $users = User::find($id);
        $data['users'] = $users;

        if($req->isMethod('post')) {
            $name = $users->name;
            $email = $req->email;
            $password = $req->newPassword;
            $passwordAgain = $req->newPasswordAgain;

            if($password == $passwordAgain) {
                $users = new User();
                $users = DB::table('users')->where('id', $req->id)->update([
                    'name' => $name,
                    'email' => $email,
                    'password' => md5($password)
                ]);

                Session::put('messageEditAdmin','Chỉnh sửa thông tin Admin thành công!');
                Return Redirect::to('/adminShow');
            } else {
                Session::put('messageEditAdmin','Xác nhận mật khẩu không thành công!');
                return view('admin.edit-admin', $data);
            };

        }
        return view('admin.edit-admin', $data);
    }

    // Hàm xóa tài khoản admin
    public function deleteAdmin(Request $req) {
        $id = isset($_POST["id"])?$_POST["id"]:0;
        if($id > 0) {
            $users = User::find($id);
            $users->delete();
            echo "Xóa tài khoản Admin thành công!";
            exit();
        }
    }

    // Hàm thêm tài khoản admin
    public function addAdminAcc(Request $req) {
        $this->authLogin();

        if($req->isMethod('post')) {

            $accName = $req->accName;
            $accEmail = $req->accEmail;
            $accPassword = $req->accPassword;
            $accPasswordAgain = $req->accPasswordAgain;

            if($accPassword == $accPasswordAgain) {
                $users = new User();
                $users->name = $accName;
                $users->email = $accEmail;
                $users->password = md5($accPassword);
                $users->save();

                Session::put('messageAddAdminAcc','Thêm tài khoản Admin thành công!');
                Return Redirect::to('/adminShow');
            } else {
                Session::put('messageAddAcc','Xác nhận mật khẩu không thành công!');
                return view('admin.add-admin');
            }
        }
        return view('admin.add-admin');
    }

    // Hàm thêm thể loại hình ảnh
    public function addTypeImage(Request $req) {
        $type = $req->imageType;
        $select = DB::table('types')->where('type', '=', $type)->select('*')->get();
        // Lấy tên thể loại
        foreach ($select as $item) {
            $typeName = $item->type;
            Session::put('type',$typeName);
        }

        if($req->isMethod('post')) {
            if($req->hasFile('uploadFile')) {
                $fileName = $req->file('uploadFile')->getClientOriginalName();
                $req->file('uploadFile')->move('public/upload/image', $fileName);
                $type_name = Session::get('type');
                // nếu trùng tên thể loại
                if($type == $type_name) {
                    Session::put('messageTypeImageError','Đã có thể loại hình ảnh này!');
                    Return Redirect::to('/addTypeImage');
                } else {
                    $types = new Type();
                    $types->type = $type;
                    $types->img_name = $fileName;
                    $types->img_url = 'https://anhtuan-it.000webhostapp.com/upload/image/'.$fileName;
                    $types->save();
                    Session::put('messageTypeImage','Thêm thể loại hình ảnh thành công!');
                    Return Redirect::to('/addTypeImage');
                }
            } else {
                Session::put('messageUploadFile','Chưa chọn File!');
                return Redirect::to('/addTypeImage');
            }
        }

        $getData = DB::table('types')->select('*')->get();
        return view('admin.add-type-image')->with('select', $getData);
    }

    // Hàm xóa thể loại hình ảnh
    public function deleteType(Request $req) {
        $id = isset($_POST["id"])?$_POST["id"]:0;
        if($id > 0) {
            $type = Type::find($id);
            $type->delete();
            echo "Xóa thể loại hình ảnh thành công!";
            exit();
        }
    }
}
