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
		document.getElementById("LOCATION").value="${geographicallocation}";
		var status = true;
		var covernotedrop = document.getElementById("LOCATION").value;
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
					}else if (value.additionalusageid > 0) {
						$('#ADDITIONAL_USAGE').append(
								'<option value="' + value.additionalusageid + '">'
										+ value.additionalusagename + '</option>');
					}else if (value.cnclassid > 0) {
						$('#CN_CLASS').append(
								'<option value="' + value.cnclassid + '">'
										+ value.cnclassname + '</option>');
					}else if (value.vehiclebodyid > 0) {
						$('#VEHICLE_BODY').append(
								'<option value="' + value.vehiclebodyid + '">'
										+ value.vehiclebodyname + '</option>');
					}else if (value.safetycodeid > 0) {
						$('#SAFETY_CODE').append(
								'<option value="' + value.safetycodeid + '">'
										+ value.safetycodename + '</option>');
					}else if (value.driverexperienceid > 0) {
						$('#DRIVER_EXPERIENCE').append(
								'<option value="' + value.driverexperienceid + '">'
										+ value.driverexperiencename + '</option>');
					}else if (value.garagedid > 0) {
						$('#GARAGED').append(
								'<option value="' + value.garagedid + '">'
										+ value.garagedname + '</option>');
					}else if (value.antitheftcodeid > 0) {
						$('#ANTI_THEFT_CODE').append(
								'<option value="' + value.antitheftcodeid + '">'
										+ value.antitheftcodename + '</option>');
					}else if (value.performanceaestheticid > 0) {
						$('#PERFORMANCE_AESTHETIC').append(
								'<option value="' + value.performanceaestheticid + '">'
										+ value.performanceaestheticname + '</option>');
					}else if (value.vehiclecapacityid > 0) {
						$('#CAPACITY_DROP').append(
								'<option value="' + value.vehiclecapacityid + '">'
										+ value.vehiclecapacityname + '</option>');
					}else if (value.functionalmodificationid > 0) {
						$('#FUNCTIONAL_MODIFICATION').append(
								'<option value="' + value.functionalmodificationid + '">'
										+ value.functionalmodificationname + '</option>');
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
				<h3 class="h4" style="color:red;">${sessionScope.user}</h3>
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
						class="icon-bars"> </i></a><a href="index.jsp" class="navbar-brand">
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
					<h4>Covernote</h4>
				</div>
				<div class="card-body">
					<form action="save_covernote_form" method="POST" modelAttribute="covernoteFormData">
						<fieldset class="scheduler-border">
							<legend class="scheduler-border">New Business - Cover
								Note and Vechile</legend>
							<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline"">
										<label for="COVERNOTE_CLASS" class="col-sm-4  control-label">Cover
											Note Class</label>
										<div class="col-sm-8">
											<select name="covernoteclass" class="form-control" value="${covernoteclass }" id="CN_CLASS">
												<option selected="selected" value="0">--SELECT--</option>
											
											</select>
										</div>
									</div>
									<%-- <div class="row form-group form-inline"">
										<label for="masterpolicynumber" class="col-sm-4  control-label">
											Master Policy Number</label>
										<div class="col-sm-8 inner-addon right-addon">
											<input id="masterpolicynumber" type="text" name="masterpolicynumber" value="${masterpolicynumber }" class="form-control" placeholder="Search" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
										</div>
									</div> --%>
									<div class="row form-group form-inline"">
										<label for="COVERNOTE_TYPE" class="col-sm-4  control-label">
											Cover Note Type</label>
										<div class="col-sm-8">
											<select name="covernotetype" value="${covernotetype }" class="form-control" id="COVERNOTE_TYPE">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="row form-group form-inline"">
										<label for="issueddate" class="col-sm-4  control-label">Issued
											Date</label>
										<div class="col-sm-8">
											<input name="issueddate" value="${issueddate }" required id="issueddate" class="form-control" type="date"
												 />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="inceptiondate" class="col-sm-4  control-label">
											Inception Date</label>
										<div class="col-sm-8">
											<input required id="inceptiondate" name="inceptiondate" value="${inceptiondate }"  class="form-control" type="date" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="expirydate" class="col-sm-4  control-label">
											Expiry Date</label>
										<div class="col-sm-8">
											<input required id="expirydate" name="expirydate" value="${expirydate }" class="form-control" type="date"  />
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
										<label for="LOCATION" class="col-sm-4  control-label">Geographical
											Location</label>
										<div class="col-sm-8">
											<select name="geographicallocation"<%--  value="${geographicallocation }"  --%>class="form-control" id="LOCATION">
												<option value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="CLASS_GROUP" class="col-sm-4  control-label">
											Class Group</label>
										<div class="col-sm-8">
											<select name="classgroup" value="${classgroup }" class="form-control" id="CLASS_GROUP">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="VEHICLE_USAGE" class="col-sm-4  control-label">
											Vehicle Usage</label>
										<div class="col-sm-4">
											<select name="vehicleusage" value="${vehicleusage }" class="form-control" id="VEHICLE_USAGE">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
										<div class="col-sm-4">
											<input name="highrisk" value="Y" type="checkbox" id="highrisk">	<h6>High Risk</h6>
										</div>

									</div>
									<div class="row form-group form-inline"">
										<label for="highrisk" class="col-sm-4  control-label">
											</label>
										<div class="col-sm-6">
												 										 
										</div>

									</div>
									<div class="row form-group form-inline"">
										<label for="HIRE_TYPE" class="col-sm-4  control-label">
											Type of Hire Purchase</label>
										<div class="col-sm-8">
											<select name="typeofhirepurchase" value="${typeofhirepurchase }" class="form-control" id="HIRE_TYPE">
												 <option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="OWNERSHIP_TYPE" class="col-sm-4  control-label">
											Ownership Type</label>
										<div class="col-sm-8">
											<select name="ownershiptype" value="${ownershiptype }" class="form-control" id="OWNERSHIP_TYPE">
												 <option value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="safetycode" class="col-sm-4  control-label">
											Safety Code</label>
										<div class="col-sm-8">
											<select class="form-control" name="safetycode" value="${safetycode }" id="SAFETY_CODE">
												<option value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="allriderdriver" class="col-sm-4  control-label">
											Permitted Driver</label>
									
									<fieldset>
										<div class="col-sm-8" id="allriderdriver">
													<input name="allriderdriver" type="checkbox" value="1"> All Rider / Driver												
												<br>
													<input name="youngseniordriver" type="checkbox" value="Y"> Young / Senior Driver
																						
										</div>
								 </fieldset>
								 </div>
									<div class="row form-group form-inline"">
										<label for="DRIVER_EXPERIENCE" class="col-sm-4  control-label">
											Driver Experience</label>
										<div class="col-sm-8">
											<select name="driverexperience" value="${driverexperience }" class="form-control" id="DRIVER_EXPERIENCE">
												 <option value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inssline"">
										<label for="FUNCTIONAL_MODIFICATION" class="col-sm-4  control-label">
											Functional Modification</label>
										<div class="col-sm-8">
											<select name="functionalmodification" value="${functionalmodification }" id="FUNCTIONAL_MODIFICATION" class="form-control">
												 <option value="0">--SELECT--</option>
											</select>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="row form-group form-inline"">
										<label for="region" class="col-sm-4  control-label">
											Region</label>
										<div class="col-sm-8">
											<input required id="region" name="region" value="${region }" class="form-control" type="text"  />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="VEHICLE_TYPE" class="col-sm-4  control-label">
											Vehicle Type</label>
										<div class="col-sm-8">
											<select name="vehicletype"  value="${vehicletype }" class="form-control" id="VEHICLE_TYPE">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="coveragetype" class="col-sm-4  control-labBel">
											Coverage Type</label>
										<div class="col-sm-8">
											<select name="coveragetype" value="${ coveragetype}" class="form-control" id="COVERAGE_TYPE">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="hirepurchase" class="col-sm-4  control-label">
											Hire Purchase</label>
										<div class="col-sm-8 inner-addon right-addon">
											<input name="hirepurchase" value="${hirepurchase }" type="text" class="form-control" placeholder="Search" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="ADDITIONAL_USAGE" class="col-sm-4  control-label">
											Additional Usage</label>
										<div class="col-sm-8">
											<select name="additionalusage" value="${additionalusage }" class="form-control" id="ADDITIONAL_USAGE">
												 <option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="GARAGED" class="col-sm-4  control-label">
											Garaged</label>
										<div class="col-sm-8">
											<select name="garaged" value="${garaged }" class="form-control" id="GARAGED">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="ANTI_THEFT_CODE" class="col-sm-4  control-label">
											Anti-Theft Code</label>
										<div class="col-sm-8">
											<select name="antitheftcode" value="${antitheftcode }" class="form-control" id="ANTI_THEFT_CODE">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="drivinglicensenumber" class="col-sm-4  control-label">
											Driving License Number</label>
										<div class="col-sm-8">
											<input name="drivinglicensenumber" value="${drivinglicensenumber }" required id="drivinglicensenumber" class="form-control" type="text" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="PERFORMANCE_AESTHETIC" class="col-sm-4  control-label">
											Performance Aesthetic</label>
										<div class="col-sm-8">
											<select name="performanceaesthetic" value="${performanceaesthetic }" class="form-control" id="PERFORMANCE_AESTHETIC">
												<option selected="selected" value="0">--SELECT--</option>
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
										<label for="vehiclenumber" class="col-sm-4  control-label">Vehicle
											Number</label>
										<div class="col-sm-8">
											<input name="vehiclenumber" value="${vehiclenumber }" required id="vehiclenumber" class="form-control" type="text" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="makemodel" class="col-sm-4  control-label">
											Make/Model</label>
										<div class="col-sm-8 inner-addon right-addon">
											<input name="makemodel" value="${makemodel }" type="text" class="form-control" placeholder="Search" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
											<!-- <i class="glyphicon glyphicon-search"></i> -->
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="VEHICLE_BODY" class="col-sm-4  control-label">
											Vehicle Body</label>
										<div class="col-sm-8">
											<select name="vehiclebody" value="${vehiclebody }" class="form-control" id="VEHICLE_BODY">
												 <option selected="selected" value="0">--SELECT--</option>												
											</select>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="numberofseats" class="col-sm-4  control-label">Number
											of Seats</label>
										<div class="col-sm-8">
											<input name="numberofseats" value="${numberofseats }" required id="numberofseats" class="form-control" type="text"
												<%-- ng-model="${numberofseats }" --%> />
										</div>
									</div>
								  	<div class="row form-group form-inline"">
										<label for="CAPACITY_DROP" class="col-sm-4 control-label">Capacity</label>
											<div class="col-sm-2">
												<input required id="capacity" name="capacity" value="${capacity }" class="form-control" type="text" />
											<br>
												<select name="tcapacity" value="${tcapacity }" class="form-control" id="CAPACITY_DROP">
													<option selected="selected" value="0">--SELECT--</option>
												</select>
											</div>
									</div> 
									<div class="row form-group form-inline"">
										<label for="chassisnumber" class="col-sm-4  control-label">Chassis
											Number</label>
										<div class="col-sm-8">
											<input required id="chassisnumber" name="chassisnumber" value="${chassisnumber }" class="form-control" type="text"
											/>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="trailernumber" class="col-sm-4  control-label">Trailer
											Number</label>
										<div class="col-sm-8">
											<input required id="trailernumber" name="trailernumber" value="${trailernumber }" class="form-control" type="text"
											/>
										</div>
									</div>
									<%-- <div class="row form-group form-inline"">
										<label for="tcapacity" class="col-sm-4  control-label">Capacity</label>
										<div class="col-sm-8">
											<select name="tcapacity" value="${tcapacity }" class="form-control" id="tcapacity">
												<option>----Please Select----</option>
												<option>2</option>
												<option>3</option>
												<option>4</option>
											</select>
										</div>
									</div> --%>
									<div class="row form-group form-inline"">
										<label for="purchaseprice" class="col-sm-4  control-label">Purchase
											Price</label>
										<div class="col-sm-8">
											<input required id="purchaseprice" name="purchaseprice" value="${purchaseprice }" class="form-control" type="text"/>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="row form-group form-inline"">
										<label for="vehicleapprovalcode" class="col-sm-4  control-label">Vehicle
											Approval Code</label>
										<div class="col-sm-8">
											<input name="vehicleapprovalcode" value="${vehicleapprovalcode }" required id="vehicleapprovalcode" class="form-control" type="text" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="modeldescription" class="col-sm-4  control-label">
											Model Description</label>
										<div class="col-sm-8">
											<input name="modeldescription" value="${modeldescription }" required id="vodeldescription" class="form-control" type="text" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="yearsofmanufacturing" class="col-sm-4  control-label">
											Years of Manufacturing</label>
										<div class="col-sm-8">
											<input name="yearsofmanufacturing" value="${yearsofmanufacturing }" required id="yearsofmanufacturing" class="form-control" type="text"
												 />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="bdm" class="col-sm-4  control-label">
											BDM</label>
										<div class="col-sm-6">
											<input name="bdm" value="${bdm }" required id="bdm_btm" class="form-control" type="text" />
										</div>
									</div>
											
									<div class="row form-group form-inline"">
										<label for="btm" class="col-sm-4  control-label">
										BTM</label>
										<div class="col-sm-6">
											<input name="btm" value="${btm }" required id="bdm_btm" class="form-control" type="text"/>
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="enginemotornumber" class="col-sm-4  control-label">
											Engine/Motor Number</label>
										<div class="col-sm-8">
											<input name="enginemotornumber" value="${enginemotornumber }" required id="enginemotornumber" class="form-control" type="text" />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="logbooknumber" class="col-sm-4  control-label">
											Log Book Number</label>
										<div class="col-sm-8">
											<input name="logbooknumber" value="${logbooknumber }" required id="logbooknumber" class="form-control" type="text"
												 />
										</div>
									</div>
									<div class="row form-group form-inline"">
										<label for="variantseries" class="col-sm-4  control-label">Variant
											Series</label>
										<div class="col-sm-8 inner-addon right-addon">
											<input name="variantseries" value="${variantseries }" id="variantseries" type="text" class="form-control" placeholder="Search" />
											<button class="btn btn-default" type="submit">
												<i class="glyphicon glyphicon-search"></i>
											</button>
											<!-- <i class="glyphicon glyphicon-search"></i> -->
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="vehiclepurchasedate" class="col-sm-4  control-label">
											Vehicle Purchase Date</label>
										<div class="col-sm-8">
											<input name="vehiclepurchasedate" value="${vehiclepurchasedate }" required id="vehiclepurchasedate" class="form-control" type="date"  />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="numberofclaims" class="col-sm-4  control-label">
											Number of Claims</label>
										<div class="col-sm-8">
											<input name="numberofclaims" value="${numberofclaims }" required id="numberofclaims" class="form-control" type="text" />
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
										<label for="vehiclemarketvalue" class="col-sm-4  control-label">Vehicle
											Market Value </label>
										<div class="col-sm-8">
											<input name="vehiclemarketvalue" value="${vehiclemarketvalue }" required id="vehiclemarketvalue" class="form-control" type="text" />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="suminsured" class="col-sm-4  control-label">Sum
											Insured </label>
										<div class="col-sm-8">
											<input name="suminsured" value="${suminsured }" required id="suminsured" class="form-control" type="text"/>
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="trailersuminsured" class="col-sm-4  control-label">Trailer
											Sum Insured </label>
										<div class="col-sm-8">
											<input name="trailersuminsured" value="${trailersuminsured }" required id="trailersuminsured" class="form-control" type="text" />
										</div>
									</div>
								</div>
							</div>
						</fieldset>
						<ul class="pager">
							<button onclick="location.href='quotation'" type="submit" class="pull-left btn  btn-danger center">Back</button>
							<button type="submit" class="pull-right btn  btn-success center">Next</button>
							 <!-- onclick="location.href='nameddrivers'"  -->
						</ul>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>