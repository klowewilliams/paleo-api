(function() {
  "use strict";

  angular.module("app").controller("restaurantsCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/restaurants.json").then(function(response) {
        $scope.restaurants = response.data;
      });
    }
  });
}());