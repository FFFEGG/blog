<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class SeedCategoriesData extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        $categories = [
            [
                'name'        => '吉他分享',
                'description' => '吉他分享',
            ],
            [
                'name'        => '日语学习',
                'description' => '日语学习',
            ],
            [
                'name'        => '必追新番',
                'description' => '必追新番',
            ],
            [
                'name'        => '我的switch',
                'description' => '我的switch',
            ],
            [
                'name'        => '心得分享',
                'description' => '心得分享',
            ],
            [
                'name'        => '黑科技',
                'description' => '黑科技',
            ],
            [
                'name'        => '博客',
                'description' => '博客',
            ],
        ];

        DB::table('categories')->insert($categories);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
