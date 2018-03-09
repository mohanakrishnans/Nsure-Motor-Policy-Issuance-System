<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nsure Motor Policy Issuance System | CoverNote</title>
 <link rel="shortcut icon"	href="http://localhost/nsure/dashboard/img/favicon.ico">
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
	src="http://localhost/nsure/dashboard/js/angular.min.js"></script>

<script
	src="http://localhost/nsure/dashboard/js/jquery.min.js"></script>

<script
	src="http://localhost/nsure/dashboard/js/angular-messages.min.js"></script>

<script src="http://localhost/nsure/dashboard/js/jquery.min.js"></script>
<script type="text/javascript">
 var app = angular.module("coverNote", ['ngMessages']).controller("covernoteController",
			function($scope) {
				$scope.covernotedrop = null;
				fnendtmotoronload();
			});
	
	function fnendtmotoronload() {
		var status = true;
		var covernotedrop = document.getElementById("COVERNOTE_CLASS").value;
		var CONTEXT_PATH = '<%=request.getContextPath()%>/';
		//alert("mohan "+CONTEXT_PATH);
		$.ajax({
			type : "GET",
			url : CONTEXT_PATH + "covernoteDrop",
			data : covernotedrop,
			contentType : 'application/json; charset=utf-8',
			dataType : 'json',
			success : function(result) {
				$.each(result, function(index, value) {
					if(value.classid > 0){
						$('#VEHICLE_TYPE').append(
								'<option value="' + value.classid + '">'
										+ value.classname + '</option>');
					}else if (value.locid > 0) {
						$('#LOCATION').append(
								'<option value="' + value.locid + '">'
										+ value.locname + '</option>');
					} else if (value.covernotetypeid > 0) {
						$('#COVERNOTE_TYPE').append(
								'<option value="' + value.covernotetypeid + '">'
										+ value.covernotetypename + '</option>');
					}else if (value.coveragetypeid > 0) {
						$('#COVERAGE_TYPE').append(
								'<option value="' + value.coveragetypeid + '">'
										+ value.coveragetypename + '</option>');
					}else if (value.classgroupid > 0) {
						$('#CLASS_GROUP').append(
								'<option value="' + value.classgroupid + '">'
										+ value.classgroupname + '</option>');
					}else if (value.hiretypeid > 0) {
						$('#HIRE_TYPE').append(
								'<option value="' + value.hiretypeid + '">'
										+ value.hiretypename + '</option>');
					}else if (value.ownershipid > 0) {
						$('#OWNERSHIP_TYPE').append(
								'<option value="' + value.ownershipid + '">'
										+ value.ownershipname + '</option>');
					}else if (value.vehicleusageid > 0) {
						$('#VEHICLE_USAGE').append(
								'<option value="' + value.vehicleusageid + '">'
										+ value.vehicleusagename + '</option>');
					}
				});

			}
		});
		return status;
	}
</script>


</head>
<body data-ng-app="coverNote"
	data-ng-controller="covernoteController as tc">
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
						<li><a href="endorsementdetails">EndorsementDetails</a></li>
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
					<h4>Covernote</h4>
				</div>
				<div class="card-body">
					<form class="">
						<fieldset class="scheduler-border">
							<legend class="scheduler-border">New Business - Cover
								Note and Vechile</legend>
							<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Cover
											Note Class</label>
										<div class="col-sm-8">
											<select class="form-control" id="COVERNOTE_CLASS">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Master Policy Number</label>
										<div class="col-sm-8 inner-addon right-addon">
											<input type="text" class="form-control" placeholder="Search" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Cover Note Type</label>
										<div class="col-sm-8">
											<select class="form-control" id="COVERNOTE_TYPE">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Issued
											Date</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="date"
												ng-model="vnumber" />
										</div>
									</div>
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
								</div>
							</div>
						</fieldset>

						<fieldset class="scheduler-border">
							<legend class="scheduler-border">General Vehicle</legend>
							<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Geographical
											Location</label>
										<div class="col-sm-8">
											<select class="form-control" id="LOCATION">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Class Group</label>
										<div class="col-sm-8">
											<select class="form-control" id="CLASS_GROUP">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Vehicle Usage</label>
										<div class="col-sm-6">
											<select class="form-control" id="VEHICLE_USAGE">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>

									</div>
									<div class="row form-group form-inline"">
										<div class="col-sm-4" >
										</div>
										<div class="col-sm-6">
										<div class="row">
											<div class="col-sm-1">
												 <input type="checkbox" value="">
											</div>
											<label for="vnumber" class="col-sm-5  control-label">
											High Risk</label>
										</div>
										</div>

									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Type of Hire Purchase</label>
										<div class="col-sm-8">
											<select class="form-control" id="HIRE_TYPE">
												 <option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Ownership Type</label>
										<div class="col-sm-8">
											<select class="form-control" id="OWNERSHIP_TYPE">
												 <option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Safety Code</label>
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
											Permitted Driver</label>
									</div>
									<div class="panel panel-default">
										<div class=" panel-body ">
											<div class="checkbox col-sm-8">
												<input type="checkbox" value=""> All Rider/Driver
											</div>
											<br>
											<div class="checkbox col-sm-8">
												<input type="checkbox" value=""> Young/Senior Driver
											</div>

										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Driver Experience</label>
										<div class="col-sm-8">
											<select class="form-control" id="sel1">
												<option>----Please Select----</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inssline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Functional Modification</label>
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
											Region</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Vehicle Type</label>
										<div class="col-sm-8">
											<select class="form-control" id="VEHICLE_TYPE">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-labBel">
											Coverage Type</label>
										<div class="col-sm-8">
											<select class="form-control" id="COVERAGE_TYPE">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Hire Purchase</label>
										<div class="col-sm-8 inner-addon right-addon">
											<input type="text" class="form-control" placeholder="Search" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Additional Usage</label>
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
											Garaged</label>
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
											Anti-Theft Code</label>
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
											Driving License Number</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Performance Aesthetic</label>
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
							<legend class="scheduler-border">Vehicle Details</legend>
							<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Vehicle
											Number</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Make/Model</label>
										<div class="col-sm-8 inner-addon right-addon">
											<input type="text" class="form-control" placeholder="Search" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
											<!-- <i class="glyphicon glyphicon-search"></i> -->
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Vehicle Body</label>
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
										<label for="vnumber" class="col-sm-4  control-label">Number
											of Seats</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Capacity</label>
										<div class="col-sm-4">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
										<div class="col-sm-8 inner-addon right-addon">
											<input type="text" class="form-control" placeholder="Search" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
											<!-- <i class="glyphicon glyphicon-search"></i> -->
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Chassis
											Number</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Trailer
											Number</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Capacity</label>
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
										<label for="vnumber" class="col-sm-4  control-label">Purchase
											Price</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Vehicle
											Approval Code</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Model Description</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Years of Manufacturing</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											BDM-BTM</label>
										<div class="col-sm-6">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
										<div class="col-sm-6">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Engine/Motor Number</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">
											Log Book Number</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="vnumber" class="col-sm-4  control-label">Variant
											Series</label>
										<div class="col-sm-8 inner-addon right-addon">
											<input type="text" class="form-control" placeholder="Search" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
											<!-- <i class="glyphicon glyphicon-search"></i> -->
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="vnumber" class="col-sm-4  control-label">
											Vehicle Purchase Date</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="date"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="vnumber" class="col-sm-4  control-label">
											Number of Claims</label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
								</div>
							</div>
						</fieldset>

						<fieldset class="scheduler-border">
							<legend class="scheduler-border">Sum Insured Details</legend>
							<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline">
										<label for="vnumber" class="col-sm-4  control-label">Vehicle
											Market Value </label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="vnumber" class="col-sm-4  control-label">Sum
											Insured </label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="vnumber" class="col-sm-4  control-label">Trailer
											Sum Insured </label>
										<div class="col-sm-8">
											<input required id="vnumber" class="form-control" type="text"
												ng-model="vnumber" />
										</div>
									</div>
								</div>
							</div>
						</fieldset>
						<ul class="pager">
							<button onclick="location.href='quotation'" type="submit"
								class="pull-left btn  btn-danger center">Back</button>
							<button onclick="location.href='nameddrivers'" type="submit"
								class="pull-right btn  btn-success center">Next</button>
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>