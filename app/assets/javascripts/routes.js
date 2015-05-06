tweets.config(function($routeProvider){

  $routeProvider.when('/tweets', {templateUrl: '/templates/tweetView', controller: "tweetsCtrl"})
    .when("/users/:user_id/tweets/:id", {templateUrl: '/templates/tweetView', controller: 'tweetsCtrl'})
    .when("/follows", {templateUrl: 'templates/followView', controller: 'followeesCtrl'})

});