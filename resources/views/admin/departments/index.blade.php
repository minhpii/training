@extends('layouts.base')

@section('content')
  <div class="container-fluit mt-3">
    <div class="card">
      <div class="card-header">
        <div class="d-flex justify-content-between">
          <h3>List Department</h3>
          <a href="{{ route('departments.create') }}"><button class="btn btn-primary">Add Department</button></a>
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
            @foreach ($departments as $department)
              <tr>
                <td>{{ $department->id }}</td>
                <td>{{ $department->name }}</td>
                <td>{{ $department->description }}</td>
                <td>
                  <a href="{{ route('departments.edit', $department) }}">
                    <button class="btn btn-success">Edit</button>
                  </a>
                </td>
                <td>
                  {!! Form::open([
                    'route' => ['departments.destroy', $department],
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
        {{ $departments->links() }}
      </div>
    </div>
  </div>
@endsection
