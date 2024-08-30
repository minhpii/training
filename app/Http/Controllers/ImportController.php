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
        $import = new ImportScore();
        Excel::import($import, $request->file('file'));
        
        if ($import->getErrors()) {
            return redirect()->back()->with('import_errors', $import->getErrors());
        }

        return redirect()->back()->with('success', 'Updated score successfully!');
    }
}
