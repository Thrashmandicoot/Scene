$(document).ready(function(){
  var jumboHeight = $('.divotron').outerHeight();
  function parallax(){
      var scrolled = $(window).scrollTop();
      $('.bg').css('height', (jumboHeight-scrolled) + 'px');

  }

  $(window).scroll(function(e){
      parallax();
  });
});
