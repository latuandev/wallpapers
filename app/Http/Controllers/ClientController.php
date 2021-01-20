<?php

namespace App\Http\Controllers;

use App\Type;
use App\Wallpapers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Session;
session_start();

class ClientController extends Controller
{
    // Hàm hiển thị trang chủ
    public function index(Request $request) {
        $data = DB::table('wallpapers')->select('*')->paginate(16);
        if($request->isMethod('post')) {
            $search = $request->search;
            if($search) {
                $data = DB::table('wallpapers')->where('img_type', 'like', '%'.$search.'%')->paginate(16);
                return view('client.home')->with('data', $data);
            } else {
                Session::put('messageSearch','Chưa nhập kết quả tìm kiếm!');
            }
        }
        return view('client.home')->with('data', $data);
    }

}
