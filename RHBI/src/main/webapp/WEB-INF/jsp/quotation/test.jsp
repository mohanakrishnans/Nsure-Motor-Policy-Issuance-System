	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

	<script>
	var CONTEXT_PATH = '<%=request.getContextPath()%>/';
	var app = angular.module('myApp', []);
	app.controller('test', ['$scope','$http', function($scope,$http) {
	    //$scope.firstName = "John";
	    //$scope.lastName = "Doe";
	    alert("mohan "+CONTEXT_PATH);
	    
	    self.fnendtmotoronload(self);
	}]);
	
	 self.fnendtmotoronload=function(self){	
			alert("inside");
			$http.post(CONTEXT_PATH+'testCtrl',self.endor).then(
					function(response){
				self.endor.product = response.data;
				self.product = response.data;
				return response;
			});
	};
 
	
	</script>
	</head>
	<body data-ng-app="myApp" >
		<!-- <div data-ng-controller="QuotationController test">
			First Name: <input type="text" data-ng-model="firstName"><br>
			Last Name: <input type="text" data-ng-model="lastName"><br>
			<br>
			Full Name: {{firstName + " " + lastName}}
		</div> -->

		<div data-ng-controller="QuotationController as endor"
			id="ENDOR_NON_JPJ_MOTOR" data-ng-init="fnendtmotoronload()">
	
			<div class="col-sm-7">
				<select id="DD_ENDT_CATEGORY" data-ng-model="endor.productId"
					data-ng-options="options.contactId as options.contactName for options in endor.product"
					class="form-control"><option selected="selected" value="">--PLEASE
						SELECT--</option>
				</select>
			</div>
	</div>


</body>
	
	</html>