<?php


namespace App\Http\Controllers;


class ComicController extends Controller
{
    public function index()
    {
        return view('comic.index');
    }
}
