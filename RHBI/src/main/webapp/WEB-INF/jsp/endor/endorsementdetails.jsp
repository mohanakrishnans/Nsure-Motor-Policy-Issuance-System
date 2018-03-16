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
				<h3 class="h4" style="color:red;">${sessionScope.user}</h3>
			</div>
			<div class="sidenav-header-logo">
				<a href="index.jsp" class="brand-small text-center"> <strong>B</strong><strong
					class="text-primary">D</strong></a>
			</div>
		</div>
		<div class="main-menu">
			<ul id="side-main-menu" class="side-menu list-unstyled">
				<li><a href="quotation"> <i class="icon-home"></i>Quotation</a></li>
					<li><a href="covernote"> <i class="icon-form"></i>New Business</a></li>
					<li><a href="nameddrivers"> <i class="icon-form"></i>Named Drivers</a></li>
					<li><a href="endorsementdetails"><i class="icon-form"></i>Endorsement Details</a></li>
					<li><a href="premium"> <i class="icon-grid"></i>Premium</a></li>
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
					<h4>EndorsementDetails</h4>
				</div>
				<div class="card-body">
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">Endorsement Details</legend>
						<div class="row">
							<div class="col-md-6">
							<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Previous Policy No</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" placeholder="Search" />
											<button class="btn btn-default" ng-click="location.href='Popup'" type="submit">
									</div>
								</div>
						
								
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Cover Note No</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										POC Date</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Endorsement Effective Date</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Issued
										Date</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Endorsement Type</label>
									<div class="col-sm-8">
										<select class="form-control" id="sel1">
											<option>----Please Select----</option>
											<option value="1">Extension Prorate</option>
   											<option value="2">Extension Short Period</option>
   											<option value="3">Interchange Of Vehicle No</option>
   											<option value="4">Change Of Vehicle No</option>
   											<option value="5">Transfer Of Interest</option>
  										 	<option value="6">Caravan Trailer</option>
   											<option value="7">Temporary Permit</option>
										</select>
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Expiry Date</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
							</div>
							</div>
							<ul align="center" class="pager">
							 <button type="button" class="btn btn-primary btn-lg btn-block">Extra Coverage</button>
							<button onclick="location.href='schedule'" type="submit"
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