var socket, send, init;

init = function() {
  'use strict';

  socket = new phx.Socket('ws://' + location.host + '/ws');
  
  socket.join('rooms:lobby', {}, function(chan) {

    // $input.off('keypress').on('keypress', e => {
    //   if (e.keyCode == 13) {
    //     chan.send('new:msg', {user: $username.val(), body: $input.val()})
    //       $input.val('')
    //   }
    // });
    
    send = function(data) {
      chan.send('new:msg', data);
    };

    chan.on('join', function() {
      console.log('[You are now connected]');
    });

    chan.on('new:msg', function(msg) {
      console.log(msg);
    });
  });
};
