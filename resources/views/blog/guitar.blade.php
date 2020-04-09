@extends('layouts.app')

@section('content')

    <div class="xl:flex xl:mt-6">
        <div class="xl:w-8/12 rounded p-2 shadow border">
            @foreach($list as $v)
            <a href="/topics/{{$v->id}}" class="flex items-center border-b py-3 justify-between">
                <div class="flex items-center">
                    <img class="rounded-full w-8 ml-2" src="{{$v->user->gravatar()}}" alt="">
                    <p class="ml-4 text-gray-700 overflow-hidden ">{{ $v->title }}</p>
                </div>
                <div class="text-gray-700 mr-3 text-sm">
                    时间：{{$v->created_at->diffForHumans()}}
                </div>
            </a>
            @endforeach
            {{ $list->links() }}
        </div>
        <div class="w-4/12 ml-3">
            <button>发布文章</button>
        </div>

    </div>
@endsection

