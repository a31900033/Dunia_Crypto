<?php

use App\Models\Post;
use App\Models\About;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\ContactController;
use App\Models\Contact;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('index', [
        'posts' => Post::latest()->take(4)->get()
    ]);
});

Route::get('view_post/{id}', function ($id) {
    return view('view_post', [
        'post' => Post::find($id)
    ]);
});

Route::get('/older_post', function () {
    return view('older', [
        'posts' => Post::latest()->paginate(6)
    ]);
});

Route::get('/dashboard', function () {
    $total_email = Contact::all()->count();
    $total_post  = Post::all()->count();
    return view('dashboard.index', [
        'total_email' => $total_email,
        'total_post' => $total_post
    ]);
})->middleware('auth');

Route::get('/about', function () {
    return view('about', [
        'about_me' => About::find(1)
    ]);
});

Route::get('/contact-me', function () {
    return view('contact');
});

// User Controller
Route::get('/register', [UserController::class, 'Register']);
Route::get('/login', [UserController::class, 'Login'])->name('login');
Route::post('/register', [UserController::class, 'Store_regist']);
Route::post('/auth', [UserController::class, 'Auth']);
Route::post('/logout', [UserController::class, 'Logout']);

// Contact Controller
Route::resource('/contact', ContactController::class);

// About Controller
Route::resource('/about_admin', AboutController::class)->middleware('auth');

// Post Controller
Route::resource('/post', PostController::class);
