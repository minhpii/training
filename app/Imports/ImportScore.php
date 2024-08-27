<?php

namespace App\Imports;

use App\Models\Student;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;

class ImportScore implements ToModel, WithHeadingRow, WithValidation
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        DB::table('course_result')->upsert([
            [
                'student_id' => $row['student_id'],
                'course_id' => $row['course_id'],
                'score' => $row['score']
            ]
        ], [$row['student_id'], $row['course_id']], [$row['score']]);
    }

    public function rules(): array
    {
        return [
            '*.score' => 'nullable|numeric|min:0|max:10',
        ];
    }
}
