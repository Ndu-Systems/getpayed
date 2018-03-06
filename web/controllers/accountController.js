app.controller('loginController', function ($http, $scope, $route, $window) {
    var me = this;
    //if (localStorage.getItem("isLoggedIn") === "true") {
    //    $window.location.href = "#my-dashboard";
    //}
    $scope.reset = function () {
        $scope.message = undefined
        $route.reload();
    };
    $scope.Login = function () {
        var email = $scope.email;
        var password = $scope.password;

        var data = {
            email: email,
            password: password
        };
        if (data.email !== undefined && data.password !== undefined) {
    
                    $http.post(GetApiUrl("Login"), data)
                    .success(function (response, status) {
                        if (response.length !== 0) {
                            var user = response.user[0];

                            localStorage.setItem("name", user.FNAME);
                            localStorage.setItem("surname", user.username);       

                            localStorage.setItem("isLoggedIn", true);
                            me.message = undefined;
                            if (user.LEVEL === "1") {
                                $window.location.href = "#admin-dashboard";
                            }                          
                        }
                        else {
                            $scope.message = "Oops! Your username or password is incorrect please CHECK and try again.";
                        }  
  
                    });
        }
        else {
            $scope.message = "Please make sure that all required fields are NOT empty"
        }
    };
});

app.controller('registerController', function ($http, $scope, $window) {
 
    
});

app.controller('logoutController', function ($http, $scope, $window) {
    localStorage.clear();
    $window.location.href = "#login";

});