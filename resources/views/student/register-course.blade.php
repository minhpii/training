@extends('layouts.base')

@section('content')
  <div class="container-fluit mt-3">
    <div class="card">
      <div class="card-header">
        <div class="d-flex justify-content-between">
          <h3>List Subject</h3>

          <button class="btn btn-primary" onclick="registerCourse()">Register Course</button>
        </div>
      </div>
      <div class="card-body">
        <table class="table table-bordered text-center">
          <thead>
            <tr>
              <th scope="col">
                {!! Form::checkbox('all_course', null, false, ['id' => 'all_course']) !!}
              </th>
              <th scope="col">Name</th>
              <th scope="col">Status</th>
              <th scope="col">Action</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($courses as $course)
              <tr>
                <td>
                  @if (!$student->courses->contains($course->id))
                    {!! Form::checkbox('course_id[]', $course->id, false, [
                        'class' => 'course-checkbox',
                    ]) !!}
                  @endif
                </td>
                <td>{{ $course->name }}</td>
                <td>{{ $student->courses->contains($course->id) ? 'Registered' : 'Unregistered' }} </td>
                <td>
                  @if (!$student->courses->contains($course->id))
                    {!! Form::open([
                        'url' => ['register-course', $course->id],
                        'method' => 'POST',
                        'onsubmit' => 'return confirm("Are you sure?");',
                    ]) !!}
                    {!! Form::submit('Registered', ['class' => 'btn btn-primary']) !!}
                    {!! Form::close() !!}
                  @else
                    {!! Form::open([
                        'url' => ['unregister-course', $course->id],
                        'method' => 'POST',
                        'onsubmit' => 'return confirm("Are you sure?");',
                    ]) !!}
                    {!! Form::submit('Unregistered', ['class' => 'btn btn-danger']) !!}
                    {!! Form::close() !!}
                  @endif
                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
        {{ $courses->links() }}
      </div>
    </div>
  </div>
@endsection

@push('scripts')
  <script>
    const selectAllCheckbox = document.getElementById('all_course');
    const courseCheckboxes = document.querySelectorAll('.course-checkbox');

    document.addEventListener('DOMContentLoaded', function() {
      selectAllCheckbox.addEventListener('change', function() {
        courseCheckboxes.forEach(checkbox => checkbox.checked = this.checked);
      });

      courseCheckboxes.forEach(checkbox => {
        checkbox.addEventListener('change', function() {
          selectAllCheckbox.checked = Array.from(courseCheckboxes).every(cb => cb.checked);
        });
      });
    });

    const registerCourse = () => {
      let listCourseCheckbox = [];
      courseCheckboxes.forEach(item => {
        if (item.checked) {
          listCourseCheckbox.push(item.value);
        }
      });

      $.ajax({
        url: 'register-list-course',
        method: 'POST',
        data: {
          listCourseCheckbox: listCourseCheckbox
        },
        success: function(data) {
          window.location.href = data.redirect_url;
        },
        error: function(data) {
          var errors = data.responseJSON;
          for (var key in errors) {
            $('#' + key + '-error').text(errors[key][0]);
          }
        }
      });
    }
  </script>
@endpush
