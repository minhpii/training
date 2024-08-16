<?php

namespace App\Helpers;

use Illuminate\Support\Facades\Hash;

function hasPassword($password)
{
  return Hash::make($password);
}

function saveAvatar($avatar)
{
  $filename = time() . '.' . $avatar->getClientOriginalName();
  $avatar->storeAs('avatars', $filename, 'public');
  $imagePath = $filename;

  return $imagePath;
}