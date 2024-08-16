<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\DepartmentRequest;
use App\Repositories\Departments\DepartmentInterface;
use Illuminate\Http\Request;

class DepartmentController extends Controller
{
    protected $depRepo;

    public function __construct(DepartmentInterface $depRepo)
    {
        $this->depRepo = $depRepo;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $departments = $this->depRepo->getDepartmentPerpage(5);
        return view("admin.departments.index", compact("departments"));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("admin.departments.create");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(DepartmentRequest $request)
    {
        $this->depRepo->create($request->all());
        return redirect()->route("departments.index")->with("success", "Added department successfully!");
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
        $department = $this->depRepo->findOrFail($id);
        return view("admin.departments.edit", compact("department"));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(DepartmentRequest $request, string $id)
    {
        $this->depRepo->update($id, $request->all());
        return redirect()->route("departments.index")->with("success", "Updated department successfully!");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $this->depRepo->delete($id);
        return redirect()->route("departments.index")->with("success", "Deleted department successfully!");
    }
}
