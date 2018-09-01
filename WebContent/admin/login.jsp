<%-- 
    Document   : index
    Created on : 30 AUG 2018
    Author     : Lucifer.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Gateway Sample</title>
</head>
<body ng-app="loginApp" ng-controller="loginController" style="background-color: gray;">
	<div class="main">
		<div class="Container">
			<center>
			<div id="login">
				<form action="javaScript:void(0);" method="get">
				<fieldset class="clearfix">
				<p>
									<span class="fa fa-user"></span><input type="text" id = "username" ng-model = "username"
										Placeholder="Username" required>
								</p>
								<!-- JS because of IE support; better: placeholder="Username" -->
								<p>
									<span class="fa fa-lock"></span><input type="password" id = "password" ng-model = "password"
										Placeholder="Password" required>
								</p>
								<!-- JS because of IE support; better: placeholder="Password" -->

								<div>
									<span
										style="width: 48%; text-align: left; display: inline-block;"><a
										class="small-text" href="#">Forgot password?</a></span> <span
										style="width: 50%; text-align: right; display: inline-block;"><input
										type="submit" value="Sign In" ng-click = "loginvalidation();"></span>
								</div>
				</fieldset>
				<div class="clearfix"></div>
				</form>
				<div class="clearfix"></div>
			</div>
			</center>
		</div>
	</div>
</body>
<script type="text/javascript">
var app = angular.module('loginApp', []);
app.controller('loginController', function($scope, $http, $compile,$timeout, $window){
$scope.loginvalidation=function(){
	if(document.getElementById("username")==""){
		alert("Enter UserName");
		document.getElementById("username").focus();
		return false;
	}else if(document.getElementById("password")==""){
		alert("Enter Password");
		document.getElementById("password").focus();
		return false;
	}else{
		var dataObj = {
				username : $scope.username,
				password : $scope.password
		};
		var successCallBack = function(response){
			if(response = "Y"){
				$window.open("Payment.jsp", "_self");
			}else{
				alert("Invalid Username and Password");
			}
		};
		var errorCallBack = function(response) {
			alert("Failure");
		};
		$http.post('adminlogin', dataObj).then(successCallBack,errorCallBack);
	}
}
})

</script>
</html>