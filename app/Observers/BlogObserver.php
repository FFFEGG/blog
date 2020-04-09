<?php
namespace App\Observers;
use App\Blog;
use Illuminate\Support\Str;

class BlogObserver
{
    public function saving(Blog $blog)
    {
        $blog->body = clean($blog->body, 'user_topic_body');
        $blog->excerpt = $this->make_excerpt($blog->body);
    }

    public function make_excerpt($value, $length = 200)
    {
        $excerpt = trim(preg_replace('/\r\n|\r|\n+/', ' ', strip_tags($value)));
        return Str::limit($excerpt, $length);
    }
}
