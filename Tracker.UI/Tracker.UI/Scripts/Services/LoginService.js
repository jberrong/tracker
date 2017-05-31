(function () {
    angular.module('TrackerApp').factory('LoginService', Factory);
    function Factory($http) {
        return {
            validateUser: function (username, password) {
                var request = { username: username, password: password };
                return $http({
                    url: "http://localhost/TrackerAPI/api/Login",
                    method: "POST",
                    data: JSON.stringify(request)
                }).then(function (response) {
                    return response.status;
                });
            },
            validateResult: function (status) {
                console.log(status);
                if (status == 200) {
                    $("#success").removeClass("hidden");
                    window.location = "../Tracker.UI/Home/HomePage";
                }
                if (status == 401){
                    $("#loginerror").removeClass("hidden");
                }
            }
        };
    }
})();