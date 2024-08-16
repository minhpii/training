@extends('layouts.base')

@section('content')
  <div class="container-fluit mt-3">
    <div class="card">
      <div class="card-header">
        <div class="d-flex justify-content-between">
          <h3>My Profile</h3>
          @if (Auth::user()->hasRole('admin') && $student->courses->count())
            <button type="button" class="btn btn-primary btn-show" data-toggle="modal" data-target="#updateScoreModal">
              Update Score
            </button>
          @endif
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
            @foreach ($myCourses as $course)
              <tr>
                <td>{{ $course->id }}</td>
                <td>{{ $course->name }}</td>
                <td>{{ $course->pivot->score ?? 'No score' }}</td>
              </tr>
            @endforeach
            <td colspan="3">
              <div class="text-danger d-flex justify-content-end">Medium Score:
                {{ round($student->courses->avg('pivot.score'), 2) }}</div>
            </td>
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

  <div class="modal fade" id="updateScoreModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Update score</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="d-flex justify-content-end">
            <button class="btn btn-primary add-select">+</button>
          </div>
          <div class="row">
            <div class="col-12">
              {!! Form::open(['url' => 'update-score/' . $student->id, 'method' => 'POST', 'id' => 'updateScore']) !!}
              <div id="divSelect"></div>
              {!! Form::submit('Update', ['class' => 'btn btn-success btn-update mt-3']) !!}
              {!! Form::close() !!}
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection

@push('scripts')
  <script>
    $(document).ready(function() {

      let myCourses = @json($myCourses);
      let listScoreCourse = [];

      const toggleButtons = () => {
        if ($('#divSelect .course-score').length === 0) {
          $('.btn-update').hide();
        } else {
          $('.btn-update').show();
        }
      };

      $('.btn-show').on('click', function() {
        $('.btn-update').hide();
      });

      $('.add-select').on('click', function(e) {
        e.preventDefault();

        let options = '';
        myCourses.forEach(function(course) {
          options += `<option value="${course.id}">${course.name}</option>`;
        });

        let selectHTML = `
          <div class="course-score row mt-2">
            <div class="col-5">
              <select class="custom-course form-control">
                <option value="">Choose a course</option>
                ${ options }
              </select>
              <span class="error-course text-danger"></span>
            </div>
            <div class="col-5">
              <input type="text" class="form-control ml-2 custom-score" placeholder="Enter Score">
              <span class="error-score text-danger ml-2"></span>
            </div>
            <div class="col-2">
              <button class="btn btn-danger remove-select">-</button>
            </div>
          </div>`;

        $('#divSelect').append(selectHTML);
        updateOptions();
        toggleButtons();
      });

      const updateOptions = () => {
        let selectedValues = [];

        $('#divSelect').find('.custom-course').each(function() {
          let currentSelectedValue = $(this).val();
          if (currentSelectedValue) {
            selectedValues.push(currentSelectedValue);
          }
        });

        $('#divSelect').find('.custom-course').each(function() {
          let currentSelect = $(this);
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

      $('#divSelect').on('click', '.remove-select', function(e) {
        e.preventDefault();
        $(this).closest('.course-score').remove();
        updateOptions();
        toggleButtons();
      });

      $('#divSelect').on('change', '.course-score', function() {
        updateOptions();
      });
      
      const collectScores = () => {
        let listScoreCourse = [];
        $('#divSelect .course-score').each(function() {
          let selectedCourse = $(this).find('.custom-course').val();
          let score = $(this).find('.custom-score').val();

          if (selectedCourse && score) {
            listScoreCourse.push(`${selectedCourse},${score}`);
          }
        });
        return listScoreCourse;
      };

      const validateInputs = () => {
        let hasError = false;
        $('#divSelect .course-score').each(function() {
          let course = $(this).find('.custom-course').val();
          let score = $(this).find('.custom-score').val();
          let errorCourse = $(this).find('.error-course');
          let errorScore = $(this).find('.error-score');

          errorCourse.text('');
          errorScore.text('');

          if (!course) {
            errorCourse.text('Course is required');
            hasError = true;
          }
          if (!score) {
            errorScore.text('Score is required');
            hasError = true;
          } else if (isNaN(score)) {
            errorScore.text('Score must be a number');
            hasError = true;
          } else if (score < 0 || score > 10) {
            errorScore.text('Score invalid');
            hasError = true;
          }
        });
        return !hasError;
      };

      $('#updateScore').on('submit', function(e) {
        e.preventDefault();

        if (!validateInputs()) {
          return;
        }

        $.ajax({
          url: '/update-score/' + {{ $student->id }},
          method: 'POST',
          data: {
            listScoreCourse: collectScores()
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
      });

      updateOptions();
    });
  </script>
@endpush
