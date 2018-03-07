app.config(function ($routeProvider, $locationProvider) {
    $routeProvider
         .when('/', {
             templateUrl: 'pages/admin/admindashboard.html',
             controller: 'adminController'
         })
         .when('/users', {
             templateUrl: 'pages/users/users.html',
             controller: 'usersController'
         })
});
