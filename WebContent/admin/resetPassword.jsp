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
<body ng-app="resetPasswordApp" ng-controller="resetPasswordController" style="background-color: gray;">
	<div class="main">
		<div class="Container">
			<center>
			<div id="login">
				<form action="javaScript:void(0);" method="get">
				<fieldset class="clearfix">
				<p>
									<span class="fa fa-user"></span><input type="text" id = "email" ng-model = "email"
										Placeholder="Enter Your Registered Email ID" required>
								</p>
								<!-- JS because of IE support; better: placeholder="Username" -->
								
								<div>
									<span
										style="width: 50%; text-align: right; display: inline-block;"><input
										type="submit" value="Submit" ng-click = "passwordvalidation();"></span>
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
var app = angular.module('resetPasswordApp', []);
app.controller('resetPasswordController', function($scope, $http, $compile,$timeout, $window){
$scope.passwordvalidation=function(){
	if(document.getElementById("email")==""){
		alert("Enter email");
		document.getElementById("email").focus();
		return false;
	}else{
		var dataObj = {
				username : $scope.email
		};
		var successCallBack = function(response){
			if(response = "Y"){
				$window.open("newPassword.jsp", "_self");
			}else{
				alert("Invalid email");
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