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
<script src='resources/js/angular.min.js'></script>
<script src='resources/js/angular-touch.min.js'></script>
<script src='resources/js/angular-animate.min.js'></script>
<script src='resources/js/ui-grid.min.js'></script>
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
				<li><a href="quotation"> <i class="icon-home"></i>Quotation
				</a></li>
				<li><a href="covernote"> <i class="icon-form"></i>New
						Business
				</a></li>
				<li><a href="#endorsement" aria-expanded="false"
					data-toggle="collapse"><i class="fa fa-bar-chart"></i>Endorsement
				</a>
					<ul id="endorsement" class="collapse list-unstyled ">
						<li><a href="nameddrivers">Named Drivers</a></li>
						<li><a href="schedule">Schedule Print</a></li>
					</ul></li>
				<li><a href="premium"> <i class="icon-grid"></i>Premium
				</a>
					<ul id="tablesDropdown" class="collapse list-unstyled ">
						<li><a href="tables.html">Bootstrap tables</a></li>
						<li><a href="tables-datatable.html">Datatable</a></li>
					</ul></li>
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

						<fieldset class="scheduler-border" id="fieldset1">
							<legend class="scheduler-border">Select</legend>
							<div class="row">
								<div class="col-md-4">
									<div class="row form-group form-inline">
										<label for="Branch" class="col-sm-3  control-label">Branch</label>
										<div class="col-sm-3">
											<select name="branch" required id="Branch"
												class="form-control" data-ng-model="branchValue">
												<option selected="selected" value="0">--SELECT--</option>
												<option selected="selected" value="1"></option>
												<option selected="selected" value="2"></option>
												<option selected="selected" value="3"></option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="MasterPolicyNo" class="col-sm-3  control-label">
											Master Policy No.</label>
										<div class="col-sm-3 inner-addon right-addon">
											<input name="masterpolicyno" required id="MasterPolicyNo"
												type="text" class="form-control" placeholder="Search"
												data-ng-model="masterpolicynoValue" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
											<!-- <i class="glyphicon glyphicon-search"></i> -->
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="PassportNo" class="col-sm-3  control-label">
											Passport No.</label>
										<div class="col-sm-3">
											<input name="passportno" required id="PassportNo"
												class="form-control" type="text"
												data-ng-model="passportnoValue" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="row form-group form-inline">
										<label for="AgentCode" class="col-sm-3  control-label">
											Agent Code</label>
										<div class="col-sm-3">
											<select name="agentcode" required id="AgentCode"
												class="form-control" data-ng-model="agentcodeValue">
												<option selected="selected" value="0">--SELECT--</option>
												<option selected="selected" value="1"></option>
												<option selected="selected" value="2"></option>
												<option selected="selected" value="3"></option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="Client" class="col-sm-3  control-label">
											Client</label>
										<div class="col-sm-3 inner-addon right-addon">
											<input name="client" required id="Client" type="text"
												class="form-control" placeholder="Search"
												data-ng-model="clientValue" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
											<!-- <i class="glyphicon glyphicon-search"></i> -->
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="From" class="col-sm-3  control-label">
											From</label>
										<div class="col-sm-3">
											<input name="from" required id="From" class="form-control"
												type="date" data-ng-model="fromValue" />
										</div>
									</div>
								</div>
								<div class="col-md-4">
									<div class="row form-group form-inline">
										<label for="ApplNo" class="col-sm-3  control-label">
											CN/Ref/Appl No. </label>
										<div class="col-sm-3">
											<input name="applno" required id="ApplNo"
												class="form-control" type="text" data-ng-model="applnoValue" />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="IcNo" class="col-sm-3  control-label"> I/C
											No. </label>
										<div class="col-sm-3">
											<input name="icno" required id="IcNo" class="form-control"
												type="text" data-ng-model="icnoValue" />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="To" class="col-sm-3  control-label">To</label>
										<div class="col-sm-3">
											<input name="to" required id="To" class="form-control"
												type="date" data-ng-model="toValue" />
										</div>
									</div>
								</div>
							</div>

							<ul class="pager" align="center">
								<button onclick="" type="submit">Search</button>
								<button onclick="" type="reset" for="fieldset1" value="reset">Reset</button>
							</ul>

						</fieldset>

						<fieldset class="scheduler-border">
							<!-- <legend></legend> -->
							<ul class="nav nav-tabs" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									href="#covernote" role="tab" data-toggle="tab">CoverNote</a></li>
								<li class="nav-item"><a class="nav-link" href="#quotation"
									role="tab" data-toggle="tab">Quotation</a></li>
							</ul>
							<div class="tab-content">

								<div class="tab-pane active" role="tabpanel" id="covernote">

									</br>
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
										<button onclick="" type="submit">Refresh</button>
										<button onclick="" type="submit">Cancel</button>
									</div>
									</br>

									<div data-ng-controller="cnoptionGrid">
										<div data-ui-grid="gridOptions" data-ui-grid-selection
											class="grid"></div>
									</div>

								</div>
								<div role="tabpanel" class="tab-pane fade" id="quotation">
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
									<div data-ng-controller="cnoptionGrid">
										<div data-ui-grid="gridOptions" data-ui-grid-selection
											class="grid"></div>
									</div>
									<ul class="pager" align="center">
										<button onclick="" type="submit">Covert to Covernote</button>
										<button onclick="" type="submit">Cancel</button>
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