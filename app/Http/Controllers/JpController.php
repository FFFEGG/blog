<?php


namespace App\Http\Controllers;


class JpController extends Controller
{
    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     * 首页
     */
    public function index()
    {

        return view('jp.index');
    }
}
