<?php

namespace Database\Seeders;

use App\Models\Course;
use App\Models\Student;
use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;

use function App\Helpers\hasPassword;

class StudentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $adminRole = Role::where("name", "admin")->first();
        $studentRole = Role::where("name", "student")->first();
        $prefixes = ['09', '08', '07', '03', '02'];

        $courses = Course::all();

        for ($i = 0; $i < 5; $i++) {
            $user = User::create([
                "name" => fake()->name,
                "email" => fake()->unique()->safeEmail,
                "password" => hasPassword("abc@123"),
            ]);
            $user->assignRole($adminRole);
        }

        for ($i = 0; $i < 100; $i++) {
            $user1 = User::create([
                "name" => fake()->name,
                "email" => fake()->unique()->safeEmail,
                "password" => hasPassword("abc@123"),
            ]);

            $user1->assignRole($studentRole);
            Student::insert([
                'user_id' => $user1->id,
                "student_code" => fake()->unique()->numerify('STU#####'),
                "avatar" => "",
                "phone" => fake()->randomElement($prefixes) . fake()->numerify('########'),
                "address" => fake()->address,
                "gender" => rand(0, 1),
                "birthday" => fake()->date,
                "status" => 0,
                "department_id" => rand(1, 10),
            ]);

            foreach ($courses as $course) {
                DB::table('course_result')->insert([
                    'student_id' => $user1->student->id,
                    'course_id' => $course->id,
                    'score' => rand(0, 10),
                ]);
            }
        }
    }
}
