import './bootstrap';

const usersElement = document.getElementById('users');
const messageElement = document.getElementById('messages');

Echo.join('chat')
  .here((users) => {
    users.forEach((user) => {
      const element = document.createElement('li')
      element.setAttribute('id', user.id)
      element.innerText = user.name

      usersElement.appendChild(element)
    })
  })
  .joining((user) => {
    const element = document.createElement('li')
    element.setAttribute('id', user.id)
    element.innerText = user.name

    usersElement.appendChild(element)
  })
  .leaving((user) => {
    const element = document.getElementById(user.id)
    element.parentNode.removeChild(element)
  });

$(document).ready(function () {
  $('#message-form').on('submit', function (e) {
    e.preventDefault();

    $.ajax({
      url: $(this).attr('action'),
      method: $(this).attr('method'),
      data: $(this).serialize(),
      success: function (response) {
        $('#message-input').val('');
      },
      error: function (response) {
        console.log(response);
      }
    });
  });
});

Echo.private('chat').listen('MessageSend', (e) => {
  const element = document.createElement('div');
  element.innerHTML = `<b>${e.user.name}</b> : <span>${e.message}</span>`;

  messageElement.appendChild(element);
});

