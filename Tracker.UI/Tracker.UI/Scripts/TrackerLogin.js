var TrackerApp = angular.module('TrackerApp', []);
TrackerApp.controller('TrackerController', controller);
TrackerApp.config(['$qProvider', function ($qProvider) {
    $qProvider.errorOnUnhandledRejections(false);
}]);

function controller($scope, LoginService) {

    var i = this
    i.responseVal;
    $scope.username = "";
    $scope.password = "";
    $scope.response;

    $scope.validate = function () {
        if (validateFields() == true) {
            getResponse($scope.username, $scope.password);
        }

    }
    
    function getResponse(username, password) {
        return LoginService.validateUser(username, password).then(function (response) {
            i.responseVal = response;
            $scope.response = i.responseVal;
            LoginService.validateResult($scope.response);
        });
    }

    function validateFields() {
        if ($scope.username == "" || $scope.password == "") {
            $("#fielderror").removeClass("hidden");
            return false;
        }
        else {
            $("#fielderror").addClass("hidden");
            return true;
        }
    }
}