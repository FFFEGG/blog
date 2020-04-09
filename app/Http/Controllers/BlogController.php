<?php


namespace App\Http\Controllers;


use App\Blog;
use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BlogController extends Controller
{
    public function create(Request $request,Blog $blog)
    {
        $cates = Category::all();
        if (Auth::user()->user_state != 1) {
            $cates = [[
                'name' => '博客',
                'description' => '博客',
                'id' => 7
            ]];
        }

        if ($request->isMethod('post')) {
            $blog->fill($request->all());
            $blog->user_id = Auth::id();
            $blog->save();
            $cate = Category::find($request->cate_id);
            $cate->increment('post_count');
            return redirect()->route('topics.show', $blog->id)->with('success', '帖子创建成功！');
        }


        return view('blog.form', compact('cates'));
    }


    public function editor(Request $request,Blog $blog)
    {
        $cates = Category::all();
        if (Auth::user()->user_state != 1) {
            $cates = [[
                'name' => '博客',
                'description' => '博客',
                'id' => 7
            ]];
        }


        if ($request->isMethod('post')) {
            $blog->update($request->all());

            return redirect()->route('topics.show', $request['id'])->with('success', '修改成功！');
        }


        return view('blog.edit', compact('cates','blog'));
    }


    public function topics(Blog $blog)
    {

        return view('blog.topics', compact('blog'));
    }


    public function guitar(Request $request)
    {
        $tag = $request->tag;

        $list = Blog::where([
            'tag' => $tag,
            'cate_id' => 1
        ])->orderBy('created_at', 'desc')->paginate(15);

        return view('blog.guitar', compact('list'));
    }
}
