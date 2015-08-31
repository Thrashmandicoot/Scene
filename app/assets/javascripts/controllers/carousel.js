gallery.controller('CarouselDemoCtrl', function ($scope, $http) {
  console.log("WE MADE IT.  ")
  $scope.myInterval = 2500;
  $scope.noWrapSlides = false;
  var slides = $scope.slides = [];

  var json_stuff = $http.get('/api/pieces').success(function(data){
    $scope.addSlide = function(fimages) {
      console.log(data);
      var newWidth = 600 + slides.length + 1;
      slides.push({
        image: fimages.img,
        text: fimages.title
      });
    };
    for (var i=0; i<10; i++) {
      $scope.addSlide(data[i]);
    }
    }
  );

});
