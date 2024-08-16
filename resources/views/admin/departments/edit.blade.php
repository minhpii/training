@extends('layouts.base')

@section('content')
  <div class="container mt-3">
    <div class="card">
      <div class="card-header">
        <h3>Edit Department</h3>
      </div>
      <div class="card-body">
        {!! Form::model($department, ['route' => ['departments.update', $department], 'method' => 'put']) !!}
        <div class="mt-3">
          {!! Form::label('name', 'Name') !!}
          {!! Form::text('name', old('name'), ['class' => 'form-control', 'placeholder' => 'Enter name...']) !!}
          @error('name')
            <span class="ps-6 mt-2 text-danger">{{ $message }}</span>
          @enderror
        </div>

        <div class="mt-3">
          {!! Form::label('description', 'Description') !!}
          {!! Form::textarea('description', old('description'), [
              'rows' => 5,
              'class' => 'form-control',
              'placeholder' => 'Enter description...',
          ]) !!}
        </div>

        {!! Form::submit('Update', ['class' => 'btn btn-success float-end mt-3']) !!}
        {!! Form::close() !!}
      </div>
    </div>
  </div>
@endsection
