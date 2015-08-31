angular.module('galleryApp', ['ui.bootstrap', 'ngAnimate']).controller('CarouselDemoCtrl', function ($scope) {
  $scope.myInterval = 5000;
  $scope.noWrapSlides = false;
  var slides = $scope.slides = [];

  Gallery.images.forEach(function(image) {
    slides.push({
      image: image.img,
      text: image.title
    });
  });
});
