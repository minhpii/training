<?php

namespace App\Repositories\Courses;

use App\Repositories\BaseInterface;

interface CourseInterface extends BaseInterface
{
  public function getCoursePerPage($perPage);
  public function getCourseByName();
}