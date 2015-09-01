  $(document).ready(function() {
    showPiece();
    zoomHover();
  });


  var showPiece = function(){
    $(".pic").on('click', function(event){
      event.preventDefault();
      smoothScroll();

      var url = $(this).attr("href")
      var request = $.ajax({
        url: url,
        method: "GET",
        dataType: "HTML"
      })
      request.done(function(response){
        console.log("hit")
        $('.r-this').remove()
        $('#target').append(response)
        closeButton();
      })
    })
  }

  var closeButton = function(){
    $(".x-btn").on('click', function(event){
      $('.r-this').remove()
      // $('.allpics').show()
    })
  }


// zoom hover
var zoomHover = function(){
  $('.viewport').mouseenter(function(e) {
          $(this).children('a').children('img').animate({ height: '16em', left: '-5', top: '-5', width: '21em'}, 100);
          $(this).children('a').children('span').fadeIn(200);
      }).mouseleave(function(e) {
          $(this).children('a').children('img').animate({ height: '15em', left: '0', top: '0', width: '20em'}, 200);
          $(this).children('a').children('span').fadeOut(200);
      });
}

// Smooth Scroll
var smoothScroll = function(){
    window.scrollTo(0,165)
}




