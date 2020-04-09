@extends('layouts.app')
@section('styles')
    <link rel="stylesheet" type="text/css" href="{{ asset('css/simditor.css') }}">
@stop
@section('content')
    @if (session('success'))
        <div class="w-full border rounded bg-green-500 text-gray-800 p-3">
            {{ session('success') }}
        </div>
    @endif
    <div class="container border p-3 mt-6 rounded-lg border-2">
        <div class="text-gray-700 text-2xl text-center border-b pb-2">{{ $blog->title }}</div>
        <div class="text-sm text-center text-gray-600 py-4">作者：{{ $blog->user->name }} 时间：{{ $blog->created_at->diffForHumans()  }}</div>

        <div class="my-10">
            <img src="{{ $blog->img }}" alt="" class="w-3/6 rounded mx-auto">
        </div>

        <div class="p-6  markdown-body text-gray-700">
            {!! $blog->body !!}
        </div>
        @if(Auth::user() && Auth::user()->id == $blog->user_id)
        <a href="/createblogs/{{ $blog->id }}"><button class="bg-teal-500 text-white py-2 px-4 m-6 rounded">编辑</button></a>
        @endif


        </div>
    </div>
@endsection

