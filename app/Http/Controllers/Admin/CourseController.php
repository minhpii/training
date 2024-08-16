<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\CourseRequest;
use App\Repositories\Courses\CourseInterface;
use Illuminate\Http\Request;

class CourseController extends Controller
{
    protected $couRepo;
    public function __construct(CourseInterface $couRepo)
    {
        $this->couRepo = $couRepo;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $courses = $this->couRepo->getCoursePerPage(5);
        return view("admin.courses.index", compact("courses"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("admin.courses.create");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CourseRequest $request)
    {
        $this->couRepo->create($request->all());
        return redirect()->route("courses.index")->with("success", "Added course Successfully!");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $course = $this->couRepo->findOrFail($id);
        return view("admin.courses.edit", compact("course"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(CourseRequest $request, string $id)
    {
        $this->couRepo->update($id, $request->all());
        return redirect()->route("courses.index")->with("success", "Updated course Successfully!");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $this->couRepo->delete($id);
        return redirect()->route("courses.index")->with("success","Deleted course Successfully!");
    }
}
