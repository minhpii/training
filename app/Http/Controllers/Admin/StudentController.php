<?php

namespace App\Http\Controllers\Admin;

use App\Enums\TypePhoneEnum;
use App\Http\Controllers\Controller;
use App\Http\Requests\StudentRequest;
use App\Models\User;
use App\Repositories\Departments\DepartmentInterface;
use App\Repositories\Students\StudentInterface;
use Illuminate\Http\Request;

class StudentController extends Controller
{
    protected $stuRepo;
    protected $depRepo;

    public function __construct(
        StudentInterface $stuRepo,
        DepartmentInterface $depRepo
    ) {
        $this->stuRepo = $stuRepo;
        $this->depRepo = $depRepo;
    }
    /**
     * Display a listing of the resource.
     */
    public function index(StudentRequest $request)
    {
        $students = $this->stuRepo->getStudent($request->all());
        $typePhones = TypePhoneEnum::toArray();
        $departments = $this->depRepo->getDepartmentByName();
        $input = $request->all();

        return view("admin.students.index", compact("students", "typePhones", "departments", "input"));
   }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $departments = $this->depRepo->getDepartmentByName();
        return view("admin.students.create", compact("departments"));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StudentRequest $request)
    {
        $this->stuRepo->create($request->all());
        return redirect()->route("students.index")->with("success", "Added student successfully!");
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
        $student = $this->stuRepo->findOrFail($id);
        $user = User::findOrFail($student->user_id);

        return response()->json([
            'name' => $user->name,
            'email' => $user->email,
            'student_code' => $student->student_code,
            'phone' => $student->phone,
            'address' => $student->address,
            'birthday' => $student->birthday,
            'avatar' => $student->avatar,
            'department_id' => $student->department_id,
            'gender' => $student->gender
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StudentRequest $request, string $id)
    {
        try {
            $this->stuRepo->update($id, $request->all());
            session()->flash('success', 'Student updated successfully!');
            return response()->json([
                'redirect_url' => route('students.index')
            ]);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Failed to update student!'], 500);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $this->stuRepo->delete($id);
        return redirect()->route("students.index")->with("success", "Deleted student successfully!");
    }
}
