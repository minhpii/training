<?php

namespace App\Repositories\Students;

use App\Jobs\NewStudentJob;
use App\Jobs\NotificationMediumJob;
use App\Models\Student;
use App\Models\User;
use App\Repositories\BaseRepository;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

use function App\Helpers\hasPassword;
use function App\Helpers\saveAvatar;

class StudentRepository extends BaseRepository implements StudentInterface
{
  public function getModel()
  {
    return Student::class;
  }

  public function getStudent($param)
  {
    $students = $this->model::with(['department:id,name', 'courses', 'user:id,name,email'])
      ->withCount("courses");

    if (isset($param['from_age']) && $param['from_age'] >= 0) {
      $age = Carbon::now()->subYears($param['from_age'])->toDateString();
      $students = $students->where('birthday', "<=", $age);
    }

    if (isset($param['to_age']) && $param['to_age'] >= 0) {
      $age = Carbon::now()->subYears($param['to_age'])->toDateString();
      $students = $students->where('birthday', ">=", $age);
    }

    if (isset($param['from_score']) || isset($param["to_score"])) {
      $students = $students->whereHas('courses', function (Builder $query) use ($param) {
        $query->selectRaw('student_id, AVG(score) as mediumscore')
          ->groupBy('student_id');

        if (isset($param['from_score'])) {
          $query->having('mediumscore', '>=', $param['from_score']);
        }

        if (isset($param['to_score'])) {
          $query->having('mediumscore', '<=', $param['to_score']);
        }
      });
    }

    if (isset($param['type_phone'])) {
      $students->where(function ($query) use ($param) {
        foreach ($param['type_phone'] as $type) {
          if ($type != null) {
            $pattern = match ($type) {
              'viettel' => '^(03|09)[0-9]{8}$',
              'mobie' => '^(02|08)[0-9]{8}$',
              default => '^(07)[0-9]{8}$',
            };
            $query->orWhere('phone', 'regexp', $pattern);
          }
        }
      });
    }

    // if (isset($param['type_phone'])) {
    //   $patterns = array_map(function ($type) {
    //     return match ($type) {
    //       'viettel' => '^(03|09)[0-9]{8}$',
    //       'mobie' => '^(02|08)[0-9]{8}$',
    //       default => '^(07)[0-9]{8}$',
    //     };
    //   }, $param['type_phone']);

    //   $students->where('phone', 'regexp', implode('|', $patterns));
    // }


    if (isset($param['status'])) {
      $students->where(function ($query) use ($param) {
        foreach ($param['status'] as $sta) {
          if ($sta != null) {
            $query = $query->orWhere('status', $sta);
          }
        }
      });
    }

    // if (isset($param['status'])) {
    //   $students = $students->whereIn('phone', $param['status']);
    // }

    
    $perPage = isset($param['record']) ? $param['record'] : 10;

    return $students->paginate($perPage);
  }

  public function create($attributes)
  {
    DB::beginTransaction();
    try {

      $detail = [
        'email' => $attributes['email'],
        'name' => $attributes['name'],
        'password' => $attributes['password'],
      ];

      $attributes['password'] = hasPassword($attributes['password']);
      $user = User::create($attributes);

      $imagePath = null;
      if (isset($attributes['avatar'])) {
        $imagePath = saveAvatar($attributes['avatar']);
      }

      $attributes['user_id'] = $user->id;
      $attributes['avatar'] = $imagePath;

      $student = $this->model->create($attributes);

      dispatch(new NewStudentJob($detail));

      DB::commit();
      return $student;

    } catch (\Exception $e) {
      DB::rollBack();
      throw $e;
    }
  }

  public function update($id, $attributes)
  {
    $student = $this->model->findOrFail($id);

    DB::beginTransaction();
    try {
      $user = $student->user;
      $user->update($attributes);

      $imagePath = $student->avatar;

      if (isset($attributes['avatar'])) {
        if ($student->avatar && Storage::disk('public')->exists('avatars/' . $student->avatar)) {
          Storage::disk('public')->delete('avatars/' . $student->avatar);
        }

        $imagePath = saveAvatar($attributes["avatar"]);
      }

      $attributes['avatar'] = $imagePath;
      $student->update($attributes);

      DB::commit();
      return $student;
    } catch (\Exception $e) {
      DB::rollBack();
      throw $e;
    }
  }

  public function registerCourse($idCourse)
  {
    $student = $this->model->findOrFail(Auth::user()->student->id);
    if (is_array($idCourse)) {
      foreach ($idCourse as $course) {
        $student->courses()->attach($course);
      }
    } else {
      $student->courses()->attach($idCourse);
    }

    return true;
  }

  public function unRegisterCourse($idCourse)
  {
    $student = $this->model->findOrFail(Auth::user()->student->id);
    $student->courses()->detach($idCourse);
    return true;
  }

  public function updateAndNotificationMedium()
  {
    $this->model->with('courses', 'user')->chunk(100, function ($students) {
      $students->each(function ($student) {
        $courseCount = $student->courses->count();
        $totalScore = $student->courses->sum('pivot.score');

        $scoreNotNull = $student->courses->whereNotNull("pivot.score")->count();
        if ($courseCount !== 0 && $scoreNotNull === $courseCount) {
          $mediumCourse = round($totalScore / $courseCount, 2);

          if ($mediumCourse < 5) {
            $details = [
              'name' => $student->user->name,
              'email' => $student->user->email,
              'mediumCourse' => $mediumCourse
            ];
            dispatch(new NotificationMediumJob($details));
          }

          $status = $mediumCourse >= 5 ? 1 : 2;
          $student->update(['status' => $status]);
        }
      });
    });
  }

  public function updateScore($idStudent, $scoreCourse)
  {
    $student = $this->model->findOrFail($idStudent);

    DB::beginTransaction();
    try {
      $syncData = collect($scoreCourse['courses'])
        ->combine($scoreCourse['scores'])
        ->mapWithKeys(function ($score, $courseId) {
          return [$courseId => ['score' => $score]];
        })
        ->toArray();

      $student->courses()->sync($syncData);

      DB::commit();
      return true;
    } catch (\Exception $e) {
      DB::rollBack();
      throw $e;
    }
  }
}