var tweets = angular.module('tweetsApp', []);

 tweets.controller('tweetsCtrl', ['$scope', '$http', function($scope, $http){
  $scope.tweets = [];

 var config = {
  method: 'GET',
  url: "/tweets",
  dataType: 'json'
 }

 function loadTweets() {
  $http(config).
  success(function(data){
    console.log(data);
    $scope.tweets = data;
  });
 }

 loadTweets();

}])