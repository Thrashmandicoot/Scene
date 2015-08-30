app.controller('ModalLoginCtrl', function($scope, $modal, $log){

  $scope.items = [{title: "Email", type:"text"}, {title: "Password", type:"password"}]

  $scope.open = function () {

    var modalInstance = $modal.open({
      animation: true,
      templateUrl: 'loginmodal.html', //change this variable
      controller: 'LModalInstanceCtrl',
      size: 'sm',
      resolve: {
        items: function () {
          return $scope.items;
        }
      }
    });
  };
});

app.controller('LModalInstanceCtrl', function ($scope, $modalInstance) {

  $scope.cancel = function () {
    $modalInstance.dismiss('cancel');
  };
});
