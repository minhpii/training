@extends('layouts.base')

@section('content')
  <div class="container mt-3">
    <div class="card">
      <div class="card-header">
        <h3>Add Student</h3>
      </div>
      <div class="card-body">
        {!! Form::open(['route' => 'students.store', 'method' => 'POST', 'files' => true]) !!}
        <div class="row">
          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('name', 'Name') !!}
              {!! Form::text('name', old('name'), ['class' => 'form-control', 'placeholder' => 'Enter name..']) !!}
              @error('name')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('email', 'Email') !!}
              {!! Form::email('email', old('email'), ['class' => 'form-control', 'placeholder' => 'Enter email..']) !!}
              @error('email')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('studentCode', 'Student Code') !!}
              {!! Form::text('student_code', old('student_code'), [
                  'class' => 'form-control',
                  'placeholder' => 'Enter student code..',
              ]) !!}
              @error('student_code')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('password', 'Password') !!}
              {!! Form::password('password', ['class' => 'form-control']) !!}
              @error('password')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('phone', 'Phone') !!}
              {!! Form::text('phone', old('phone'), ['class' => 'form-control', 'placeholder' => 'Enter phone..']) !!}
              @error('phone')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('address', 'Address') !!}
              {!! Form::text('address', old('address'), ['class' => 'form-control', 'placeholder' => 'Enter Address..']) !!}
              @error('address')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-2">
            <div class="mt-3">
              {!! Form::label('gender', 'Gender') !!}
              <div class="d-flex align-item-center mt-2">
                <div class="form-check me-3">
                  {!! Form::radio('gender', 0, true, ['class' => 'form-check-input']) !!}
                  {!! Form::label('gender_male', 'Nam', ['class' => 'form-check-label']) !!}
                </div>
                <div class="form-check ml-3">
                  {!! Form::radio('gender', 1, false, ['class' => 'form-check-input']) !!}
                  {!! Form::label('gender_female', 'Nữ', ['class' => 'form-check-label']) !!}
                </div>
              </div>
              @error('gender')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-2">
            <div class="mt-3">
              {!! Form::label('birthday', 'Birthday') !!}
              {!! Form::date('birthday', old('birthday'), [
                  'class' => 'form-control',
              ]) !!}
              @error('birthday')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-8">
            <div class="mt-3">
              {!! Form::label('avatar', 'Avatar') !!}
              {!! Form::file('avatar', ['class' => 'form-control']) !!}
              <img id="avatar-preview" src="" alt="Image Preview"
                style="display:none; max-width: 200px; margin-top: 10px;">
              @error('avatar')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-12">
            <div class="mt-3">
              {!! Form::label('department', 'Department') !!}
              {!! Form::select('department_id', $departments, old('department_id'), [
                  'class' => 'form-control',
                  'placeholder' => '--- Choose type phone ---',
              ]) !!}
              @error('department_id')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>
        </div>

        {!! Form::submit('Add', ['class' => 'btn btn-primary mt-3']) !!}
        {!! Form::close() !!}
      </div>
    </div>
  </div>
@endsection

@push('scripts')
  <script>
    $(document).ready(function() {
      $('#avatar').on('change', function(event) {
        var file = event.target.files[0];

        if (file) {
          var reader = new FileReader();

          reader.onload = function(e) {
            $('#avatar-preview').attr('src', e.target.result);
            $('#avatar-preview').css('display', 'block');
          }

          reader.readAsDataURL(file);
        } else {
          $('#avatar-preview').css('display', 'none');
          $('#avatar-preview').attr('src', '');
        }
      });
    });
  </script>
@endpush
