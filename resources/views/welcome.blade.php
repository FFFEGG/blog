@extends('layouts.app')

@section('content')
    <div class="xl:flex lg:flex xl:mt-10">
        <img class="image xl:h-64 mb-3 xl:mb-0 bg-gray-100 border-4 border-white shadow rounded" src="./img/guitar.jpg" alt="">
        <div class="xl:ml-20 mb-3 xl:mb-0 bg-gray-100 border-white border-4 shadow p-2 px-6 rounded">
            <p class="text-2xl">分享在前</p>
            <div class="text-gray-700">
                <p class="mt-3 ">
                    以下内容仅个人多年学习分享，帮助新同学排雷排坑
                </p>
                <p>
                    如有不对，或者错误的地方，欢迎大神指点和建议
                </p>
                <p>
                    有时间我会加以更正（不一定改）
                </p>
            </div>

            <p class="mt-6 font-bold text-gray-800">
                内容适合新手或者资深初学者
            </p>

        </div>

        <div class="items-center mb-3 xl:mb-0 xl:ml-20 bg-gray-100 border-white border-4 shadow p-2 px-6 rounded">
            <div class="text-2xl">今日练琴打卡</div>
            <div class="mt-4 ">
                <button class="bg-gray-500 text-white p-2 px-5 rounded mr-3 mb-3">和弦 <span>x</span></button>
                <button class="bg-teal-500 text-white p-2 px-5 rounded mr-3 mb-3">节奏型 <span>√</span></button>
                <button class="bg-teal-500 text-white p-2 px-5 rounded mr-3 mb-3">音阶音程 <span>√</span></button>
                <button class="bg-teal-500 text-white p-2 px-5 rounded mr-3 mb-3">爬格子 <span>√</span></button>
                <button class="bg-teal-500 text-white p-2 px-5 rounded mr-3 mb-3">扒谱子 <span>√</span></button>
                <button class="bg-gray-500 text-white p-2 px-5 rounded mr-3 mb-3">即兴演奏 <span>x</span></button>
            </div>

            <div class="mt-6 font-bold text-gray-800">
                连续打卡39天咯，请继续加油吧
            </div>

        </div>
    </div>

    <div class="mt-10">
        <div class="text-2xl text-gray-700 ">课程列表</div>
        <a href="/guitar/乐理类">
            <div class="mt-3 bg-gray-100 border-white border-2 shadow p-6">
                <p class="text-xl text-orange-500 font-bold">乐理类</p>
                <p class="text-gray-700 mt-3">调性乐理的系统学习。包含五线谱，和弦，音阶等一系列乐理内容。</p>
            </div>
        </a>


        <div class="mt-3 bg-gray-100 border-white border-2 shadow  p-6">
            <p class="text-xl text-orange-500 font-bold">吉他编配类</p>
            <p class="text-gray-700 mt-3">如何在吉他上编配出更好听的和弦等一系列内容，尤其是对于吉他上的和弦编配会特别作为重点学习讲解。</p>
        </div>

        <div class="mt-3 bg-gray-100 border-white border-2 shadow p-6">
            <p class="text-xl text-orange-500 font-bold">改编类</p>
            <p class="text-gray-700 mt-3">包含《一生所爱》《Unravel》改编分析等作品分析。通过《一生所爱》的分析改编分析学习如何变调，通过《Unravel》的改编学习如何巧妙编配泛音。通过对《Revolution》的分析，一次性分析讲透如何改编打板。</p>
        </div>

        <div class="mt-3 bg-gray-100 border-white border-2 shadow p-6">
            <p class="text-xl text-orange-500 font-bold">创作类</p>
            <p class="text-gray-700 mt-3">基于《Revolution》的创作分析，教你如何创作这个类型的作品，如何创作打板等创作学习。</p>
        </div>

        <div class="mt-3 bg-gray-100 border-white border-2 shadow p-6">
            <p class="text-xl text-orange-500 font-bold">演奏类</p>
            <p class="text-gray-700 mt-3">Fight核心演奏技法教学，Revolution核心演奏技法教学，吉他各个阶段基本功（每天必练，不管是零基础还是世界大师都要每天练习的必须基本功），吉他各类和弦的不同把位学习（扩展你的和弦让你的和弦更好听）等等。注意，Fight以及Revolution演奏教学不是全曲，而是其中最核心最抓人心最难部分的演奏讲解。Fight讲解为其中的一段最具特点的指法教学，因为这个会了其他基本都可以看谱子弹奏了，这才是Fight的核心。Revolution则是曲子最开始的一段打板和点弦同步进行的演奏部分的教学。</p>
        </div>
    </div>
@endsection
