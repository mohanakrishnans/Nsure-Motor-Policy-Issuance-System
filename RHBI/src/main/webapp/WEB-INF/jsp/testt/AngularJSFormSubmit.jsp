<!DOCTYPE html>
<html data-ng-app="formSubmit">
<head>
<meta charset="ISO-8859-1">
<title>AngularJS Post Form Spring MVC example</title>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.8/angular.min.js"></script>

<script src="resources/js/index.js"></script>
<script type="text/javascript">
	/* var app = angular.module('formSubmit', []);
	
	app.controller('FormSubmitController',[ '$scope', '$http', function($scope, $http) {
			
		$scope.user = [];
			$scope.headerText = 'AngularJS Post Form Spring MVC example: Submit below form';
			$scope.submit = function() {
				
				var formData = {
						"name" : $scope.user.name,
						"location" : $scope.user.location,
						"phone" : $scope.user.phone	
				};
				
				var response = $http.post('PostFormData', formData);
				response.success(function(data, status, headers, config) {
					$scope.user.push(data);
				});
				response.error(function(data, status, headers, config) {
					alert( "Exception details: " + JSON.stringify({data: data}));
				});
				
				//Empty list data after process
				$scope.user = [];
				
			};
		}]); */
</script>
</head>
<body>
	<form data-ng-submit="submit()" data-ng-controller="FormSubmitController">
		<h3>{{headerText}}</h3>
		<p>Name: <input type="text" data-ng-model="user.name"></p>
		<p>Location: <input type="text" data-ng-model="user.location"></p>
		<p>Phone: <input type="text" data-ng-model="user.phone"></p>
		<input type="submit" id="submit" value="Submit" /><br>	
		
		<h4>You submitted below data through post:</h4>
		 <pre>Form data ={{user}}</pre>
	</form>
</body>
</html>