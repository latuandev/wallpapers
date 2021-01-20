<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Back-end session

    Route::post('/admin-dashboard', 'AdminController@dashboard'); // Route đăng nhập
    Route::get('/admin', 'AdminController@index'); // Route hiển thị trang đăng nhập
    Route::get('/dashboard','AdminController@dashboardShow'); // Route hiển thị trang dashboard
    Route::get('/logout','AdminController@logout'); // Route đăng xuất

    // Route upload hình ảnh
    Route::get('/addImageShow', 'AdminController@addImageShow');
    Route::post('/addImageShow', 'AdminController@addImageShow');

    // Route chỉnh sửa hình ảnh
    Route::get('/editImageShow/{id}', 'AdminController@editImageShow');
    Route::post('/editImageShow/{id}', 'AdminController@editImageShow');

    // Route xoá hình ảnh
    Route::post('/deleteImage', 'AdminController@deleteImage');

    // Route hiển thị trang quản lý admin
    Route::get('/adminShow', 'AdminController@adminShow');

    // Route chỉnh sửa thông tin Admin
    Route::get('/editAdminShow/{id}', 'AdminController@editAdminShow');
    Route::post('/editAdminShow/{id}', 'AdminController@editAdminShow');

    // Route xoá tài khoản admin
    Route::post('/deleteAdmin', 'AdminController@deleteAdmin');

    // Route thêm tài khoản admin
    Route::get('/addAdminAcc', 'AdminController@addAdminAcc');
    Route::post('/addAdminAcc', 'AdminController@addAdminAcc');

    // Route thêm thể loại hình ảnh
    Route::get('/addTypeImage', 'AdminController@addTypeImage');
    Route::post('/addTypeImage', 'AdminController@addTypeImage');

    // Route xoá thể loại hình ảnh
    Route::post('/deleteType', 'AdminController@deleteType');

// Front-end session

    // Route trang chủ
    Route::get('/', 'ClientController@index');
    Route::post('/', 'ClientController@index');
