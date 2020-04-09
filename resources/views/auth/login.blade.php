@extends('layouts.app')

@section('content')
    <div class="xl:py-32 xl:flex xl:-ml-40">
        <div class="xl:w-6/12">
            <div class="flex flex-wrap justify-center">
                <div class="w-full max-w-sm">
                    <div class="flex flex-col break-words bg-white border border-2 rounded shadow-md">

                        <div class="font-semibold bg-gray-200 text-gray-700 py-3 px-6 mb-0">
                            {{ __('Login') }}
                        </div>

                        <form class="w-full p-6" method="POST" action="{{ route('login') }}">
                            @csrf

                            <div class="flex flex-wrap mb-6">
                                <label for="email" class="block text-gray-700 text-sm font-bold mb-2">
                                    {{ __('E-Mail Address') }}:
                                </label>

                                <input id="email" type="email" class="form-input w-full @error('email') border-red-500 @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>

                                @error('email')
                                <p class="text-red-500 text-xs italic mt-4">
                                    {{ $message }}
                                </p>
                                @enderror
                            </div>

                            <div class="flex flex-wrap mb-6">
                                <label for="password" class="block text-gray-700 text-sm font-bold mb-2">
                                    {{ __('Password') }}:
                                </label>

                                <input id="password" type="password" class="form-input w-full @error('password') border-red-500 @enderror" name="password" required>

                                @error('password')
                                <p class="text-red-500 text-xs italic mt-4">
                                    {{ $message }}
                                </p>
                                @enderror
                            </div>

                            <div class="flex mb-6">
                                <label class="inline-flex items-center text-sm text-gray-700" for="remember">
                                    <input type="checkbox" name="remember" id="remember" class="form-checkbox" {{ old('remember') ? 'checked' : '' }}>
                                    <span class="ml-2">{{ __('Remember Me') }}</span>
                                </label>
                            </div>

                            <div class="flex flex-wrap items-center">
                                <button type="submit" class="bg-teal-500 hover:bg-teal-700 text-gray-100 font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
                                    {{ __('Login') }}
                                </button>

                                @if (Route::has('password.request'))
                                    <a class="text-sm text-blue-500 hover:text-blue-700 whitespace-no-wrap no-underline ml-auto" href="{{ route('password.request') }}">
                                        {{ __('Forgot Your Password?') }}
                                    </a>
                                @endif

                                @if (Route::has('register'))
                                    <p class="w-full text-xs text-center text-gray-700 mt-8 -mb-4">
                                        {{ __("Don't have an account?") }}
                                        <a class="text-blue-500 hover:text-blue-700 no-underline" href="{{ route('register') }}">
                                            {{ __('Register') }}
                                        </a>
                                    </p>
                                @endif
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
        <div class="xl:w-6/12 mt-6 xl:mt-0 xl:p-0 p-3">
            <p class="font-bold text-gray-700 text-xl">每日鸡汤</p>
            <p class="py-10 text-gray-700">
                长安觉得她是隔了相当的距离看这太阳里的庭院，从高楼上望下来，明晰，亲切，然而没有能力干涉，天井，树，曳着萧条的影子的两个人，没有话不多的一点回忆，将来是要装在水晶瓶里双手捧着看的她的最初也是最后的爱
            </p>
            <p class="text-gray-700">啾咪~</p>
        </div>
    </div>

@endsection
