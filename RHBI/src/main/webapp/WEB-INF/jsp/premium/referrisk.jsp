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
<script src="<%=request.getContextPath() %>/dashboard/messenger.min.js"></script>
<script
	src="http://localhost/nsure/dashboard/js/messenger-theme-flat.js"></script>

<!-- <script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angular.js/1.3.16/angular.min.js"></script> -->
<script src="resources/js/angular.min.js"></script>
<script src="resources/js/angular-touch.min.js"></script>
<script src="resources/js/angular-animate.min.js"></script>
<script src="resources/js/ui-grid.min.js"></script>
<script src="resources/js/index.js"></script>
<link rel="stylesheet prefetch" href="resources/css/ui-grid.min.css" /></head>
<style>

</style>
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

						<li><a href="endorsementdetails">Endorsement Details</a></li>
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
		<div class="card-body" data-ng-app="app"  data-ng-controller="QuotationController as qt" id="endorParent" >
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
										Refer Risk</label>
									<div class="col-sm-8">
										<input required id="vnumber" class="form-control" type="text"
											 placeholder="Search" />
										<button class="btn btn-default" type="submit"
											data-toggle="modal" data-target="#myModal">
									</div>
								</div>


								
								
								
							
								
								
						<ul align="center" class="pager">
							<button type="button" class="btn btn-primary btn-md">Approve
							</button>
							<button type="button" class="btn btn-primary btn-md">Decline
							</button>
							<button type="button" class="btn btn-primary btn-md">Submit
							</button>
						

						</ul>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog modal-lg">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">Modal Header</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>

				</div>
				<div class="modal-body" ng-app="app">
				
					<div  ng-controller="covernoteGrid" id="endorchild">					
						<div>
							<div data-ui-grid="gridOptions" data-ui-grid-selection
								class="grid"></div>
						<button type="button" class="btn btn-success" ng-click="getSelectedRows()">Get Selected Rows</button>
 						 <strong>SelectedRowCount:</strong> <span ng-bind="mySelectedRows.length"></span>		
								
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>


</div>
</body>
</html>