<?php

use App\PracticeList;
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

Route::get('/', function () {
    $cate = PracticeList::where('type',1)->get();

    $cate = $cate->map(function ($v){
        return [
            'name' => $v['name'],
            'is_practice' => false
        ];
    });

    return view('welcome',compact('cate'));
});
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::any('/createblogs', 'BlogController@create')->name('createblogs');
Route::any('/createblogs/{blog}', 'BlogController@editor');
Route::get('/topics/{blog}', 'BlogController@topics')->name('topics.show');
Route::get('/guitar/{tag}', 'BlogController@guitar')->name('topics.guitar');
Route::get('/learnjp', 'JpController@index');

