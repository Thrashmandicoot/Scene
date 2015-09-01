  $(document).ready(function() {
    showPiece();
    zoomHover();
  });


  var showPiece = function(){
    $(".pic").on('click', function(event){
      event.preventDefault();
      var url = $(this).attr("href")
      var request = $.ajax({
        url: url,
        method: "GET",
        dataType: "HTML"
      })
      request.done(function(response){
        console.log("hit")
        $('.r-this').remove()
        // $('.allpics').hide()
        // console.log(url)
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
          $(this).children('a').children('img').animate({ height: '322', left: '-10', top: '-10', width: '490'}, 100);
          $(this).children('a').children('span').fadeIn(200);
      }).mouseleave(function(e) {
          $(this).children('a').children('img').animate({ height: '299', left: '0', top: '0', width: '450'}, 200);
          $(this).children('a').children('span').fadeOut(200);
      });
}
