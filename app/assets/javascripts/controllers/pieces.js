var showPiece = angular.module('ShowPiece', []);


showPiece.controller('PieceCtrl', function($scope, $http){
  $scope.testing = "Scoping with Angular"
  this.elmt = test


  function getArtist() {
    return $http.get("/artists/10/pieces/4").success(function(data){
      $scope.piece = data;
      console.log($scope.piece)
    })
  }

  // grabs the @artist from html and inits that info here
  $scope.init = function(name){
    $scope.artist = {
      name: name
    }
  }

  getArtist();
})

var test = {
  description: "Angular page testing"
}
