[Friday 1:52 PM] MinhVT (Guest)
@extends('layouts.base')

@section('content')
  <div class="container-fluid mt-3">
    <div class="card">
      <div class="card-header">
        <div class="d-flex justify-content-between">
          <h3>My Profile</h3>
        </div>
      </div>

      <div class="card-body form-container">
        <h5>Update score</h5>

        <div class="card">
          <div class="container my-3">
            {!! Form::button('+', ['class' => 'btn btn-secondary add-select mb-2']) !!}
            {!! Form::open(['method' => 'Post', 'url' => 'update-score/' . $student->id]) !!}
            <div id="divSelect">
              @if (old('courses'))
                @foreach (old('courses') as $index => $select)
                  <div class="form-select row mb-3" id="div-{{ $index }}">
                    <div class="col-md-5">
                      {!! Form::select('courses[], null', $courses->pluck('name', 'id')->toArray(), old('courses')[$index], [
                          'class' => 'form-control',
                          'placeholder' => '--- Choose course ---',
                      ]) !!}
                      @error('courses.' . $index)
                        <div class="error text-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="col-md-5">
                      {!! Form::text('scores[]', old('scores')[$index], ['class' => 'form-control', 'placeholder' => 'Enter score']) !!}
                      @error('scores.' . $index)
                        <div class="error text-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="col-md-2 d-flex align-items-center">
                      <button type="button" class="btn btn-danger remove-button" data-id="{{ $index }}">-</button>
                    </div>
                  </div>
                @endforeach
              @else
                @foreach ($myCourses as $index => $course)
                  <div class="form-select row mb-3" id="div-{{ $index }}">
                    <div class="col-md-5">
                      {!! Form::select('courses[], null', $courses->pluck('name', 'id')->toArray(), $course->id, [
                          'class' => 'form-control',
                          'placeholder' => '--- Choose course ---',
                      ]) !!}
                      @error('courses.' . $index)
                        <div class="error text-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="col-md-5">
                      {!! Form::text('scores[]', $course->pivot->score, ['class' => 'form-control', 'placeholder' => 'Enter score']) !!}
                      @error('scores' . $index)
                        <div class="error text-danger">{{ $message }}</div>
                      @enderror
                    </div>
                    <div class="col-md-2 d-flex align-items-center">
                      <button type="button" class="btn btn-danger remove-button" data-id="{{ $index }}">-</button>
                    </div>
                  </div>
                @endforeach
              @endif
            </div>
            {!! Form::submit('Update', ['class' => 'btn btn-success']) !!}
            {!! Form::close() !!}
          </div>
        </div>
      </div>

      <div class="card-body">
        <h5>My Course</h5>
        <table class="table table-bordered text-center">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Name</th>
              <th scope="col">Score</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($student->courses as $course)
              <tr>
                <td>{{ $course->id }}</td>
                <td>{{ $course->name }}</td>
                <td>{{ $course->pivot->score ?? 'No score' }}</td>
              </tr>
            @endforeach
            <tr>
              <td colspan="3">
                <div class="text-danger d-flex justify-content-end">Medium Score:
                  {{ round($student->courses->avg('pivot.score'), 2) }}
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </div>

      <div class="card-body">
        <h5>My Infomation</h5>
        <div class="card">
          <div class="text-center mt-3">
            <img style="width:100px" class="avatar-sm rounded-circle mr-3"
              src="{{ $student->avatar ? asset('storage/avatars/' . $student->avatar) : 'https://api.dicebear.com/6.x/fun-emoji/svg?seed=Mario' }}"
              alt="{{ $student->user->name }}">


            <div class="card-body">
              <h2 class="mt-3">{{ $student->user->name }} - {{ $student->student_code }}</h2>
              <p class="text-muted">Birthday : {{ \Carbon\Carbon::parse($student->birthday)->format('d-m-Y') }}</p>
              <p class="text-muted">Gender : {{ $student->gender == 0 ? 'Male' : 'FeMale' }}</p>
            </div>
          </div>

          <ul class="list-group list-group-flush list-unstyled p-2">
            <h4>Contact Information</h4>
            <li><strong>Email:</strong> {{ $student->user->email }}</li>
            <li><strong>Phone:</strong> {{ $student->phone }} </li>
            <li><strong>Address:</strong> {{ $student->address }}</li>
            <li><strong>Department:</strong> {{ $student->department->name }}</li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  </div>
@endsection

@push('scripts')
  <script>
    $(document).ready(function() {
      let courses = @json($courses->pluck('name', 'id'));
      let counter = {{ count(old('courses', [])) }};
      let scores = @json($student->courses->pluck('pivot.score', 'id'));

      $('.add-select').on('click', function(e) {
        e.preventDefault();

        let options = '';
        $.each(courses, function(id, name) {
          options += `<option value="${id}">${name}</option>`;
        });

        let selectHTML = `
        <div class="form-select row mb-3" id="div-${counter}">
          <div class="col-md-5">
            <select name="courses[]" class="form-control">
              <option value="">Choose a course</option>
              ${ options }
            </select>
            <span class="error-course text-danger"></span>
          </div>
          <div class="col-md-5">
            <input type="text" name="scores[]" class="form-control" placeholder="Enter Score">
          </div>
          <div class="col-md-2 d-flex align-items-center">
            <button class="btn btn-danger remove-button" data-id="${counter}">-</button>
          </div>
        </div>`;

        $('#divSelect').append(selectHTML);
        counter++;
        updateSelect();
      });

      $(document).on('click', '.remove-button', function() {
        const id = $(this).data('id');
        $(`#div-${id}`).remove();
        updateSelect();
      });

      $('#divSelect').on('change', 'select', function() {
        let selectedCourseId = $(this).val();
        let inputScore = $(this).closest('.form-select').find('input');
        if (scores[selectedCourseId] !== null) {
          inputScore.val(scores[selectedCourseId]);
        } else {
          inputScore.val('');
        }

        updateSelect();
      });

      const updateSelect = () => {
        let selectedValues = [];
        $('.form-select').find('select').each(function() {
          let currentSelectedValue = $(this).val();
          if (currentSelectedValue) {
            selectedValues.push(currentSelectedValue);
          }
        });

        $('#divSelect').find('.form-select').each(function() {
          let currentSelect = $(this).find('select');
          let currentSelectedValue = currentSelect.val();

          currentSelect.find('option').each(function() {
            let optionValue = $(this).val();
            if (selectedValues.includes(optionValue) && optionValue !== currentSelectedValue) {
              $(this).hide();
            } else {
              $(this).show();
            }
          });
        });
      }

      updateSelect();
    });
  </script>
@endpush
