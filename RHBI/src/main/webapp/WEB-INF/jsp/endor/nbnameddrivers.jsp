<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<script type="text/javascript">
      var CONTEXT_PATH = '<%=request.getContextPath()%>/';
      window.localStorage.clear();
</script>
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

<script src='resources/js/angular.min.js'></script>
<script src='resources/js/angular-touch.min.js'></script>
<script src='resources/js/angular-animate.min.js'></script>
<script src='resources/js/ui-grid.min.js'></script>
<link rel='stylesheet prefetch' href='resources/css/ui-grid.css'>
<script src="resources/js/index.js"></script>
<link rel='stylesheet prefetch' href='resources/css/ui-grid.min.css'>
<link rel='stylesheet prefetch' href='resources/css/style.css'>

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
				<h3 class="h4" style="color: red;">${sessionScope.user}</h3>
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
					<li><a href="cnoptions"> <i class="icon-form"></i>CN Options</a></li><!-- 
					<li><a href="nameddrivers"> <i class="icon-form"></i>Named Drivers</a></li> -->
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
						class="icon-bars"> </i></a> <a href="index.jsp" class="navbar-brand">
						<div class="brand-text d-none d-md-inline-block">
							<strong class="text-primary">Nsure</strong>
						</div>
					</a>
				</div>
				<button type='submit' onclick="location.href='logout'"
					class="btn btn-danger pull-right">Log out</button>
			</div>
		</div>
		</nav> </header>
		<div class="card-body">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<h4>New Business-Named Driver and Extra Coverage</h4>
				</div>
				<div class="card-body">
				<form action="mpa" method="POST"
						modelAttribute="mpadata" id="mpaData">
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">Named Drivers</legend>
						<div data-ng-controller="NamedDrivers">
							<div data-ui-grid="gridOptions" data-ui-grid-selection
								class="named-grid">
							</div>
						</div>

						<ul align="center" class="pager">
							<!-- <button type="button" class="btn btn-primary btn-md" ng-click="addNewRow()"
							>Add
								More drivers</button> -->
								<button type="button" class="btn btn-primary btn-md" data-toggle="modal" data-target="#namedDrivers">Add
								More drivers</button>
							<button type="button" class="btn btn-primary btn-md">Remove
								drivers</button>
						</ul>
					</fieldset>
					
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">Extra Coverage</legend>
							<form action="extraCoverageSave" id="extraData" method="post"	modelAttribute="extraCoverage">
								<div class="row">
									<div class="col-md-6">
										<div class="row form-group form-inline"">
											<label for="extracoverageclass" class="col-sm-4  control-label">Extra
												Coverage Class</label>
											<div class="col-sm-8">
												<input id="extracoverageclass" class="form-control" type="text" name="extracoverageclass" />
												<!-- <select class="form-control" id="sel1">
													<option>----Please Select----</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
												</select> -->
											</div>
										</div>
										<div class="row form-group form-inline"">
											<label for="cartdays" class="col-sm-4  control-label">
												CART Days</label>
											<div class="col-sm-8 inner-addon right-addon">
												<select name="cartdays" class="form-control" id="cartdays">
													<option value="0">--Select--</option>
													<option value="100">100</option>
													<option value="200">200</option>
													<option value="300">300</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline"">
											<label for="extracoveragerate" class="col-sm-4  control-label">
												Extra Coverage Rate</label>
											<div class="col-sm-8">
												<input   id="extracoveragerate" class="form-control" type="text"
													name="extracoveragerate" />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="row form-group form-inline"">
											<label for="suminsured" class="col-sm-4  control-label">Sum
												Insured</label>
											<div class="col-sm-8">
												<input   id="suminsured" class="form-control" type="text"
													name="suminsured" />
											</div>
										</div>
										<div class="row form-group form-inline"">
											<label for="cartamount" class="col-sm-4  control-label">
												CART Amount</label>
											<div class="col-sm-8">
											<input   id="cartamount" class="form-control" type="text"
													name="cartamount" />
												<!-- <select name class="form-control" id="cartamount">
													<option>----Please Select----</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
												</select> -->
											</div>
										</div>
										<div class="row form-group form-inline"">
											<label for="extracoveragepremium" class="col-sm-4  control-label">
												Extra Coverage Premium</label>
											<div class="col-sm-8">
												<input   id="extracoveragepremium" class="form-control" type="text"
													name="extracoveragepremium" />
											</div>
										</div>
									</div>
								</div>
								<ul align="center" class="pager">
									<button type="submit"  form="extraData" class="btn btn-primary btn-md">Add
									</button>
									<button type="button" class="btn btn-primary btn-md">Remove
									</button>
								</ul>					
								<div data-ng-controller="extraCoverage">
									<div data-ui-grid="gridOptions" data-ui-grid-selection
										class="extracoverage-grid">
									</div>
								</div>
						 </form>					 
						<fieldset class="scheduler-border">
							<legend class="scheduler-border">Motorist Personal Accident (MPA)</legend>
								<div class="row">
									<div class="col-md-6">
										<div class="row form-group form-inline"">
											<label for="selectplan" class="col-sm-4  control-label">Select
												Plan</label>
											<div class="col-sm-8">
												<select name="selectplan" class="form-control" id="selectplan">
													<option value="0">--Select--</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="0">3</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline"">
											<label for="noofpassengers" class="col-sm-4  control-label">
												Number of Passengers</label>
											<div class="col-sm-8 ">
												<select name="noofpassengers" class="form-control" id="noofpassengers">
													<option value="0">--Select--</option>
													<option value="10">10</option>
													<option value="50">50</option>
													<option value="100">100</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline"">
											<label for="mpapremium" class="col-sm-4  control-label">
												MPA Premium RM</label>
											<div class="col-sm-8">
												<input name="mpapremium" required id="mpapremium" class="form-control" type="text"
												 />
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
						<button type="submit" form="mpaData"
							class="pull-right btn  btn-success center">Next</button>
					</ul>				
				 </form>				
			</div>
		</div>
	</div>
	<div class="modal fade" id="namedDrivers" role="dialog">
		<div class="modal-dialog modal-lg" id="namedDrivers">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Add Drivers</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="card-body">
					<div class="card">
						<div class="card-header d-flex align-items-center">
							<h4>Named Driver</h4>	
						</div>
						<div class="card-body">
						 <!--  action="saveNamedDrivers"  modelAttribute="saveNamedDriversData" --> 
							<form  method="POST" data-ng-controller="NamedPopup">
								<fieldset class="scheduler-border">
									<legend class="scheduler-border">Named Drivers  </legend>
									<div class="row">
										<div class="col-md-6">
											<div class="row form-group form-inline">
												<label for="address" class="col-sm-4 control-label">New
													IC No</label>
												<div class="col-sm-8">
													<input ng-value="{{user.namednewicno}}" ng-model="user.namednewicno" id="uname"  
													required class="form-control" type="number" />
													<!--   name="namednewicno"  -->
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="address" class="col-sm-4 control-label">Name</label>
												<div class="col-sm-8">
													<input ng-value="{{user.nameddrivername}}"  ng-model="user.nameddrivername"  name="nameddrivername" required class="form-control" type="text" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="address" class="col-sm-4 control-label">Old
													IC No</label>
												<div class="col-sm-8">
													<input ng-value="{{user.namedoldicno}}"  ng-model="user.namedoldicno" name="namedoldicno" required class="form-control" type="text" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="address" class="col-sm-4 control-label">Age</label>
												<div class="col-sm-8">
													<input ng-value="{{user.namedage}}"  ng-model="user.namedage" name="namedage" required class="form-control" type="number" />
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="row form-group form-inline">
												<label for="address" class="col-sm-4 control-label">Experience</label>
												<div class="col-sm-8">
													<input ng-value="{{user.nameddriverexperience}}"  ng-model="user.nameddriverexperience" name="nameddriverexperience" required class="form-control" type="text" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="address" class="col-sm-4 control-label">Gender</label>
												<div class="col-sm-8">
													<input ng-value="{{user.namedgender}}"  ng-model="user.namedgender" name="namedgender" required class="form-control" type="text" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="address" class="col-sm-4 control-label">Relationship</label>
												<div class="col-sm-8">
													<input ng-value="{{user.nameddriverrelationship}}"  ng-model="user.nameddriverrelationship" name="nameddriverrelationship" required class="form-control" type="text" />
												</div>
											</div>
											
										</div>
									</div>
								</fieldset>
								<button ng-click="submit()" type="submit"  data-dismiss="modal"  class="btn  btn-success center pull-right" >Next</button>
							
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>