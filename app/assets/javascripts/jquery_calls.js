


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
    })
  }


// zoom hover
var zoomHover = function(){
  $('.viewport').mouseenter(function(e) {
          $(this).children('a').children('img').animate({ height: '16em', left: '-10', top: '-10', width: '21em'}, 100);
          $(this).children('a').children('span').fadeIn(200);

      }).mouseleave(function(e) {
          $(this).children('a').children('img').animate({ height: '15em', left: '0', top: '0', width: '20em'}, 200);
          $(this).children('a').children('span').fadeOut(200);
      });
}

var zoomHoverMed = function(){
  $('.viewport-m').mouseenter(function(e) {
          $(this).children('a').children('img').animate({ height: '31em', left: '-10', top: '-10', width: '51em'}, 100);
          $(this).children('a').children('span').fadeIn(200);

      }).mouseleave(function(e) {
          $(this).children('a').children('img').animate({ height: '30em', left: '0', top: '0', width: '50em'}, 200);
          $(this).children('a').children('span').fadeOut(200);
      });
}


// Smooth Scroll
var smoothScroll = function(){
    window.scrollTo(0,140)
}




