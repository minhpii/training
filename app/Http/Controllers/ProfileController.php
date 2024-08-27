<?php

namespace App\Http\Controllers;

use App\Http\Requests\ScoreByCourseRequest;
use App\Repositories\Courses\CourseInterface;
use App\Repositories\Students\StudentInterface;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ProfileController extends Controller
{
    protected $couRepo;
    protected $stuRepo;
    public function __construct(
        CourseInterface $couRepo,
        StudentInterface $stuRepo
    ) {
        $this->couRepo = $couRepo;
        $this->stuRepo = $stuRepo;
    }
    public function index($id)
    {
        $student = $this->stuRepo->findOrFail($id);
        $myCourses = $student->courses()->get();
        $courses = $this->couRepo->getAll();
        return view("student.index", compact('student', 'myCourses' ,'courses'));
    }

    public function showRegisterCourse()
    {
        $courses = $this->couRepo->getCoursePerPage(10);
        $student = $this->stuRepo->findOrFail(Auth::user()->student->id);
        return view("student.register-course", compact("courses", "student"));
    }

    public function registerCourse($id)
    {
        $this->stuRepo->registerCourse($id);
        return redirect()->route("register.course")->with("success", "Register course successfully!");
    }

    public function registerListCourse(Request $request)
    {
        $this->stuRepo->registerCourse($request->input("listCourseCheckbox"));
        session()->flash("success", "Register course successfully!");
        return response()->json([
            'redirect_url' => route('register.course'),
        ]);
    }

    public function unRegisterCourse($id)
    {
        $this->stuRepo->unRegisterCourse($id);
        return redirect()->route("register.course")->with("success", "Unregister course successfully!");
    }

    public function updateScore(ScoreByCourseRequest $request, $id)
    {
        $this->stuRepo->updateScore($id, $request->all());
        return redirect()->route("profile", $id)->with("success", "Update score by course successfully!");
    }
}
