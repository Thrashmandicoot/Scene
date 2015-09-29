# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$("#animate-test div").hover(function(){
    $(this).filter(':not(:animated)').animate({ width: "200px" });
}, function() {
    $(this).animate({ width: "100px" });
});