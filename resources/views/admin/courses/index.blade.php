@extends('layouts.base')

@section('content')
  <div class="container-fluit mt-3">
    <div class="card">
      <div class="card-header">
        <div class="d-flex justify-content-between">
          <h3>List Course</h3>
          <a href="{{ route('courses.create') }}"><button class="btn btn-primary">Add Course</button></a>
        </div>
      </div>
      <div class="card-body">
        <table class="table table-bordered text-center">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Name</th>
              <th scope="col">Department</th>
              <th scope="col">Edit</th>
              <th scope="col">Delete</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($courses as $course)
              <tr>
                <td>{{ $course->id }}</td>
                <td>{{ $course->name }}</td>
                <td>{{ $course->description }}</td>
                <td>
                  <a href="{{ route('courses.edit', $course) }}">
                    <button class="btn btn-success">Edit</button>
                  </a>
                </td>
                <td>
                  {!! Form::open([
                    'route' => ['courses.destroy', $course],
                    'method' => 'delete',
                    'onsubmit' => 'return confirm("Are you sure?");',
                ]) !!}
                {!! Form::submit('Delete', ['class' => 'btn btn-danger']) !!}
                {!! Form::close() !!}
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
