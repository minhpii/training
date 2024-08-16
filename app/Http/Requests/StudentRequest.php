<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StudentRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        $rules = [
            "name" => "required|max:100",
            "email" => "required|email|unique:users,email|max:100",
            "password" => "required|min:6",
            "student_code" => "nullable|unique:students,student_code|max:50",
            "avatar" => "nullable|mimes:png,jpg",
            "phone" => "nullable|numeric|unique:students,phone",
            "birthday" => "nullable|date",
            "department_id" => "required",
        ];

        if ($this->isMethod("post")) {
            return $rules;
        } else if ($this->isMethod("get")) {
            $rules = [
                "from_age" => "nullable|numeric",
                "to_age" => "nullable|numeric",
                "from_score" => "nullable|numeric",
                "to_score" => "nullable|numeric",
                "type_phone" => "nullable",
            ];
            return $rules;
        } else {
            $rules = [
                "name" => "required|max:100",
                "avatar" => "nullable|mimes:png,jpg",
                "birthday" => "nullable|date",
                "student_code" => "nullable",
                "phone" => "nullable",
                "department_id" => "required",
            ];
            return $rules;
        }
    }
}
