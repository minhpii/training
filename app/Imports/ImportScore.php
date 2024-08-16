<?php

namespace App\Imports;

use App\Models\Student;
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
        $student = Student::find($row['student_id']);
        if ($student) {
            $student->courses()->updateExistingPivot($row['course_id'], ['score' => $row['score']]);
        }
    }

    public function rules(): array
    {
        return [
            '*.score' => 'nullable|numeric|min:0|max:10',
        ];
    }
}
