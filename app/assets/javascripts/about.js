$("#animate-test div").hover(function() {
  $(this).filter(':not(:animated)').animate({
    width: "200px"
  });
}, function() {
  $(this).animate({
    width: "100px"
  });
});
