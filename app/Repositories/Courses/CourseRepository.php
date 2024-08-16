<?php

namespace App\Repositories\Courses;

use App\Models\Course;
use App\Repositories\BaseRepository;

class CourseRepository extends BaseRepository implements CourseInterface
{
  public function getModel()
  {
    return Course::class;
  }
  public function getCoursePerPage($perPage)
  {
    return $this->model->paginate($perPage);
  }

  public function getCourseByName()
  {
    return $this->model->pluck("name", "id");
  }
}