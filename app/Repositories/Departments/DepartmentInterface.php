<?php

namespace App\Repositories\Departments;

use App\Repositories\BaseInterface;

interface DepartmentInterface extends BaseInterface
{
  public function getDepartmentPerpage($perPage);
  public function getDepartmentByName();
}