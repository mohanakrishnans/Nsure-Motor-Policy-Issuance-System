<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<html>
<head>
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	angular.module("testApp", []).controller("travelCareController",
			function($scope) {
				$scope.endtCategoryId = null;
				fnendtmotoronload();
			});
	function fnendtmotoronload() {
		var status = true;
		var endtCategoryId = document.getElementById("DD_ENDT_CATEGORY").value;
		var CONTEXT_PATH = '<%=request.getContextPath()%>/';

		$.ajax({
			type : "POST",
			url : CONTEXT_PATH + "testselect",
			data : endtCategoryId,
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			success : function(result) {
				$.each(result, function(index, value) {
					$('#DD_ENDT_CATEGORY').append(
							'<option value="' + value.contactId + '">'
									+ value.contactName + '</option>');
				});

			}
		});
		return status;
	}
</script>

</head>
<body data-ng-app="testApp"
	data-ng-controller="travelCareController as tc"
	id="ENDOR_NON_JPJ_MOTOR"> 

	<div class="">
		<label class="col-sm-4 control-label">Country:</label>
		<div class="col-sm-8">
			<select id="DD_ENDT_CATEGORY" ng-model="endtCategoryId" class=""><option
					selected="selected" value="0">--PLEASE SELECT--</option>
			</select> 
		</div>
	</div>

	<div class="">
		<label class="col-sm-4 control-label">Type_ID:</label>
		<div class="col-sm-8">
			<select id="DD_ENDT_CATEGORY" ng-model="endor.endtCategoryId"
				class=""><option selected="selected" value="0">--PLEASE
					SELECT--</option>
			</select> 
		</div>
	</div>
	<br>
 
</body>
</html>
</body>
</html>