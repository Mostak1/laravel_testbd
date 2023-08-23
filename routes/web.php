<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\AnswerController;
use App\Http\Controllers\BoardController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DetailController;
use App\Http\Controllers\DistrictController;
use App\Http\Controllers\EnrollController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\InstituteController;
use App\Http\Controllers\LeaderboardController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\QuestionController;
use App\Http\Controllers\QuizController;
use App\Http\Controllers\QuizsetController;
use App\Http\Controllers\SslCommerzPaymentController;
use App\Http\Controllers\SubcategoryController;
use App\Http\Controllers\ThanaController;
use App\Http\Controllers\TopicController;
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


Route::get('/', [HomeController::class, 'index']);
Route::get('skill', [HomeController::class, 'skill']);

Route::get('/dashboard', [HomeController::class, 'admin'])->middleware(['auth', 'verified', 'checkRole:2'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});
Route::middleware(['auth', 'verified', 'checkRole:2'])->group(function () {
    Route::get('user', [AdminController::class, 'user']);
    Route::get('user/edit/{id}', [AdminController::class, 'user_edit']);
    Route::put('user/update/{user}', [AdminController::class, 'user_update'])->name('user.update');
    Route::delete('user/destroy/{user}', [AdminController::class, 'destroy'])->name('user.destroy');
    Route::post('user/restore/{id}', [AdminController::class, 'restore'])->name('user.restore');

    Route::resources([
        'board' => BoardController::class,
        'district' => DistrictController::class,
        'thana' => ThanaController::class,
        'category' => CategoryController::class,
        'subcategory' => SubcategoryController::class,
        'topic' => TopicController::class,
        'quiz' => QuizController::class,
        'quizset' => QuizsetController::class,
        'detail' => DetailController::class,
        'enroll' => EnrollController::class,
        'institute' => InstituteController::class,
        'question' => QuestionController::class,
    ]);
    Route::post('board/restore/{id}', [BoardController::class, 'restore'])->name('board.restore');
    Route::post('district/restore/{id}', [DistrictController::class, 'restore'])->name('district.restore');
    Route::post('thana/restore/{id}', [ThanaController::class, 'restore'])->name('thana.restore');
    Route::post('question/restore/{id}', [QuestionController::class, 'restore'])->name('question.restore');
    
});
// question related
Route::get('question/user/create',[QuestionController::class, 'ucreate']);
// district in json according to board id
Route::post('dist/{id}',[DistrictController::class,'distJson']);
Route::post('thana/{id}',[ThanaController::class,'thanaJson']);
Route::post('ins/{id}',[InstituteController::class,'insJson']);
// enrollments
// Route::get('uenroll/{id}', [EnrollController::class, "uenroll"]);


// topic_detail collect using topic id
Route::post('topic_detail', [DetailController::class, "topic_detail"]);
Route::get('topic_detail', [DetailController::class, "topic_detail"]);

// QuizController all classes
Route::get('quiz/qz/qshow', [QuizController::class, "qshow"]);
Route::post('dynamicquiz', [QuizController::class, "dynamicquiz"]);
Route::get('playquiz', [QuizController::class, "qskill"]);
Route::get('playquiz_ac', [QuizController::class, "qacademic"]);
Route::get('playquiz_com', [QuizController::class, "qcompetitive"]);
Route::get('playquiz/cat/{id}', [QuizController::class, "catquiz"]);
Route::get('playquiz/subcat/{id}', [QuizController::class, "subcatquiz"]);
Route::get('playquiz/topic/{id}', [QuizController::class, "topicquiz"]);
Route::get('/showquiz', [QuizController::class, "dynamicquiz"]); 
Route::get('playquiz/qimage', [QuizController::class, "qimage"]);
// subcategory
Route::post('subcats/{cid}', [SubcategoryController::class, 'subcats']);
// for topics as subcats
Route::post('topics/{tid}', [TopicController::class, 'topics']);

// Answer controller
Route::post('/result', [AnswerController::class, "result"]);
Route::post('/storeanswer', [AnswerController::class, "storeanswer"])->name('storeanswer');
Route::post('/resultview', [AnswerController::class, "viewanswer"])->name('viewanswer');

// leaderboard 
Route::get('/leaderboard/index', [LeaderboardController::class, "index"]);
Route::get('/leaderboard/user', [LeaderboardController::class, "indexuser"]);
Route::get('/leaderboard/{id}', [LeaderboardController::class, "show"]);
Route::get('leaderboard', [LeaderboardController::class, "index"])->name('leaderboard');


// SSLCOMMERZ Start
Route::get('uenroll/{id}', [SslCommerzPaymentController::class, 'exampleEasyCheckout']);
Route::get('/example2', [SslCommerzPaymentController::class, 'exampleHostedCheckout']);

Route::post('/pay', [SslCommerzPaymentController::class, 'index']);
Route::post('/pay-via-ajax', [SslCommerzPaymentController::class, 'payViaAjax']);

Route::post('/success', [SslCommerzPaymentController::class, 'success']);
Route::post('/fail', [SslCommerzPaymentController::class, 'fail']);
Route::post('/cancel', [SslCommerzPaymentController::class, 'cancel']);

Route::post('/ipn', [SslCommerzPaymentController::class, 'ipn']);
//SSLCOMMERZ END
require __DIR__ . '/auth.php';
