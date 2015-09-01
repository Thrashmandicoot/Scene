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
        $('.allpics').hide()
        console.log(response)
        // $('#target').append(response)
        showAll();
      })
    })
  }

  var showAll = function(){
    $(".x-btn").on('click', function(event){
      $('#target').html("")
      $('.allpics').show()
    })
  }


// zoom hover
var zoomHover = function(){
  $('.viewport').mouseenter(function(e) {
          $(this).children('a').children('img').animate({ height: '299', left: '0', top: '0', width: '450'}, 100);
          $(this).children('a').children('span').fadeIn(200);
      }).mouseleave(function(e) {
          $(this).children('a').children('img').animate({ height: '332', left: '-20', top: '-20', width: '500'}, 100);
          $(this).children('a').children('span').fadeOut(200);
      });
}
