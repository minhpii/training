<?php

namespace App\Repositories;

interface BaseInterface
{
  public function getAll();

  public function findOrFail($id);

  public function create($attributes);

  public function update($id, $attributes);

  public function delete($id);
}