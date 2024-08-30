<?php

namespace App\Http\Controllers;

use App\Events\MessageSend;
use App\Http\Requests\MessageRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ChatController extends Controller
{
    public function index()
    {
        return view('chat.index');
    }

    public function send(MessageRequest $request)
    {
        broadcast(new MessageSend(Auth::user(), $request->input('message')));
        return response()->json(['status' => 'Message Sent!']);
    }
}
