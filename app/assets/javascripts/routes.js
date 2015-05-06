tweets.config(function($routeProvider){

  $routeProvider.when('/tweets', {templateUrl: '/templates/tweetView', controller: "tweetsCtrl"})

});