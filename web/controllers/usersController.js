
app.controller('usersController', function ($http, $scope, $window) {

  //Get Users from the Database
  $http.get(GetApiUrl("getusers"))
        .success(function (response, status) {
            if (response !== undefined) {
                $scope.users = response.content;
            }
        });
  //Add User To the Database
  
});
