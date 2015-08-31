var app = angular.module('sceneApp', ['ui.bootstrap']);

angular.element(document).on('ready page:load', function() {
  angular.bootstrap(document.body, ['sceneApp']);
});

