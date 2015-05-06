var tweetsCtrl = tweets.controller('tweetsCtrl', ['$scope', '$http', function($scope, $http){
  $scope.tweets = [];

 var tweetsConfig = {
  method: 'GET',
  url: "/tweets",
  dataType: 'json'
 }

 function loadTweets() {
  $http(tweetsConfig).
  success(function(data){
    $scope.tweets = data;
  });
 }

 loadTweets();
}])