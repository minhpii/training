<?php

namespace App\Repositories\Students;

use App\Repositories\BaseInterface;

interface StudentInterface extends BaseInterface
{
  public function getStudent($param);

  public function create($attributes);

  public function update($id, $attributes);

  public function registerCourse($idCourse);

  public function unRegisterCourse($idCourse);

  public function updateAndNotificationMedium();

  public function updateScore($idStudent, $scoreCourse);
}