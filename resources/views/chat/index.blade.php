@extends('layouts.app')

@section('content')
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-md-12">
        <div class="card">
          <div class="card-header"></div>

          <div class="card-body">
            <div class="row p-2">
              <div class="col-9">
                <div class="row">
                  <div class="col-12 border rounded-lg p-3">
                    <ul id="messages" class="list-unstyled overflow-auto" style="min-height: 45vh">
                    </ul>
                  </div>
                  {!! Form::open(['method' => 'Post', 'route' => ['chat.send'], 'id' => 'message-form']) !!}
                  <div class="row py-3">
                    <div class="col-10">
                      {!! Form::text('message', old('message'), [
                          'class' => 'form-control',
                          'placeholder' => 'Enter message...',
                          'id' => 'message-input',
                      ]) !!}
                    </div>
                    <div class="col-2">
                      {!! Form::submit('Send', ['class' => 'btn btn-primary']) !!}
                    </div>
                  </div>
                  {!! Form::close() !!}
                </div>
              </div>
              <div class="col-3">
                <div class="card">
                  <div class="card-header"><strong>User Online</strong></div>
                  <div class="card-body">
                    <ul id="users" class="list-unstyled overflow-auto text-info m-2" style="min-height: 45vh">
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
@endsection
