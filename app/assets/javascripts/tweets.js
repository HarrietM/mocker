var tweets = angular.module('tweetsApp', ["ngRoute"]);



  // tweets.controller('followeeCtrl', ['$scope', '$http', function($scope, $http){
  //   $scope.followees = [];

  //   var followeesConfig = {
  //     method: 'GET',
  //     url: '/users/:user_id/follows/:id',
  //     dataType: 'json',
  //     // params: {user_id: current_user.id}
  //   }

  //   function loadFollowees(){
  //     $http(followeesConfig).
  //     success(function(data){
  //       $scope.followees = data;
  //     });
  //   }
  // }])