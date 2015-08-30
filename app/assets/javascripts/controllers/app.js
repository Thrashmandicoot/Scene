var app = angular.module('sceneApp', ['ui.bootstrap']);
function HeaderController($scope, $location)
{
    $scope.isActive = function (viewLocation) {
        return viewLocation === $location.path();
    };
}
// no factories, no http requests
