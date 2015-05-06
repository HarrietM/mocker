var usersCtrl = tweets.controller('usersCtrl', ['$scope', '$http', function($scope, $http){
  $scope.users = [];

 var usersConfig = {
  method: 'GET',
  url: "/users",
  dataType: 'json'
 }

 function loadUsers() {
  $http(usersConfig).
  success(function(data){
    $scope.users = data;
  });
 }

 loadUsers();
}])