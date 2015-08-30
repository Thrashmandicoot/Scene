app.controller('ModalSignupCtrl', function($scope, $modal, $log){

  $scope.items = [{title: "I'm an Artist", link: "/artists/new"}, {title: "I'm an Organization", link: "/organizations/new"}]

  $scope.open = function () {

    var modalInstance = $modal.open({
      animation: true,
      templateUrl: 'myModalContent.html',
      controller: 'ModalInstanceCtrl',
      size: 'sm',
      resolve: {
        items: function () {
          return $scope.items;
        }
      }
    });

    modalInstance.result.then(function (selectedItem) {
      $scope.selected = selectedItem;
    }, function () {
      $log.info('Modal dismissed at: ' + new Date());
    });
  };
});

app.controller('ModalInstanceCtrl', function ($scope, $modalInstance, items) {

  $scope.items = items;

  $scope.cancel = function () {
    $modalInstance.dismiss('cancel');
  };
});
