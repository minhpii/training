<div class="modal fade" id="editStudentModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Student</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        {!! Form::open(['url' => '', 'method' => 'PUT', 'files' => true, 'id' => 'updateStudent']) !!}
        <div class="row">

          {!! Form::hidden('id', null, ['id' => 'edit-id']) !!}

          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('name', 'Name') !!}
              {!! Form::text('name', old('name'), [
                  'class' => 'form-control',
                  'placeholder' => 'Enter name..',
                  'id' => 'name',
              ]) !!}
              @error('name')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('email', 'Email') !!}
              {!! Form::email('email', old('email'), [
                  'class' => 'form-control',
                  'placeholder' => 'Enter email..',
                  'readonly' => true,
                  'id' => 'email',
              ]) !!}
            </div>
          </div>

          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('studentCode', 'Student Code') !!}
              {!! Form::text('student_code', old('student_code'), [
                  'class' => 'form-control',
                  'placeholder' => 'Enter student code..',
                  'id' => 'student_code',
              ]) !!}
              @error('student_code')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('phone', 'Phone') !!}
              {!! Form::text('phone', old('phone'), [
                  'class' => 'form-control',
                  'placeholder' => 'Enter phone..',
                  'id' => 'phone',
              ]) !!}
              @error('phone')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-6">
            <div class="mt-3">
              {!! Form::label('address', 'Address') !!}
              {!! Form::text('address', old('address'), [
                  'class' => 'form-control',
                  'placeholder' => 'Enter Address..',
                  'id' => 'address',
              ]) !!}
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
                  {!! Form::radio('gender', 0, true, ['class' => 'form-check-input', 'id' => 'gender_male']) !!}
                  {!! Form::label('gender_male', 'Nam', ['class' => 'form-check-label']) !!}
                </div>
                <div class="form-check ml-3">
                  {!! Form::radio('gender', 1, false, ['class' => 'form-check-input', 'id' => 'gender_female']) !!}
                  {!! Form::label('gender_female', 'Nữ', ['class' => 'form-check-label']) !!}
                </div>
              </div>
              @error('gender')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-4">
            <div class="mt-3">
              {!! Form::label('birthday', 'Birthday') !!}
              {!! Form::date('birthday', old('birthday'), [
                  'class' => 'form-control',
                  'id' => 'birthday',
              ]) !!}
              @error('birthday')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>

          <div class="col-8">
            <div class="mt-3">
              {!! Form::label('avatar', 'Avatar') !!}
              <div id="avatar-preview">
                <img id="avatar-image" src="" alt="Current Avatar" class="img-fluid mb-2"
                  style="max-height: 200px;" />
              </div>
              {!! Form::file('avatar', ['class' => 'form-control', 'id' => 'avatar']) !!}
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
                  'placeholder' => '--- Choose type department ---',
                  'id' => 'department_id',
              ]) !!}
              @error('department_id')
                <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
              @enderror
            </div>
          </div>
        </div>

        {!! Form::submit('Update', ['class' => 'btn btn-primary mt-3']) !!}
        {!! Form::close() !!}

      </div>
    </div>
  </div>
</div>
