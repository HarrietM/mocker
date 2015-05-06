var followeesCtrl = tweets.controller('followeesCtrl', ['$scope', '$http', function($scope, $http){
  $scope.followees = [];

 var followeesConfig = {
  method: 'GET',
  url: "/follows",
  dataType: 'json'
 }

 function loadFollowees() {
  $http(followeesConfig).
  success(function(data){
    $scope.followees = data;
  });
 }

 loadFollowees();
}])