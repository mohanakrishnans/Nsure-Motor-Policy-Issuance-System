<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Single page web app using Angularjs</title>
<base href="">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.27/angular.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.2.27/angular-route.js"></script>
	<!-- <script type="text/javascript" src="resources/js/main/angular.min.js"></script>
	<script type="text/javascript" src="resources/js/main/angular-route.min.js"></script> -->
	<script type="text/javascript" src="resources/js/main/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/main/bootstrap.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/ngStorage/0.3.9/ngStorage.min.js"></script>
	<!-- <script type="text/javascript" src="resources/js/main/ngStorage.min.js"></script> -->
	<script type="text/javascript" src="resources/js/main/angular-ui-router.min.js"></script>
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<!--
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.4/angular.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.4.4/angular-route.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"> 
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/ngStorage/0.3.9/ngStorage.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.2.15/angular-ui-router.min.js"></script> -->
</head>
<body ng-app="single-page-app"> <!-- onLoad="noBack();" onpageshow="if (event.persisted) noBack();" onUnload=""> --> 
	<div ng-controller="cfgController">
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
		<form id="signup-form">
			<div ui-view class="jumbotron"></div>
		</form>
	</div>
</body>
</html>
<script type="text/javascript" src="resources/js/app.js"></script>

<script type="text/javascript">
//Back button issue
window.userInteractionTimeout = null;
window.userInteractionInHTMLArea = false;
window.onBrowserHistoryButtonClicked = null; // This will be your event handler for browser navigation buttons clicked

$( document ).ready(function() {
	//backButtonOverride('');
});
function noBack() {
	console.log('I called!!!');
	window.history.back(-1);
}
</script>
