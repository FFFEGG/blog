<?php


namespace App\Http\Controllers;


use App\Blog;
use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Handlers\ImageUploadHandler;

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

    public function deleteblog(Request $request,Blog $blog)
    {
        if ($blog->user->id != Auth::user()->id) {
            return redirect()->route('topics.guitar', '乐理类')->with('success', '删除失败！');
        }
        $blog->delete();
        return redirect()->route('topics.guitar', '乐理类')->with('success', '删除成功！');
    }

    public function uploadImage(Request $request, ImageUploadHandler $uploader)
    {
        // 初始化返回数据，默认是失败的
        $data = [
            'success'   => false,
            'msg'       => '上传失败!',
            'file_path' => ''
        ];
        // 判断是否有上传文件，并赋值给 $file
        if ($file = $request->upload_file) {
            // 保存图片到本地
            $result = $uploader->save($file, 'topics', \Auth::id(), 1024);
            // 图片保存成功的话
            if ($result) {
                $data['file_path'] = $result['path'];
                $data['msg']       = "上传成功!";
                $data['success']   = true;
            }
        }
        return $data;
    }
}
