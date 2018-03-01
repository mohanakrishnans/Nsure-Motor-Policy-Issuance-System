<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nsure Motor Policy Issuance System | Premium</title>
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

<script type="text/javascript">
	var app = angular.module('myApp', []);
	app.controller('datCtrl', function($scope) {
		$scope.today = new Date();
	});
</script>
</head>

<body ng-app="myApp" ng-controller="datCtrl">
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
						<li><a href="endorsementdetails">EndorsementDetails</a></li>
					</ul></li>
				<li><a href="premium"><i class="icon-grid"></i>Premium
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
					<h4>New Business | Premium</h4>
				</div>
				<div class="card-body">
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">Sum Insured Details</legend>
						<div class="row">
							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Sum
										Insured RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Trailer Sum Insured RM</label>
									<div class="col-sm-8 inner-addon right-addon">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										All Rider Amount RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Basic
										Premium RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Trailer Premium RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Total Basic RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">NCD Source</legend>
						<div class="row">
							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">NCD
										Vehicle Number</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Policy Number</label>
									<div class="col-sm-8 inner-addon right-addon">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Policy
										Expiry Date</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="date"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">NCD
										Effective Date</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="date"
											ng-model="vnumber" />
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">NCD
										From</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" placeholder="Search" />
										<button class="btn btn-default" type="submit">
											<i class="glyphicon glyphicon-search"></i>
										</button>
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Policy Effective Date</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="date"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										NCD Allowed Percent</label>
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
						<ul align="center" class="pager">
							<button type="button" class="btn btn-primary btn-md">Clear
								NCD</button>
							<button type="button" class="btn btn-primary btn-md">NCD
								Enquiry</button>
						</ul>
					</fieldset>
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">Premium Details</legend>
						<div class="row">
							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Annual
										Premium RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">NCD
										Amount RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Gross
										Premium RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Voluntry
										Excess Discount RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">GST
										% %</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
									<label for="vnumber" class="col-sm-4  control-label">RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">GST
										on Commission % %</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
									<label for="vnumber" class="col-sm-4  control-label">RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Amount
										Payable by Agent RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Act
										Premium RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">After
										Loading RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Extra
										Coverage RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Stamp
										Duty RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Fleet
										Discount RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Commission
										%</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
									<label for="vnumber" class="col-sm-4  control-label">RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Amount
										Payable by Client RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>

								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Excess
										Damage Claim RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Voluntary
										Ecess %</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
									<label for="vnumber" class="col-sm-4  control-label">RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
							</div>
						</div>
						<font color="red"> (For Information Only) </font>
					</fieldset>
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">Motorist Personal
							Accident</legend>
						<div class="row">
							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Select Plan</label>
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
									<label for="vnumber" class="col-sm-4  control-label">MPA
										Premium RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">GST
										% %</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
									<label for="vnumber" class="col-sm-4  control-label">RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">GST
										on Commission % %</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
									<label for="vnumber" class="col-sm-4  control-label">RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Amount
										Payable by Agent RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">
										Number of Passenger(s)</label>
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
									<label for="vnumber" class="col-sm-4  control-label">Stamp
										Duty RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Commission
										% %</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
									<label for="vnumber" class="col-sm-4  control-label">RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
								<div class="row form-group form-inline"">
									<label for="vnumber" class="col-sm-4  control-label">Amount
										Payable by Client RM</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											ng-model="vnumber" />
									</div>
								</div>
							</div>
						</div>
					</fieldset>
					<u>AGREED VALUE INDICATOR</u></br> <input type="checkbox" value="">
					ENDORSEMENT 87-AGREED VALUE
					<ul align="center" class="pager">
						<button onclick="location.href='nameddrivers'" type="button" class="btn btn-danger btn-md">Back</button>
						<button type="button" class="btn btn-primary btn-md">Save</button>
						<button type="button" class="btn btn-primary btn-md">Print
							and Send to JPJ</button>
						<button type="button" class="btn btn-primary btn-md">MyEG
							Road Tax Renewal</button>
						<button type="button" class="btn btn-danger btn-md">Cancel</button>
					</ul>
					<font color="red">This case is under Risk for the below
						reasons.Approval is required from Branch Admnistrator. </font></br> <b>
						Vehicle Age Referred</b>
						
				</div>
			</div>
		</div>
	</div>

</body>
</html>
<!-- <div>
		<label for="numberEdit">Previous Policy No:</label> <input
			id="numberEdit" type="text" ng-model="numberValue" /> <br />
	</div>

	<div>
		<label for="numberEdit">Cover Note No:</label> <input id="numberEdit"
			type="text" ng-model="numberValue" /> <br />
	</div>

	<div>
		<label for="numberEdit">POC Date:</label> <input id="numberEdit"
			type="text" ng-model="numberValue" /> <br />
	</div>

	<div>
		<label for="numberEdit">Issued Date:</label> <input id="numberEdit"
			type="text" ng-model="numberValue" /> <br />
	</div>

	<div>
		<label for="numberEdit">Endorsement Effective Date:</label> <input>{{
		today | date }}</input> <br />

	</div>

	<div>
		<label for="numberEdit">Expiry Date:</label> <input id="numberEdit"
			type="text" ng-model="numberValue" /> <br />
	</div>

	<div>
		<label for="EndorsementTypeEdit">Endorsement_Type:</label> <select
			ng-model="drpContactType">
			<option value="0">--Select--</option>
			<option value="1">Extension Prorate</option>
			<option value="2">Extension Short Period</option>
			<option value="3">Interchange Of Vehicle No</option>
			<option value="4">Change Of Vehicle No</option>
			<option value="5">Transfer Of Interest</option>
			<option value="6">Caravan Trailer</option>
			<option value="7">Temporary Permit</option>

		</select>

	</div>
	<div ng-if="drpContactType=='4'">
		<div>
			<label for="numberEdit">New IC No:</label> <input id="numberEdit"
				type="text" ng-model="numberValue" /> <br />
		</div>
	</div>
	<div ng-if="drpContactType=='1'">
		<div>
			<label for="numberEdit">Business Reg No:</label> <input
				id="numberEdit" type="text" ng-model="txtBusinessRegNo" />
		</div>
	</div> -->
