<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\View;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id', 
        'student_code', 
        'avatar', 
        'phone', 
        'gender', 
        'address', 
        'birthday', 
        'department_id', 
        'status',
    ];

    public function user()
    {
        return $this->hasOne(User::class, 'id', 'user_id');
    }

    public function department()
    {
        return $this->belongsTo(Department::class);
    }

    public function courses()
    {
        return $this->belongsToMany(Course::class, 'course_result')
                    ->withPivot('score');
    }

}
