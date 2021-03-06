(function() {
  "use strict";

  angular.module("app").controller("restaurantsCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/restaurants.json").then(function(response) {
        $scope.restaurants = response.data;
      });
    }

     $scope.addRestaurant = function(name, description, address, website, phone, rating) {
      var restaurant = {
        name: name,
        description: description, 
        address: address, 
        website: website, 
        phone: phone, 
        rating, rating
      };

      $http.post('/api/v1/restaurants.json', restaurant).then(function(response){
        $scope.restaurants.push(restaurant);
      });
    };

    $scope.toggleOrder = function() {
      $scope.ascending = !$scope.ascending;
    };

    window.scope = $scope;
  });
  
}());