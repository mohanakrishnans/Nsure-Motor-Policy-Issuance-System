<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>angular-ui-grid enableFullRowSelection</title>


<script src='resources/js/angular.min.js'></script>
<script src='resources/js/angular-touch.min.js'></script>
<script src='resources/js/angular-animate.min.js'></script>
<script src='resources/js/ui-grid.min.js'></script>
<script src="resources/js/index.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<link rel='stylesheet prefetch' href='resources/css/ui-grid.min.css'>
<link rel='stylesheet prefetch' href='resources/css/ui-grid.css'>
 <link rel="stylesheet" href="https://rawgit.com/msrikanth508/uiGridInlineEditPOC/master/Css/ui-grid.css" />
    



</head>

<body>	<div data-ng-app="app">
		<div data-ng-controller="cnoptionGrid">
			<div data-ui-grid="gridOptions" data-ui-grid-selection class="grid"></div>
		</div>
	</div>
	
	<button type="button" class="btn btn-success" ng-click="getSelectedRows()">Get Selected Rows</button>
    
</body>

</html>



<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="insert" method="post" modelAttribute="userFormData">
	
	
	
		<input type="text" name="name" class="form-control" required autofocus>


		<input class="btn btn-md btn-success btn-block" type="submit"
			value="Signin">
	</form>
</body>
</html> --%>