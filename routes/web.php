<?php

use App\Http\Controllers\Navigation;
use Illuminate\Support\Facades\Route;

Route::get('/', [Navigation::class, 'indexPage'])->name('indexPage');
Route::get('/category/{category_name}', [Navigation::class, 'categoryPage'])->name('categoryPage');
Route::get('/course/{course_name}', [Navigation::class, 'courseDetail'])->name('courseDetail');
Route::get('/writers', [Navigation::class, 'writersPage'])->name('writerPage');
Route::get('/writer/{writer_id}', [Navigation::class, 'writerDetailPage'])->name('writerDetailPage');
Route::get('/about-us', [Navigation::class, 'aboutUsPage'])->name('aboutUsPage');
Route::get('/popular', [Navigation::class, 'popularPage'])->name('popularPage');

