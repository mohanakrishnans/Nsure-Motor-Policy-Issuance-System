<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js"
	style="height: 100%; width: 100%; background-color: #EFF2F7;">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<title>Nsure Motor Policy Issuance System | Quotation</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<link rel="shortcut icon"
	href="http://localhost/nsure/dashboard/img/favicon.ico">
<link rel="stylesheet"
	href="http://localhost/nsure/dashboard/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://localhost/nsure/dashboard/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="http://localhost/nsure/dashboard/css/fontastic.css">
<link rel="stylesheet"
	href="http://localhost/nsure/dashboard/css/style.default.premium.css"
	id="theme-stylesheet">
<link rel="stylesheet"
	href="http://localhost/nsure/dashboard/css/custom.css">
<script src="http://localhost/nsure/dashboard/js/jquery.min.js"></script>
<script src="http://localhost/nsure/dashboard/js/bootstrap.min.js"></script>
<script src="http://localhost/nsure/dashboard/js/messenger.min.js"></script>
<script
	src="http://localhost/nsure/dashboard/js/messenger-theme-flat.js"></script>
<script src="http://localhost/nsure/dashboard/js/home-premium.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	angular.module("testApp", []).controller("travelCareController",
			function($scope) {
				$scope.contactId = null;
				fnendtmotoronload();
			});
	function fnendtmotoronload() {
		var status = true;
		var contactId = document.getElementById("CONTACT_TYPE").value;
		var endtCategoryId = document.getElementById("CONTACT_TYPE").value;
		var CONTEXT_PATH = '<%=request.getContextPath()%>
	/';

		$.ajax({
			type : "POST",
			url : CONTEXT_PATH + "testselect",
			data : contactId,
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			success : function(result) {
				$.each(result, function(index, value) {
					//console.log(value+" ");
					/*console.log(value.sourceId +" "+value.sourceName); */
					$('#CONTACT_TYPE').append(
							'<option value="' + value.contactId + '">'
									+ value.contactName + '</option>');
					/* $('#SOURCE_TYPE').append(
							'<option value="' + value.sourceId + '">'
									+ value.sourceName + '</option>'); */
				});

			}
		});
		return status;
	}
</script>
</head>

<body class="" data-ng-app="testApp"
	data-ng-controller="travelCareController as tc"
	id="ENDOR_NON_JPJ_MOTOR">
	<nav class="side-navbar">
		<div class="side-navbar-wrapper">
			<div
				class="sidenav-header d-flex align-items-center justify-content-center">
				<div class="sidenav-header-inner text-center">
					<img src="http://localhost/nsure/dashboard/img/avatar-1.jpg"
						alt="person" class="img-fluid rounded-circle">
					<h2 class="h5">Nsure</h2>
				</div>
				<div class="sidenav-header-logo">
					<a href="index.jsp" class="brand-small text-center"> <strong>B</strong><strong
						class="text-primary">D</strong></a>
				</div>
			</div>
			<div class="main-menu">
				<ul id="side-main-menu" class="side-menu list-unstyled">
					<li><a href="quotation"> <i class="icon-home"></i>Quotation
					</a></li>
					<li><a href="covernote"> <i class="icon-form"></i>New
							Business
					</a></li>
					<li><a href="#endorsement" aria-expanded="false"
						data-toggle="collapse"> <i class="fa fa-bar-chart"></i>Endorsement
					</a>
						<ul id="endorsement" class="collapse list-unstyled ">
							<li><a href="nameddrivers">Named Drivers</a></li>
							<li><a href="schedule">Schedule Print</a></li>
						</ul></li>
					<li><a href="premium"> <i class="icon-grid"></i>Premium
					</a> <!-- <ul id="tablesDropdown" class="collapse list-unstyled ">
							<li><a href="tables.html">Bootstrap tables</a></li>
							<li><a href="tables-datatable.html">Datatable</a></li>
						</ul>--></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="page">
		<header class="header">
			<nav class="navbar">
				<div class="container-fluid">
					<div
						class="navbar-holder d-flex align-items-center justify-content-between">
						<div class="navbar-header">
							<a id="toggle-btn" href="#" class="menu-btn"><i
								class="icon-bars"> </i></a><a href="index.jsp" class="navbar-brand">
								<div class="brand-text d-none d-md-inline-block">
									<strong class="text-primary">Nsure</strong>
								</div>
							</a>
						</div>
					</div>
				</div>
			</nav>
		</header>
		<div class="card-body">
			<div class="card">
				
				<div class="card-body">
					
					<h1>Nsure Motor Policy Issuance System</h1>
						
				</div>
			</div>
		</div>
	</div>
</body>

</html>


