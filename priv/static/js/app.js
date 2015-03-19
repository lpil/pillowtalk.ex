var socket, send, init;

init = function() {
  'use strict';

  var returnKey  = 13,
      chatInput  = document.querySelector('.chat input'),
      chatMsgs   = document.querySelector('.chat__messages'),
      chatSubmit = document.querySelector('.chat__submit');

  var print = function(msg) {
    var el = document.createElement('p');
    el.innerHTML = msg;
    chatMsgs.appendChild(el);
  };

  var sendInput = function() {
    send({data: chatInput.value});
    chatInput.value = '';
  };

  socket = new phx.Socket('ws://' + location.host + '/ws');
  
  socket.join('rooms:lobby', {}, function(chan) {

    send = function(data) {
      chan.send('new:msg', data);
    };


    chan.on('join', function() {
      print('[You are now connected]');
    });
    chan.on('new:msg', function(msg) {
      print(msg.data);
    });


    chatSubmit.addEventListener('click', function() {
      sendInput();
      return false;
    });
    chatInput.addEventListener('keydown', function(e) {
      if (e.keyCode === returnKey) {
        sendInput();
      }
      return false;
    });
  });
};
