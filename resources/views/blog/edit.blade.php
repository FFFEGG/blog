@extends('layouts.app')
@section('styles')
    <link rel="stylesheet" type="text/css" href="{{ asset('css/simditor.css') }}">
@stop
@section('content')
        <div class="container mt-6">
            <div class="w-full border rounded p-3 shadow">
                <div class="text-2xl border-b pb-3 flex items-center">
                    <svg t="1586313243234" class="icon" viewBox="0 0 1024 1024" version="1.1"
                         xmlns="http://www.w3.org/2000/svg" p-id="2171" width="32" height="32">
                        <path
                            d="M456.914 461.678l10.183-10.182L568.07 552.47l-10.183 10.182zM620.6 442.2c-3.7 0-7.4-1.4-10.2-4.2-5.6-5.6-5.6-14.8 0-20.4l173.1-173.1c5.6-5.6 14.8-5.6 20.4 0s5.6 14.8 0 20.4L630.8 438c-2.8 2.8-6.5 4.2-10.2 4.2z"
                            fill="#8a8a8a" p-id="2172"></path>
                        <path d="M584.6 463.8m-14.4 0a14.4 14.4 0 1 0 28.8 0 14.4 14.4 0 1 0-28.8 0Z" fill="#8a8a8a"
                              p-id="2173"></path>
                        <path
                            d="M800.6 918.1H223.7c-63.6 0-115.4-51.8-115.4-115.4V225.9c0-63.6 51.8-115.4 115.4-115.4H541c15.9 0 28.8 12.9 28.8 28.8s-12.9 28.8-28.8 28.8H223.7c-31.8 0-57.7 25.9-57.7 57.7v576.9c0 31.8 25.9 57.7 57.7 57.7h576.9c31.8 0 57.7-25.9 57.7-57.7V435.2c0-15.9 12.9-28.8 28.8-28.8s28.8 12.9 28.8 28.8v367.5c0.1 63.6-51.7 115.4-115.3 115.4z"
                            fill="#8a8a8a" p-id="2174"></path>
                        <path
                            d="M373.1 667.8c-9.5 0-18.8-3.9-25.5-11.3-9.8-10.7-12-26-5.6-38.9L432.6 434 785 81.6l153 153-353.3 353.2-198.8 77.5c-4.2 1.7-8.5 2.5-12.8 2.5z m-8.2-56.2zM480.1 468l-60.3 122.2 132.6-51.7 304-304-71.4-71.4L480.1 468z"
                            fill="#8a8a8a" p-id="2175"></path>
                        <path d="M346.6 658.5m-28.8 0a28.8 28.8 0 1 0 57.6 0 28.8 28.8 0 1 0-57.6 0Z" fill="#8a8a8a"
                              p-id="2176"></path>
                    </svg>
                    @if ($blog->id)
                        <p class="ml-3 text-gray-700">编辑话题</p>
                    @else
                        <p class="ml-3 text-gray-700">新建话题</p>
                    @endif
                </div>
                <form action="" method="post">
                    @csrf
                    <input type="hidden" name="id" value="{{ $blog->id }}">
                    <input value="{{ $blog->title }}" name="title" required class="border rounded p-2 mt-3 w-full" placeholder="请填写标题" type="text">
                    <input value="{{ $blog->img }}" name="img" required class="border rounded p-2 mt-3 w-full" placeholder="填写图片地址" type="text">
                    <input value="{{ $blog->tag }} "name="tag" required class="border rounded p-2 mt-3 w-full" placeholder="标签" type="text">
                    <select name="cate_id" id="" class="border rounded p-2 my-3 w-full">
                        <option value="text-gray-700">请选择分类</option>
                        @foreach($cates as $v)
                            <option <?php if($v['id'] == $blog['cate_id']){echo 'selected';} ?> class="py-2 text-gray-700" value="{{$v['id']}}">{{$v['name']}}</option>
                        @endforeach
                    </select>

                    <textarea name="body" required class="border rounded p-2 mt-3 w-full" id="editor">{{$blog->body}}</textarea>

                    <button class="bg-teal-500 text-white font-bold px-4 py-2 mt-3 rounded">确认发布</button>
                </form>

            </div>
        </div>
@endsection
@section('scripts')
    <script type="text/javascript" src="{{ asset('js/jquery.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/module.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/hotkeys.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/uploader.js') }}"></script>
    <script type="text/javascript" src="{{ asset('js/simditor.js') }}"></script>

    <script>
      $(document).ready(function () {
        var editor = new Simditor({
          textarea: $('#editor'),
        });
      });
    </script>
@stop
