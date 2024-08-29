@extends('layouts.app')

@section('content')
  <div class="row">

    <div class="col-sm-6 offset-sm-3 my-2">
      <input type="text" class="form-control" name="username" id="username" placeholder="Enter a user ..........">
    </div>

    <div class="col-sm-6 offset-sm-3">
      <div class="box box-primary direct-chat direct-chat-primary">

        <div class="box-body">
          <div class="direct-chat-messages" id="messages"></div>
        </div>

        <div class="box-footer">
          <form action="#" method="post" id="message_form">
            <div class="input-group">
              <input type="text" name="message" id="message" placeholder="Type Message ..." class="form-control">
              <span class="input-group-btn">
                <button type="submit" id="send_message" class="btn btn-primary btn-flat">Send</button>
              </span>
            </div>
          </form>
        </div>

      </div>
    </div>

  </div>
@endsection

@push('styles')
  <style>
    .box {
      position: relative;
      border-radius: 3px;
      background: #ffffff;
      border-top: 3px solid #d2d6de;
      margin-bottom: 20px;
      width: 100%;
      box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
    }

    .box.box-primary {
      border-top-color: #3c8dbc;
    }

    .box-body {
      border-top-left-radius: 0;
      border-top-right-radius: 0;
      border-bottom-right-radius: 3px;
      border-bottom-left-radius: 3px;
      padding: 10px;
    }

    .direct-chat .box-body {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
      position: relative;
      overflow-x: hidden;
      padding: 0;
    }

    .direct-chat-messages {
      padding: 10px;
      height: 150px;
      overflow: auto;
    }
  </style>
@endpush
