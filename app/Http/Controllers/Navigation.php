<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Course;
use App\Models\Writer;
use Illuminate\Http\Request;

class Navigation extends Controller
{
    public function indexPage()
    {
        $categories = Category::all();
        $courses = Course::all();

        return view('index', compact('categories', 'courses'));
    }

    public function categoryPage($category_name)
    {
        $categories = Category::all();
        $searchedCategoryID = $categories->where('name', $category_name)->first();
        $searchedCategoryID = $searchedCategoryID->id;
        $courses = Course::with('category', 'writer')->where('category_id', $searchedCategoryID)->get();

        return view('category.index', compact('categories', 'courses', 'category_name'));
    }

    public function courseDetail($course_name)
    {
        $categories = Category::all();
        $course = Course::with('writer', 'category')->where('name', $course_name)->first();

        return view('category.detail', compact('categories', 'course'));
    }

    public function writersPage()
    {
        $categories = Category::all();
        $writers = Writer::all();

        return view('writers.index', compact('categories', 'writers'));
    }

    public function writerDetailPage($writer_id)
    {
        $categories = Category::all();
        $courses = Course::with('writer')->where('writer_id', 'LIKE', $writer_id)->get();
        $writer = Writer::findOrFail($writer_id);

        return view('writers.detail', compact('categories', 'courses', 'writer'));
    }

    public function aboutUsPage()
    {
        $categories = Category::all();

        return view('about-us', compact('categories'));
    }

    public function popularPage()
    {
        $categories = Category::all();
        $courses = Course::with('writer')->orderBy('name')->paginate(3);

        return view('popular', compact('categories', 'courses'));
    }
}
