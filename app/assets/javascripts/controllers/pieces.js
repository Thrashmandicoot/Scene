var showPiece = angular.module('ShowPiece', []);


showPiece.controller('PieceCtrl', function($scope, $http){
  $scope.testing = "Scoping with Angular"
  this.elmt = test


  function getArtist() {
    return $http.get("/artists/10/pieces/4").success(function(data){
      console.log(data)
    })
  }

  getArtist();
})

var test = {
  description: "Angular page testing"
}
