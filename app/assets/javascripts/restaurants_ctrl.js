(function() {
  "use strict";

  angular.module("app").controller("restaurantsCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/restaurants.json").then(function(response) {
        $scope.restaurants = response.data;
      });
    }

    // $scope.toggle = function() {
    //   "toggle = !toggle"
    // };

     $scope.addRestaurant = function(name, description, address, website, phone, rating) {
      if(name) {
        $scope.restaurants.push({name: name,description: description, address: address, website: website, phone: phone, rating, rating});
        $scope.newRestaurant = null;  
      }
    };


  });
}());