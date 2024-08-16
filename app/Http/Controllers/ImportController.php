<?php

namespace App\Http\Controllers;

use App\Http\Requests\ImportScoreRequest;
use App\Imports\ImportScore;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class ImportController extends Controller
{
    public function importScore(ImportScoreRequest $request)
    {
        try {
            Excel::import(new ImportScore, $request->file('file'));
            return redirect()->back()->with('success', 'Updated score successfully!');
        } catch (\Maatwebsite\Excel\Validators\ValidationException $e) {
            $failures = $e->failures();
            return redirect()->back()->with('import_errors', $failures);
        }
    }
}
