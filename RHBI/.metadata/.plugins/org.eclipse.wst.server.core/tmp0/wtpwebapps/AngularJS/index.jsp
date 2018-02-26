<!doctype html>
<html lang="en" ng-csp>
<head>
<meta charset="UTF-8">
<title>Single page web app using Angularjs</title>
<base href="">
<script type="text/javascript" src="resources/js/main/angular.min.js"></script>
<script type="text/javascript" src="resources/js/main/angular-route.min.js"></script>
<script type="text/javascript" src="resources/js/main/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/main/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/main/ngStorage.min.js"></script>
<script type="text/javascript" src="resources/js/main/angular-ui-router.min.js"></script>
<script type="text/javascript" src="resources/js/main/ui-grid/ui-grid.min.js"></script>
<script type="text/javascript" src="resources/js/main/ui-grid/vfs_fonts.js"></script>
<script type="text/javascript" src="resources/js/main/angular-sanitize.min.js"></script>
<script type="text/javascript" src="resources/js/main/angular-local-storage.js"></script>

<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/ui-grid/ui-grid.min.css">
<style type="text/css">
.myGrid {
 width: auto;
 height: 250px;
 }
 .uiGridClass:hover{
 background-color: #b3c4c7;
 }
 @charset "UTF-8";

[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak],
.ng-cloak, .x-ng-cloak,
.ng-hide:not(.ng-hide-animate) {
  display: none !important;
}

ng\:form {
  display: block;
}
</style>
</head>
<body ng-app="single-page-app">
	<div ng-controller="cfgController as main">
		<div ng-bind-html="secureHtml"></div>
		<div>
			<nav class="navbar navbar-inverse" role="navigation"
				style="padding-left: 130px;">
				<ul class="nav navbar-nav">
					<li class="active"><a ui-sref="home">Home<span
							class="sr-only">(current)</span></a></li>
					<!-- <li><a ui-sref="about">About us</a></li>
					<li><a ui-sref="final">Final</a></li> -->
					<li><a ui-sref="second">Second Home</a></li>
				</ul>
			</nav>
		</div>
		<br />
		<div ui-grid="gridOptions" class="myGrid" ui-grid-pagination></div>
		<form id="signup-form">
			<div ui-view class="jumbotron"></div>
		</form>
	</div>
</body>
</html>
<script type="text/javascript" src="resources/js/app.js"></script>