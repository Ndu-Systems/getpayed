app.config(function ($routeProvider, $locationProvider) {
    $routeProvider
         .when('/', {
             templateUrl: 'pages/admin/admindashboard.html',
             controller: 'adminController'
         })        
});
