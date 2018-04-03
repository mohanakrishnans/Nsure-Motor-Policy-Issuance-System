<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%if(session.getAttribute("user")!=null && session.getAttribute("authenticated").equals(true)){
	
   //response.sendRedirect(request.getContextPath()+"/quotation/");
}else{
	response.sendRedirect("/RHBI/");
}
%>
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
<!-- 
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
					<h4>Recepit Entry-New Business</h4>
				</div>
				<div class="card-body">
				<fieldset class="scheduler-border">
					<legend class="scheduler-border">Payment Details</legend>
					<div class="row">
						<div class="col-md-6">
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">Payment
									Mode</label>
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
									Source Bank</label>
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
									Deposit Bank Code</label>
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
									Payment Gateway</label>
								<div class="col-sm-8 inner-addon right-addon">
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
								<label for="vnumber" class="col-sm-4  control-label">Cheque/Direct
									Bank in Slip No</label>
								<div class="col-sm-8">
									<input required id="vnumber" class="form-control" type="text"
										ng-model="vnumber" />
								</div>
							</div>
							<div class="row form-group form-inline"">
								<label for="vnumber" class="col-sm-4  control-label">
									Source Bank Branch</label>
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
									Cheque/Pay in Slip Date</label>
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
								<label for="vnumber" class="col-sm-4  control-label">Total
									Amount</label>
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
				</fieldset>				
				<ul align="center" class="pager">
					<button onclick="location.href='covernote'" type="submit"
						class="pull-left btn  btn-danger center">Back</button>
					<button onclick="location.href='endorsementdetails'" type="submit"
						class="pull-right btn  btn-success center">Next</button>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>