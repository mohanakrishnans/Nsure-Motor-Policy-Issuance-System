<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
	src="http://localhost/nsure/dashboard/js/messenger-theme-flat.js"></script><!-- 
<script src="http://localhost/nsure/dashboard/js/home-premium.js"></script> -->
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angular.js/1.3.16/angular.min.js"></script>
<script src='resources/js/angular.min.js'></script>
<script src='resources/js/angular-touch.min.js'></script>
<script src='resources/js/angular-animate.min.js'></script>
<script src='resources/js/ui-grid.min.js'></script>
<script src="resources/js/index.js"></script>
<link rel='stylesheet prefetch' href='resources/css/ui-grid.min.css'>
<link rel='stylesheet prefetch' href='resources/css/style.css'>
</head>
<body  data-ng-app="app">
	<nav class="side-navbar">
	<div class="side-navbar-wrapper">
		<div
			class="sidenav-header d-flex align-items-center justify-content-center">
			<div class="sidenav-header-inner text-center">
				<img src="http://localhost/nsure/dashboard/img/avatar-1.jpg"
					alt="person" class="img-fluid rounded-circle">
				<h2 class="h5">Nsure</h2>
				<h3 class="h4" style="color:red;">${sessionScope.user}</h3>
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
						<li><a href="endorsementdetails">endorsementdetails</a></li>
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
						class="icon-bars"> </i></a> <a href="index.jsp" class="navbar-brand">
						<div class="brand-text d-none d-md-inline-block">
							<strong class="text-primary">Nsure</strong>
						</div>
					</a>
				</div>
				<button type='submit' onclick="location.href='logout'" class="btn btn-danger pull-right">Log out</button>
			</div>
		</div>
		</nav> </header>
		<div class="card-body">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<h4>New Business-Named Driver and Extra Coverage</h4>
				</div>
				<div class="card-body">
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">Named Drivers</legend> 
						
							<div data-ng-controller="MainCtrl">
								<div data-ui-grid="gridOptions" data-ui-grid-selection
									class="grid"></div>
							</div> 
						<br>
						<ul align="center" class="pager">
							<button type="button" class="btn btn-primary btn-md">Add
								More drivers</button>
							<button type="button" class="btn btn-primary btn-md">Remove
								drivers</button>
						</ul>
					</fieldset>
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">Extra Coverage</legend>
						<div class="row">
							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Extra
										Coverage Class</label>
									<div class="col-sm-8">
										<select class="form-control" id="sel1">
											<option>----Please Select----</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										CART Days</label>
									<div class="col-sm-8 inner-addon right-addon">
										<select class="form-control" id="sel1">
											<option>----Please Select----</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Extra Coverage Rate</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Sum
										Insured</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										CART Amount</label>
									<div class="col-sm-8">
										<select class="form-control" id="sel1">
											<option>----Please Select----</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Extra Coverage Premium</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
							</div>
						</div>
						<ul align="center" class="pager">
							<button type="button" class="btn btn-primary btn-md">Add
							</button>
							<button type="button" class="btn btn-primary btn-md">Remove
							</button>
						</ul>
						
							<div data-ng-controller="gridController">
								<div data-ui-grid="gridOptions" data-ui-grid-selection
									class="grid"></div>
							</div>
						<!-- <fieldset class="scheduler-border">
							<legend class="scheduler-border">Extra Coverage</legend>
							<div class="panel panel-default">
								<div class="panel-heading">New Business-Named Driver and
									Extra Coverage</div>
							</div>
							<ul align="center" class="pager">
								<button type="button" class="btn btn-primary btn-md">Add
									More drivers</button>
								<button type="button" class="btn btn-primary btn-md">Remove
									drivers</button>
							</ul>
						</fieldset> -->
						<fieldset class="scheduler-border">
							<legend class="scheduler-border">Motorist Personal
								Accident (MPA)</legend>
							<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Select
											Plan</label>
										<div class="col-sm-8">
											<select class="form-control" id="vnumber">
												<option>----Please Select----</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Number of Passengers</label>
										<div class="col-sm-8 ">
											<select class="form-control" id="sel1">
												<option>-Please Select----</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											MPA Premium RM</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
								</div>
							</div>
						</fieldset>
						<fieldset class="scheduler-border">
							<legend class="scheduler-border">Motorist Personal
								Accident (MPA)</legend>
							<font color="red">
								<p>No Payment will be made under this policy for death or
									bodily injury directly or indirectly consequent upon:</p>
								<p>1)age limit below 1 year old and over 70 years old fro
									passengers(S)</p>
								<p>2)age limit below 18 years old and over 70 years old for
									authorized driver/insured</p>
							</font>
						</fieldset>
					</fieldset>
					<ul align="center" class="pager">
						<button onclick="location.href='covernote'" type="submit"
							class="pull-left btn  btn-danger center">Back</button>
						<button onclick="location.href='premium'" type="submit"
							class="pull-right btn  btn-success center">Next</button>
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
</html>