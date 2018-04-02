<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nsure Motor Policy Issuance System | CoverNote</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.16/angular.min.js">
	
</script>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
<script src='resources/js/angular.min.js'></script>
<script src='resources/js/angular-touch.min.js'></script>
<script src='resources/js/angular-animate.min.js'></script>
<script src='resources/js/ui-grid.min.js'></script>
<link rel='stylesheet prefetch' href='resources/css/ui-grid.css'>

 <link rel="stylesheet" href="https://rawgit.com/msrikanth508/uiGridInlineEditPOC/master/Css/ui-grid.css" />
<script src="resources/js/index.js"></script>
<link rel='stylesheet prefetch' href='resources/css/ui-grid.min.css'>
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

<!-- <script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angular.js/1.3.16/angular.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
 -->

<%-- <script type="text/javascript">

 var app = angular.module("covernoteDrop", ['ngMessages']).controller("covernoteDrop",
			function($scope) {
				$scope.covernotedrop = null;
				fnendtmotoronload();
			});
	
	function fnendtmotoronload() {
		var status = true;
		//var contactId = document.getElementById("CONTACT_TYPE").value;
		var CONTEXT_PATH = '<%=request.getContextPath()%>/';

		$.ajax({
			type : "GET",
			url : CONTEXT_PATH + "covernoteDrop",
			data : covernotedrop,
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			success : function(result) {
				$.each(result, function(index, value) {
					if (value.contactType > 0) {
						$('#CONTACT_TYPE').append(
								'<option value="' + value.contactType + '">'
										+ value.contactName + '</option>');
					} else if (value.sourceType > 0) {
						$('#SOURCE_TYPE').append(
								'<option value="' + value.sourceType + '">'
										+ value.sourceName + '</option>');
					}
				});

			}
		});
		return status;
	}
</script>
 --%>

</head>
<body data-ng-app="app">
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
					<li><a href="quotation"> <i class="icon-home"></i>Quotation </a></li>
					<li><a href="nbquotation"> <i class="icon-form"></i>New Business</a></li>
					<li><a href="cnOptions"> <i class="icon-form"></i>CN Options</a></li>
					<li><a href="endorsementdetails"><i class="icon-form"></i>Endorsement</a></li>
					<li><a href="referRisk"> <i class="icon-grid"></i>Refer Risk</a></li>
				</ul>
		</div>
	</div>
	</nav>
	<div class="page">
		<header class="header"> <nav class="navbar">
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
		</nav> </header>
		<div class="card-body">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<h4>Client Profile</h4>
				</div>
				<div class="card-body">
					<form class="container">

				 <fieldset class="scheduler-border">
							<!-- <legend></legend> -->
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									href="#covernote" role="tab" data-toggle="tab">CoverNote</a></li>
								<li class="nav-item"><a class="nav-link" href="#quotation"
									role="tab" data-toggle="tab">Quotation</a></li>
							</ul>
							<div class="tab-content">

								<div  data-ng-controller="cncovernteGrid" class="tab-pane active" role="tabpanel" id="covernote" >

									</br>
									<div class="row form-group form-inline">
										<label for="Class" class="col-sm-3  control-label">
											Class</label>
										<!-- <div class="col-sm-3 inner-addon right-addon">
											<select name="class" required id="Class" class="form-control"
												data-ng-model="classValue">
												<option selected="selected" value="0">--SELECT--</option>
												<option selected="selected" value="1">MOTORCYCLE</option>
												<option selected="selected" value="2">PRIVATE CAR</option>
												<option selected="selected" value="3">TAXI CAR</option>
												<option selected="selected" value="4">BUS</option>
												<option selected="selected" value="5">GOODS VEHICLE</option>
												<option selected="selected" value="6">TANKERS</option>
											</select>
										</div> -->
										
									</div>
									</br>

									 
										<div data-ui-grid="gridOptions" data-ui-grid-selection
											class="grid"></div>
								 <ul>
								 	<button onclick="#" type="submit">Refresh</button>
										<button ng-click="cancelCovertnote()" type="submit">Cancel</button>
								 </ul>

								</div>
								<div role="tabpanel"  data-ng-controller="cnoptionGrid" class="tab-pane fade" id="quotation">
									<div class="row form-group form-inline">
										<label for="Class" class="col-sm-3  control-label">
											Class</label>
										<div class="col-sm-3 inner-addon right-addon">
											<select name="class" required id="Class" class="form-control"
												data-ng-model="classValue">
												<option selected="selected" value="0">--SELECT--</option>
												<option selected="selected" value="1">MOTORCYCLE</option>
												<option selected="selected" value="2">PRIVATE CAR</option>
												<option selected="selected" value="3">TAXI CAR</option>
												<option selected="selected" value="4">BUS</option>
												<option selected="selected" value="5">GOODS VEHICLE</option>
												<option selected="selected" value="6">TANKERS</option>
											</select>

										</div>
									</div>
									 
										<div data-ui-grid="gridOptions" data-ui-grid-selection
											class="grid">
										</div>
									 
									<ul class="pager" align="center">
										<button ng-click="convertCovertnote()" type="submit">Covert to Covernote</button>
										<button ng-click="cancelCovertnote()" type="submit">Cancel</button>
									</ul>
								</div>
							</div>
						</fieldset>


					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>