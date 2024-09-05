@extends('layouts.base')

@section('content')
  <div class="container-fluit">
    <div class="row justify-content-center">
      <div class="col-md-12 mt-2">
        <div class="card">
          <div class="card-header">
            <div class="d-flex justify-content-between">
              <h3>List Students</h3>
              <a href="{{ route('students.create') }}" class="btn btn-primary">Add Student</a>
            </div>
            <div class="d-flex justify-content-end mt-2">
              {!! Form::open([
                  'url' => 'import-score',
                  'files' => true,
                  'method' => 'post',
                  'class' => 'd-flex align-items-start',
              ]) !!}
              <div class="mr-2">
                {!! Form::file('file', ['class' => 'form-control mr-2']) !!}
                @error('file')
                  <div class="text-danger">{{ $message }}</div>
                @enderror
              </div>
              {!! Form::submit('Import Score', ['class' => 'btn btn-success']) !!}
              {!! Form::close() !!}
            </div>
            <div class="d-flex justify-content-end mt-2">
              {!! Form::open([
                  'url' => 'export-score',
                  'method' => 'post',
                  'class' => 'd-flex align-items-start',
              ]) !!}
              {!! Form::submit('Export Score', ['class' => 'btn btn-success']) !!}
              {!! Form::close() !!}
            </div>
          </div>

          <div class="card-body">
            {!! Form::open(['route' => ['students.index'], 'method' => 'get']) !!}
            <div class="row align-items-start">
              <div class="col-3">
                {!! Form::label('from_age', 'From Age:') !!}
                {!! Form::text('from_age', old('from_age'), [
                    'class' => 'form-control',
                    'placeholder' => 'Enter age..',
                ]) !!}
              </div>
              <div class="col-3">
                {!! Form::label('to_age', 'To Age:') !!}
                {!! Form::text('to_age', old('to_age'), ['class' => 'form-control', 'placeholder' => 'Enter age..']) !!}
              </div>
              <div class="col-3">
                {!! Form::label('from_score', 'Form Score:') !!}
                {!! Form::number('from_score', old('from_score'), [
                    'class' => 'form-control',
                    'placeholder' => 'Enter age..',
                    'min' => 0,
                    'max' => 10,
                ]) !!}
              </div>
              <div class="col-3">
                {!! Form::label('to_score', 'To Score:') !!}
                {!! Form::number('to_score', old('to_score'), [
                    'class' => 'form-control',
                    'placeholder' => 'Enter age..',
                    'min' => 0,
                    'max' => 10,
                ]) !!}
              </div>
              <div class="col-3">
                {!! Form::label('type_phone', 'Type Phone:') !!}
                {!! Form::select('type_phone[]', $typePhones, old('type_phone[]'), [
                    'class' => 'form-control',
                    'multiple' => true,
                    'placeholder' => '--- Choose phone ---',
                ]) !!}
              </div>
              <div class="col-3">
                {!! Form::label('record', 'Record:') !!}
                {!! Form::select(
                    'record',
                    ['100' => '100 records', '1000' => '1000 records', '3000' => '3000 records'],
                    old('record'),
                    [
                        'class' => 'form-control',
                        'placeholder' => '--- Choose record ---',
                    ],
                ) !!}
              </div>
              <div class="col-3">
                {!! Form::label('status', 'Status:') !!}
                {!! Form::select('status[]', ['0' => 'Studying', '1' => 'Finished', '2' => 'Learn Again'], old('type_phone[]'), [
                    'class' => 'form-control',
                    'multiple' => true,
                    'placeholder' => '--- Choose status ---',
                ]) !!}
              </div>
              <div class="col-3 mt-4">
                <div class="d-flex justify-content-end">
                  {!! Form::submit('Search', ['class' => 'btn btn-primary']) !!}
                </div>
              </div>
            </div>
            {!! Form::close() !!}

            <table class="table table-bordered mt-4">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Student Code</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Gender</th>
                  <th>Address</th>
                  <th>Phone</th>
                  <th>Birthday</th>
                  <th>Department</th>
                  <th>Subjects</th>
                  <th>Medium Score</th>
                  <th>Status</th>
                  <th>Edit</th>
                  <th>Delete</th>
                </tr>
              </thead>

              <tbody>
                @foreach ($students as $student)
                  <tr>
                    <td>
                      {!! Form::open([
                          'route' => ['profile', $student],
                          'method' => 'get',
                      ]) !!}
                      {!! Form::submit('View', ['class' => 'btn btn-warning']) !!}
                      {!! Form::close() !!}</td>
                    </td>
                    <td>{{ $student->student_code }}</td>
                    <td>{{ $student->user->name }}</td>
                    <td>{{ $student->user->email }}</td>
                    <td>{{ $student->gender == 0 ? 'Male' : 'Female' }}</td>
                    <td>{{ $student->address }}</td>
                    <td>{{ $student->phone }}</td>
                    <td>{{ $student->birthday }}</td>
                    <td>{{ $student->department->name }}</td>
                    <td>{{ $student->courses_count }}</td>
                    <td>
                      @php
                        $mediumscore = $student->courses ? round($student->courses->avg('pivot.score'), 2) : null;
                      @endphp
                      {{ $mediumscore ? $mediumscore : 'No mediumscore' }}
                    </td>
                    <td>
                      @if ($student->status == 0)
                        Studying
                      @elseif ($student->status == 1)
                        Finished
                      @else
                        Learn Again
                      @endif
                    </td>
                    <td>
                      <button type="button" class="btn btn-success edit-btn" data-id="{{ $student->id }}"
                        data-toggle="modal" data-target="#editStudentModal">
                        Edit
                      </button>
                    </td>
                    <td>{!! Form::open([
                        'route' => ['students.destroy', $student],
                        'method' => 'delete',
                        'onsubmit' => 'return confirm("Are you sure?");',
                    ]) !!}
                      {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                      {!! Form::close() !!}</td>
                  </tr>
                @endforeach
              </tbody>
            </table>
            <div class="mt-3"> {{ $students->withQueryString()->links() }}</div>
          </div>
        </div>
      </div>
    </div>
  </div>

  @include('admin.students.edit')
@endsection

@push('scripts')
  <script>
    $(document).ready(function() {

      $('.edit-btn').on('click', function() {
        const studentId = $(this).data('id');

        $.ajax({
          url: '/students/' + studentId + '/edit',
          method: 'GET',
          success: function(data) {
            $('#edit-id').val(studentId);
            $('#name').val(data.name);
            $('#email').val(data.email);
            $('#student_code').val(data.student_code);
            $('#phone').val(data.phone);
            $('#birthday').val(data.birthday);
            $('#address').val(data.address);
            $('#department_id').val(data.department_id);

            if (data.gender == 0) {
              $('#male').prop('checked', true);
            } else {
              $('#female').prop('checked', true);
            }

            if (data.avatar) {
              $('#avatar-image').attr('src', '/storage/avatars/' + data.avatar);
              $('#avatar-preview').css('display', 'block');
            } else {
              $('#avatar-preview').css('display', 'none');
            }

            $('#editStudentModal').modal('show');
          }
        });
      });

      $('#updateStudent').on('submit', function(e) {
        e.preventDefault();
        var id = $('#edit-id').val();

        var formData = new FormData(this);
        formData.append('_method', 'PUT');

        $.ajax({
          url: '/students/' + id,
          method: "POST",
          processData: false,
          contentType: false,
          data: formData,
          success: function(data) {
            $('#editStudentModal').modal('hide');
            window.location.href = data.redirect_url;
          },
          error: function(data) {
            var errors = data.responseJSON;
            for (var key in errors) {
              $('#' + key + '-error').text(errors[key][0]);
            }
          }
        });
      });
    });
  </script>
@endpush
