gallery.controller('CarouselDemoCtrl', function ($scope, $http, $q) {
  console.log("WE MADE IT.  ")
  $scope.myInterval = 2500;
  $scope.noWrapSlides = false;
  var slides = $scope.slides = [];

  $scope.addSlide = function(data) {
    var newWidth = 600 + slides.length + 1;
    slides.push({
      image: '//placekitten.com/' + newWidth + '/300',
      text: ['More','Extra','Lots of','Surplus'][slides.length % 4] + ' ' +
        ['Cats', 'Kittys', 'Felines', 'Cutes'][slides.length % 4]
    });
  };
  for (var i=0; i<4; i++) {
    $scope.addSlide();
  }
});
