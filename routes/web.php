<?php

use App\Http\Controllers\Admin\CourseController;
use App\Http\Controllers\Admin\DepartmentController;
use App\Http\Controllers\Admin\StudentController;
use App\Http\Controllers\ChatController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ImportController;
use App\Http\Controllers\LanguageController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::middleware(['auth'])->group(function () {

    Route::get('/dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::resource('departments', DepartmentController::class);
    Route::resource('courses', CourseController::class);
    Route::resource('students', StudentController::class);
    Route::post('update-score/{id}', [ProfileController::class, 'updateScore']);

    Route::get('profile/{id}', [ProfileController::class, 'index'])->name('profile');
    Route::get('register-course', [ProfileController::class, 'showRegisterCourse'])->name('register.course');
    Route::post('register-course/{id}', [ProfileController::class, 'registerCourse']);
    Route::post('register-list-course', [ProfileController::class, 'registerListCourse']);
    Route::post('unregister-course/{id}', [ProfileController::class, 'unRegisterCourse']);

    Route::post('import-score', [ImportController::class, 'importScore']);

    Route::get('language/{language}', [LanguageController::class, 'index'])->name('language');

    Route::get('chat', [ChatController::class, 'index'])->name('chat.index');
    Route::post('chat', [ChatController::class, 'send'])->name('chat.send');
});
