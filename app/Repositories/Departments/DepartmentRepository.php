<?php

namespace App\Repositories\Departments;

use App\Models\Department;
use App\Repositories\BaseRepository;

class DepartmentRepository extends BaseRepository implements DepartmentInterface
{
  public function getModel()
  {
    return Department::class;
  }

  public function getDepartmentPerpage($perPage)
  {
    return $this->model->paginate($perPage);
  }

  public function getDepartmentByName()
  {
    return $this->model->pluck("name", "id");
  }
}