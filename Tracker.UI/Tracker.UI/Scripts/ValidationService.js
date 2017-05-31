TrackerApp.service("ValidationService", function ($http) {
    this.ValidateTest = function (username, password) {
        var result = false;
        if (username === 'JBerrong' && password === 'Test') {
            result = true;
        }
        return result;
    }
    this.validateResult = function (status) {
        console.log(status);
        if (status == 200) {
            $(".alert-success").show();
            window.location = "../Tracker.UI/Home/HomePage";
        } else {
            $(".loginError").show();
        }
    }
    this.Validate = function (username, password) {
        var request = { username: username, password: password };
        return $http({
            url: "http://localhost/TrackerAPI/api/Login",
            method: "POST",
            data: JSON.stringify(request)
        }).then(function (response) {
            return response.status;
        });
    }
});