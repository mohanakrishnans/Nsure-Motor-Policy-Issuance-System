<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Schedule</title>
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
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angular.js/1.3.16/angular.min.js"></script>
</head>
<body>
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
			</div>
		</div>
		</nav> </header>
		<div class="card-body">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<h4>Schedule Details | New Business</h4>
				</div>				
				<div class="card-body">
				<fieldset class="scheduler-border">
					<legend class="scheduler-border">Master Policy Details</legend>
					<div class="row">
						<div class="col-md-6">
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Master Policy No.</label>
								<div class="col-sm-8 inner-addon right-addon">
									<input type="text" class="form-control" placeholder="Search" />
									<button class="btn btn-default" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">Issued
									Date</label>
								<div class="col-sm-8">
									<input required id="vnumber" class="form-control" type="date"
										ng-model="vnumber" />
								</div>
							</div>
						</div>
						<div class="col-md-6">

							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Inception Date</label>
								<div class="col-sm-8">
									<input required id="vnumber" class="form-control" type="date"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Expiry Date</label>
								<div class="col-sm-8">
									<input required id="vnumber" class="form-control" type="date"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">Policy
									Type</label>
								<div class="col-sm-8">
									<select class="form-control" id="sel1">
										<option>----Please Select----</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
									</select>
								</div>
							</div>
						</div>

					</div>
				</fieldset>
				<fieldset class="scheduler-border">
					<legend class="scheduler-border">Travel Area Details</legend>
					<div class="row">
						<div class="col-md-6">
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">Area</label>
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
								<label for="vnumber" class="col-sm-4  control-label">Area
									Description</label>
								<div class="col-sm-8">
									<textarea class="form-control" rows="4" id="comment"></textarea>
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">Travel
									Type</label>
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
								<label for="vnumber" class="col-sm-4  control-label">Purpose
									of Travel</label>
								<div class="col-sm-8">
									<select class="form-control" id="sel1">
										<option>----Please Select----</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</fieldset>
				<fieldset class="scheduler-border">
					<legend class="scheduler-border">Travel Area Details</legend>
					<div class="row">
						<div class="col-md-6">
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Insured Name</label>
								<div class="col-sm-8">
									<input required id="vnumber" class="form-control" type="text"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									New IC No</label>
								<div class="col-sm-8">
									<input required id="vnumber" class="form-control" type="text"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Others Type Id</label>
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
									Others Type No.</label>
								<div class="col-sm-8">
									<input required id="vnumber" class="form-control" type="text"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Gender</label>
								<div class="col-sm-8">
									<select class="form-control" id="sel1">
										<option>Female</option>
										<option>Male</option>
									</select>
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Marital Status</label>
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
									Occupation Code</label>
								<div class="col-sm-8 inner-addon right-addon">
									<input type="text" class="form-control" placeholder="Search" />
									<button class="btn btn-default" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Occupation Description</label>
								<div class="col-sm-8 inner-addon right-addon">
									<input required id="vnumber" class="form-control" type="text"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Occupation class</label>
								<div class="col-sm-8">
									<select class="form-control" id="sel1">
										<option>----Please Select----</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Date of Birth</label>
								<div class="col-sm-8">
									<input required id="vnumber" class="form-control" type="date"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Age</label>
								<div class="col-sm-8 inner-addon right-addon">
									<input required id="vnumber" class="form-control" type="text"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Address</label>
								<div class="col-sm-8 inner-addon right-addon">
									<input required id="vnumber" class="form-control" type="text"
										ng-model="vnumber" /></br> <input required id="vnumber"
										class="form-control" type="text" ng-model="vnumber" /></br> <input
										required id="vnumber" class="form-control" type="text"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Post Code</label>
								<div class="col-sm-2">
									<input required id="" class="form-control" type="text"
										ng-model="vnumber" /></br>
								</div>
								<div class="col-sm-2">
									<input required id="" class="form-control" type="text"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									State</label>
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
									Nationality</label>
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
									Relationship with Proposer</label>
								<div class="col-sm-8">
									<select class="form-control" id="sel1">
										<option>----Please Select----</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
									</select>
								</div>
							</div>

						</div>
					</div>
				</fieldset>
				</div>
			</div>
		</div>
	</div>
</body>
</html>