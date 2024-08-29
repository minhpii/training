import './bootstrap';

$(document).ready(function () {

  $(document).on('click', '#send_message', function (e) {
    e.preventDefault();

    let username = $('#username').val();
    let message = $('#message').val();

    if (username == '' || message == '') {
      alert('Vui lòng nhập cả tên người dùng và tin nhắn');
      return false;
    }

    $.ajax({
      method: 'post',
      url: '/chat',
      data: { username: username, message: message },
      success: function (res) {
      }
    });

  });
});

Echo.channel('chat')
  .listen('.message', (e) => {
    $('#messages').append('<p><strong>' + e.user + '</strong>' + ': ' + e.message + '</p>');
    $('#message').val('');
  });
