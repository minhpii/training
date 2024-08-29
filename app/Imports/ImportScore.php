<?php

namespace App\Imports;

use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\WithValidation;
use PhpOffice\PhpSpreadsheet\Cell\DefaultValueBinder;

class ImportScore extends DefaultValueBinder implements ToModel, WithHeadingRow, WithValidation
{
    protected $rows = [];
    protected $failures = [];

    public function model(array $row)
    {
        $this->rows[] = [
            'student_id' => $row['student_id'],
            'course_id' => $row['course_id'],
            'score' => $row['score']
        ];

        if (count($this->rows) >= $this->batchSize()) {
            $this->upsertRows();
        }
    }

    protected function upsertRows()
    {
        DB::table('course_result')->upsert(
            $this->rows,
            ['student_id', 'course_id'],
            ['score']
        );

        $this->rows = [];
    }

    public function __destruct()
    {
        if (!empty($this->rows)) {
            $this->upsertRows();
        }
    }

    public function rules(): array
    {
        return [
            '*.score' => 'nullable|numeric|min:0|max:10',
        ];
    }

    public function batchSize(): int
    {
        return 1000;
    }
}
