<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js"
	style="height: 100%; width: 100%; background-color: #EFF2F7;">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
<title>Nsure Motor Policy Issuance System | Quotation</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">


<!-- 
<link rel="shortcut icon"
	href="appresources/dashboard/img/favicon.ico">
<link rel="stylesheet"
	href="appresources/dashboard/css/bootstrap.min.css">
<link rel="stylesheet"
	href="appresources/dashboard/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="appresources/dashboard/css/fontastic.css">
<link rel="stylesheet"
	href="appresources/dashboard/css/style.default.premium.css"
	id="theme-stylesheet">
<link rel="stylesheet"
	href="appresources/dashboard/css/custom.css">
<script src="appresources/dashboard/js/jquery.min.js"></script>
<script src="appresources/dashboard/js/bootstrap.min.js"></script>
<script src="appresources/dashboard/js/messenger.min.js"></script>
<script
	src="appresources/dashboard/js/messenger-theme-flat.js"></script>
<script src="appresources/dashboard/js/home-premium.js"></script> 

<!-- <script
	src="appresources/dashboard/js/angular.min.js"></script>

<script
	src="appresources/dashboard/js/jquery.min.js"></script>

<script
	src="appresources/dashboard/js/angular-messages.min.js"></script>
	<script
	src="http://localhost/nsure/dashboard/js/angular.min.js"></script>

<script
	src="http://localhost/nsure/dashboard/js/jquery.min.js"></script>

<script
	src="http://localhost/nsure/dashboard/js/angular-messages.min.js"></script>

-->
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

<script src="http://localhost/nsure/dashboard/js/angular.min.js"></script>

<script src="http://localhost/nsure/dashboard/js/jquery.min.js"></script>
<script src="//code.angularjs.org/snapshot/angular.min.js"></script>
<script src="//code.angularjs.org/snapshot/angular-messages.js"></script>
<script src="script.js"></script>

<script type="text/javascript" src="resources/js/validate.js"></script>

<script type="text/javascript">
 var app = angular.module("quotation", ['ngMessages']).controller("quotationController",
			function($scope) {
				$scope.contactId = null;
				fnendtmotoronload();
			});
	//var app = angular.module('app', ['ngMessages']);
	
	function fnendtmotoronload() {
		var status = true;
		var contactId = document.getElementById("CONTACT_TYPE").value;
		var CONTEXT_PATH = '<%=request.getContextPath()%>/';

		$.ajax({
			type : "GET",
			url : CONTEXT_PATH + "quotationDrop",
			data : contactId,
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
					} else if (value.salutationid > 0) {
						$('#SALUTATION').append(
								'<option value="' + value.salutationid + '">'
										+ value.salutationname + '</option>');
					}
				});

			}
		});
		return status;
	}
</script>


</head>

<body class="" data-ng-app="quotation"
	data-ng-controller="quotationController as tc" id="ENDOR_NON_JPJ_MOTOR">
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
					<li><a href="quotation"> <i class="icon-home"></i>Quotation</a></li>
					<li><a href="covernote"> <i class="icon-form"></i>New Business</a></li>
					<li><a href="nameddrivers"> <i class="icon-form"></i>Named Drivers</a></li>
					<li><a href="endorsementdetails"><i class="icon-form"></i>Endorsement Details</a></li>
					<li><a href="premium"> <i class="icon-grid"></i>Premium</a></li>
					<!-- <li><a href="#endorsement" aria-expanded="false"
						data-toggle="collapse"> <i class="fa fa-bar-chart"></i>Endorsement
					</a>
					
						<ul id="endorsement" class="collapse list-unstyled "> -->
					
					<!-- 	<li><a href="endorsementdetails">Endorsement Details</a></li>
						</ul></li>  
					
					</a>   <ul id="tablesDropdown" class="collapse list-unstyled ">
							<li><a href="tables.html">Bootstrap tables</a></li>
							<li><a href="tables-datatable.html">Datatable</a></li>
						</ul></li>-->
				</ul>
			</div>
		</div>
	</nav>
	<div class="page">
		<header class="header">
			<nav class="navbar">
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
			</nav>
		</header>
		<div class="card-body">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<h4>Quotation | Client Profile</h4>
				</div>
				<div class="card-body">
					<form action="save_quotation_form" method="POST"
						modelAttribute="userFormData">
						<fieldset class="scheduler-border">
							<legend class="scheduler-border">Account Code / Branch
								Details</legend>
							<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline">
										<label for="sourceType" class="col-sm-4 control-label">Source
											Type </label>
										<div class="col-sm-8">
											<select name="sourceType" required id="SOURCE_TYPE"
												class="form-control">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="accountCode" class="col-sm-4 control-label">Account
											Code</label>
										<div class="col-sm-8">
											<input name="accountCode" required id="accountCode"
												class="form-control" type="number"
												data-ng-model="accountCode"
												onKeyPress="if(this.value.length==2) return false;" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="row form-group form-inline">
										<label for="branch" class="col-sm-4 control-label">Branch</label>
										<div class="col-sm-8">
											<input name="branch" required id="branch"
												class="form-control" type="text" maxlength="10"
												data-ng-model="branch"
												onkeypress="return onlyAlphabets(event,this);" />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="accountName" class="col-sm-4 control-label">Account
											Name</label>
										<div class="col-sm-8">
											<input name="accountName" required id="accountName"
												class="form-control" type="text" maxlength="10"
												data-ng-model="accountName"
												onkeypress="return onlyAlphabets(event,this);" />
										</div>
									</div>
								</div>
							</div>
						</fieldset>

						<hr>

						<!-- <div class="form-horizontal"> -->
						<div class="row">
							<div class="col-md-6">
								<div class="row form-group form-inline">
									<label for="CONTACT_TYPE" class="col-sm-4 control-label">Contact_Type:</label>
									<div class="col-sm-4">
										<select name="contactType" required id="CONTACT_TYPE"
											class="form-control" data-ng-model="drpContactType">
											<option selected="selected" value="0">--SELECT--</option>
										</select>
									</div>
								</div>
							</div>
						</div>

						<hr>
						<div class="form-horizontal" data-ng-if="drpContactType=='1'">
							<fieldset class="scheduler-border">
								<legend class="scheduler-border">Individual</legend>
								<div class="row">
									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label for="newicno" class="col-sm-4 control-label">New
												IC No:</label>
											<div class="col-sm-8">
												<input name="NewIcNo" required id="newicno" type="number"
													class="form-control" data-ng-model="newicnoValue"
													onKeyPress="if(this.value.length==12) return false;"
													onChange="newIcNo()" />
											</div>
											<!-- <div data-ng-messages="form-horizontal.newIcNo.$error" style="color:maroon" role="alert">
												<div data-ng-message="required">You did not enter a field</div>
												<div data-ng-message="minlength">Your field is too short</div>
												<div data-ng-message="maxlength">Your field is too long</div>
											</div>-->
										</div>
										<div class="row form-group form-inline">
											<label for="oldicno" class="col-sm-4 control-label">Old
												IC No / Passport No:</label>
											<div class="col-sm-8">
												<input name="OldIcNo" required id="oldicno" type="text"
													class="form-control" data-ng-model="oldicnoValue"
													maxlength="20" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="name" class="col-sm-4 control-label">Name:</label>
											<div class="col-sm-8">
												<input name="Name" required id="name" class="form-control"
													type="text" maxlength="100" data-ng-model="nameValue"
													onkeypress="return onlyAlphabets(event,this);" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="SALUTATION" class="col-sm-4 control-label">Salutation:</label>
											<div class="col-sm-8">
												<select name="Salutation" required id="SALUTATION"
													class="form-control" data-ng-model="salutationValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option selected="selected" value="1">Mr</option>
													<option selected="selected" value="2">Mrs</option>
													<option selected="selected" value="3">Ms</option>
													<option selected="selected" value="4">Dr</option>
													<option selected="selected" value="5">Prof</option>
												</select>
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="nationality" class="col-sm-4 control-label">Nationality:</label>
											<div class="col-sm-8">
												<select name="Nationality" required id="nationality"
													class="form-control" data-ng-model="drpnationalityValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option selected="selected" value="1">INDIAN</option>
													<option selected="selected" value="2">MYLASIAN</option>
													<option selected="selected" value="3">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="race" class="col-sm-4 control-label">Race:</label>
											<div class="col-sm-8">
												<select name="Race" required id="race" class="form-control"
													data-ng-model="drpraceValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option selected="selected" value="1">BLACK</option>
													<option selected="selected" value="2">WHITE</option>
													<option selected="selected" value="3">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="dob" class="col-sm-4 control-label">Date
												Of Birth:</label>
											<div class="col-sm-8">
												<input name="DateOfBirth" required class="form-control"
													id="dob" type="date" value="" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="age" class="col-sm-4 control-label">Age</label>
											<div class="col-sm-8">
												<input name="Age" required class="form-control" id="age"
													type="number"
													onKeyPress="if(this.value.length==2) return false;" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gender" class="col-sm-4 control-label">Gender:</label>
											<div class="col-sm-8">
												<input name="Gender" required class="form-control"
													id="gender" type="text" />
												<!--<select name="Gender" required id="gender"
													class="form-control">
													 <option selected="selected" value="0">--SELECT--</option>
													<option value="1">MALE</option>
													<option value="2">FEMALE</option> 
												</select>-->
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="maritalstatus" class="col-sm-4 control-label">Marital
												Status:</label>
											<div class="col-sm-8">
												<select name="MaritalStatus" required id="maritalstatus"
													class="form-control" data-ng-model="maritalstatusValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="SINGLE">SINGLE</option>
													<option value="MARRIED">MARRIED</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="occupation" class="col-sm-4 control-label">Occupation:</label>
											<div class="col-sm-8">
												<select name="Occupation" required id="occupation"
													class="form-control" data-ng-model="occupationValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option selected="selected" value="1">EMPLOYED</option>
													<option selected="selected" value="2">BUSINESS</option>
													<option selected="selected" value="3">HOUSE WIFE</option>
													<option selected="selected" value="4">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregistered" class="col-sm-4 control-label">GST
												Registered:</label>
											<div class="col-sm-8">
												<select name="GstRegistered" required id="gstregistered"
													class="form-control" data-ng-model="gstregisteredValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregistrationno" class="col-sm-4 control-label">GST
												Registration No:</label>
											<div class="col-sm-8">
												<input name="GstRegistrationNo" required
													class="form-control" id="gstregistrationno" type="text"
													data-ng-model="gstregistrationnoValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregdate" class="col-sm-4 control-label">GST
												Reg Date:</label>
											<div class="col-sm-8">
												<input name="GstRegDate" required class="form-control"
													id="gstregdate" type="date" data-ng-model="gstregdateValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstexpirydate" class="col-sm-4 control-label">GST
												Expiry Date:</label>
											<div class="col-sm-8">
												<input name="GstExpiryDate" required class="form-control"
													id="gstexpirydate" type="date"
													data-ng-model="gstexpirydateValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="website" class="col-sm-4 control-label">Website:</label>
											<div class="col-sm-8">
												<input name="Website" required class="form-control"
													id="website" type="text" data-ng-model="websiteValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="employmentstatus" class="col-sm-4 control-label">Employment
												Status:</label>
											<div class="col-sm-8">
												<select name="EmploymentStatus" required
													id="employmentstatus" class="form-control"
													data-ng-model="employmentstatusValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6">

										<div class="row form-group form-inline">
											<label for="trafficviolation" class="col-sm-4 control-label">Traffic
												Violation:</label>
											<div class="col-sm-8">
												<select name="TrafficViolation" required
													id="trafficviolation" class="form-control"
													data-ng-model="trafficviolationValue">
													<option selected="selected" value="0">--SELECT--</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="email" class="col-sm-4 control-label">E-mail:</label>
											<div class="col-sm-8">
												<input name="Email" required class="form-control" id="email"
													type="email" data-ng-model="emailValue" />
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="vipstatus" class="col-sm-4 control-label">VIP
												Status:</label>
											<div class="col-sm-8">
												<select name="VipStatus" required id="vipstatus"
													class="form-control" data-ng-model="vipstatusValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<fieldset class="scheduler-border">
											<legend class="scheduler-border">Permanent Address</legend>
											<div class="row form-group form-inline">
												<label for="address" class="col-sm-4 control-label">Address:</label>
												<div class="col-sm-8">
													<input name="Address" required class="form-control"
														id="address" type="text" maxlength="120"
														data-ng-model="addressValue" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="postcode" class="col-sm-4 control-label">Post
													Code:</label>
												<div class="col-sm-8">
													<input name="PostCode" required class="form-control"
														id="postcode" type="text" maxlength="6"
														data-ng-model="postcodeValue" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="state" class="col-sm-4 control-label">State/Country:</label>
												<div class="col-sm-8">
													<select name="State" required id="state"
														class="form-control">
														<option selected="selected" value="0">--SELECT--</option>
														<option selected="selected" value="1">INDIA</option>
														<option selected="selected" value="2">MYLASIA</option>
													</select>
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="countrycode" class="col-sm-4 control-label">Country
													code:</label>
												<div class="col-sm-8">
													<input name="CountryCode" required class="form-control"
														id="countrycode" type="text" maxlength="6"
														data-ng-model="countrycodeValue" />
												</div>
											</div>
										</fieldset>
										<div class="row form-group form-inline">
											<label for="mobileno" class="col-sm-4 control-label">Mobile
												No:</label>
											<div class="col-sm-8">
												<input name="MobileNo" required class="form-control"
													id="mobileno" type="number" maxlength="10"
													data-ng-model="mobilenoValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno1" class="col-sm-4 control-label">Tel
												No.(House):</label>
											<div class="col-sm-8">
												<input name="Telno1" required class="form-control"
													id="telno1" type="tel" maxlength="10"
													data-ng-model="telno1Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno2" class="col-sm-4 control-label">Tel
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="Telno2" required class="form-control"
													id="telno2" type="tel" maxlength="10"
													data-ng-model="telno2Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno1" class="col-sm-4 control-label">Fax
												No.(House):</label>
											<div class="col-sm-8">
												<input name="Faxno1" required class="form-control"
													id="faxno1" type="tel" maxlength="10"
													data-ng-model="faxno1Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno2" class="col-sm-4 control-label">Fax
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="Faxno2" required class="form-control"
													id="faxno2" type="tel" maxlength="10"
													data-ng-model="faxno2Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="pdpa" class="col-sm-4 control-label">PDPA:</label>
											<div class="col-sm-8">
												<select name="Pdpa" required id="pdpa" class="form-control"
													data-ng-model="pdpaValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="N0">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="css" class="col-sm-4 control-label">CSS:</label>
											<div class="col-sm-8">
												<select name="Css" required id="css" class="form-control"
													data-ng-model="cssValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="remarks" class="col-sm-4 control-label">Remarks:</label>
											<div class="col-sm-8">
												<textarea rows="3" cols="20" class="form-control"
													id="remarks" data-ng-model="remarksValue">
													</textarea>
											</div>
										</div>
									</div>
								</div>
								<fieldset class="scheduler-border">
									<form>
										Personal Data Protection consent signed by customer
										<div class="col-sm-12">
											<label><input type="radio" name="optradio">Yes</label>
											<label><input type="radio" name="optradio">No</label>
										</div>
									</form>
									<form>
										Consent on Cross Selling signed by customer
										<div class="col-sm-12">
											<label><input type="radio" name="optradio">Yes</label>
											<label><input type="radio" name="optradio">No</label>
										</div>
									</form>
								</fieldset>
							</fieldset>
							<button type="submit" class="pull-right btn  btn-success center"
								onclick="validateIndividual()">Next</button>
						</div>
						<!--  onclick="location.href='save_quotation_form'"  -->

						<div class="form-horizontal" data-ng-if="drpContactType=='2'">
							<fieldset class="scheduler-border">
								<legend class="scheduler-border">Business</legend>
								<div class="row">
									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label for="businessregno" class="col-sm-4 control-label">Business
												Reg No:</label>
											<div class="col-sm-8">
												<input name="BusinessRegNo" required id="businessregno"
													class="form-control" type="text" maxlength="20"
													data-ng-model="businessregnoValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="name" class="col-sm-4 control-label">Name:</label>
											<div class="col-sm-8">
												<input name="Name" required id="name" class="form-control"
													type="text" maxlength="100" data-ng-model="nameValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="race" class="col-sm-4 control-label">Race:</label>
											<div class="col-sm-8">
												<select name="Race" required id="race" class="form-control"
													data-ng-model="drpraceValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option selected="selected" value="1">BLACK</option>
													<option selected="selected" value="2">WHITE</option>
													<option selected="selected" value="3">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="typeofbusiness">Type
												Of Business:</label>
											<div class="col-sm-8">
												<input name="TypeOfBusiness" required class="form-control"
													id="typeofbusiness" type="text"
													data-ng-model="typeofbusinessValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="occupation" class="col-sm-4 control-label">Occupation:</label>
											<div class="col-sm-8">
												<select name="Occupation" id="occupation"
													class="form-control" data-ng-model="occupationValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option selected="selected" value="1">EMPLOYED</option>
													<option selected="selected" value="2">BUSINESS</option>
													<option selected="selected" value="3">HOUSE WIFE</option>
													<option selected="selected" value="4">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregistered" class="col-sm-4 control-label">GST
												Registered:</label>
											<div class="col-sm-8">
												<select name="GstRegistered" required id="gstregistered"
													class="form-control" data-ng-model="gstregisteredValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregistrationno" class="col-sm-4 control-label">GST
												Registration No:</label>
											<div class="col-sm-8">
												<input name="GstRegistrationNo" required
													class="form-control" id="gstregistrationno" type="text"
													data-ng-model="gstregistrationnoValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregdate" class="col-sm-4 control-label">GST
												Reg Date:</label>
											<div class="col-sm-8">
												<input name="GstRegDate" required class="form-control"
													id="gstregdate" type="date" data-ng-model="gstregdateValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstexpirydate" class="col-sm-4 control-label">GST
												Expiry Date:</label>
											<div class="col-sm-8">
												<input name="GstExpiryDate" required class="form-control"
													id="gstexpirydate" type="date"
													data-ng-model="gstexpirydateValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="website" class="col-sm-4 control-label">Website:</label>
											<div class="col-sm-8">
												<input name="Website" required class="form-control"
													id="website" type="text" data-ng-model="websiteValue" />
											</div>
										</div>
										<!-- <div class="row form-group form-inline">
											<label for="employmentstatus" class="col-sm-4 control-label">Employment
												Status:</label>
											<div class="col-sm-8">
												<select name="EmploymentStatus" required
													id="employmentstatus" class="form-control"
													data-ng-model="employmentstatusValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div> -->
										<div class="row form-group form-inline">
											<label for="trafficviolation" class="col-sm-4 control-label">Traffic
												Violation:</label>
											<div class="col-sm-8">
												<select name="TrafficViolation" required
													id="trafficviolation" class="form-control"
													data-ng-model="trafficviolationValue">
													<option selected="selected" value="0">--SELECT--</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="email" class="col-sm-4 control-label">E-mail:</label>
											<div class="col-sm-8">
												<input name="Email" required class="form-control" id="email"
													type="email" data-ng-model="emailValue" />
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="vipstatus" class="col-sm-4 control-label">VIP
												Status:</label>
											<div class="col-sm-8">
												<select name="VipStatus" required id="vipstatus"
													class="form-control" data-ng-model="vipstatusValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>

									</div>
									<div class="col-md-6">
										<fieldset class="scheduler-border">
											<legend class="scheduler-border">Permanent Address</legend>
											<div class="row form-group form-inline">
												<label for="address" class="col-sm-4 control-label">Address:</label>
												<div class="col-sm-8">
													<input name="Address" required class="form-control"
														id="address" type="text" maxlength="120"
														data-ng-model="addressValue" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="postcode" class="col-sm-4 control-label">Post
													Code:</label>
												<div class="col-sm-8">
													<input name="PostCode" required class="form-control"
														id="postcode" type="text" maxlength="6"
														data-ng-model="postcodeValue" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="state" class="col-sm-4 control-label">State/Country:</label>
												<div class="col-sm-8">
													<select name="State" required id="state"
														class="form-control">
														<option selected="selected" value="0">--SELECT--</option>
														<option selected="selected" value="1">INDIA</option>
														<option selected="selected" value="2">MYLASIA</option>
													</select>
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="countrycode" class="col-sm-4 control-label">Country
													code:</label>
												<div class="col-sm-8">
													<input name="CountryCode" required class="form-control"
														id="countrycode" type="text" maxlength="6"
														data-ng-model="countrycodeValue" />
												</div>
											</div>
										</fieldset>
										<div class="row form-group form-inline">
											<label for="mobileno" class="col-sm-4 control-label">Mobile
												No:</label>
											<div class="col-sm-8">
												<input name="MobileNo" required class="form-control"
													id="mobileno" type="tel" maxlength="10"
													data-ng-model="mobilenoValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno1" class="col-sm-4 control-label">Tel
												No.(House):</label>
											<div class="col-sm-8">
												<input name="Telno1" required class="form-control"
													id="telno1" type="tel" maxlength="10"
													data-ng-model="telno1Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno2" class="col-sm-4 control-label">Tel
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="Telno2" required class="form-control"
													id="telno2" type="tel" maxlength="10"
													data-ng-model="telno2Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno1" class="col-sm-4 control-label">Fax
												No.(House):</label>
											<div class="col-sm-8">
												<input name="Faxno1" required class="form-control"
													id="faxno1" type="tel" maxlength="10"
													data-ng-model="faxno1Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno2" class="col-sm-4 control-label">Fax
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="Faxno2" required class="form-control"
													id="faxno2" type="tel" maxlength="10"
													data-ng-model="faxno2Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="pdpa" class="col-sm-4 control-label">PDPA:</label>
											<div class="col-sm-8">
												<select name="Pdpa" required id="pdpa" class="form-control"
													data-ng-model="pdpaValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="N0">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="css" class="col-sm-4 control-label">CSS:</label>
											<div class="col-sm-8">
												<select name="Css" required id="css" class="form-control"
													data-ng-model="cssValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="remarks" class="col-sm-4 control-label">Remarks:</label>
											<div class="col-sm-8">
												<textarea rows="3" cols="20" class="form-control"
													id="remarks" data-ng-model="remarksValue">
													</textarea>
											</div>
										</div>
									</div>
								</div>
								<fieldset class="scheduler-border">
									<form>
										Personal Data Protection consent signed by customer
										<div class="col-sm-12">
											<label><input type="radio" name="optradio">Yes</label>
											<label><input type="radio" name="optradio">No</label>
										</div>
									</form>
									<form>
										Consent on Cross Selling signed by customer
										<div class="col-sm-12">
											<label><input type="radio" name="optradio">Yes</label>
											<label><input type="radio" name="optradio">No</label>
										</div>
									</form>
								</fieldset>
							</fieldset>
							<button type="submit" class="pull-right btn  btn-success center"
								onclick="validateBusiness()">Next</button>
						</div>

						<div class="form-horizontal" data-ng-if="drpContactType=='3'">
							<fieldset class="scheduler-border">
								<legend class="scheduler-border">Others</legend>
								<div class="row">
									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label for="oldicno" class="col-sm-4 control-label">Old
												IC No / Passport No:</label>
											<div class="col-sm-8">
												<input name="OldIcNo" required id="oldicno" type="text"
													class="form-control" data-ng-model="oldicnoValue"
													maxlength="20" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="name" class="col-sm-4 control-label">Name:</label>
											<div class="col-sm-8">
												<input name="Name" required id="name" class="form-control"
													type="text" maxlength="100" data-ng-model="nameValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="SALUTATION" class="col-sm-4 control-label">Salutation:</label>
											<div class="col-sm-8">
												<select name="Salutation" required id="SALUTATION"
													class="form-control" data-ng-model="salutationValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option selected="selected" value="1">Mr</option>
													<option selected="selected" value="2">Mrs</option>
													<option selected="selected" value="3">Ms</option>
													<option selected="selected" value="4">Dr</option>
													<option selected="selected" value="5">Prof</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="nationality" class="col-sm-4 control-label">Nationality:</label>
											<div class="col-sm-8">
												<select name="Nationality" id="nationality"
													class="form-control" data-ng-model="drpnationalityValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option selected="selected" value="1">INDIAN</option>
													<option selected="selected" value="2">MYLASIAN</option>
													<option selected="selected" value="3">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="race" class="col-sm-4 control-label">Race:</label>
											<div class="col-sm-8">
												<select name="Race" required id="race" class="form-control"
													data-ng-model="drpraceValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option selected="selected" value="1">BLACK</option>
													<option selected="selected" value="2">WHITE</option>
													<option selected="selected" value="3">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="dob" class="col-sm-4 control-label">Date
												Of Birth:</label>
											<div class="col-sm-8">
												<input name="DateOfBirth" required class="form-control"
													id="dob" type="date" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="age" class="col-sm-4 control-label">Age</label>
											<div class="col-sm-8">
												<input name="Age" required class="form-control" id="age"
													type="text" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gender" class="col-sm-4 control-label">Gender:</label>
											<div class="col-sm-8">
												<select name="Gender" required id="gender"
													class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="1">MALE</option>
													<option value="2">FEMALE</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="occupation" class="col-sm-4 control-label">Occupation:</label>
											<div class="col-sm-8">
												<select name="Occupation" required id="occupation"
													class="form-control" data-ng-model="occupationValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option selected="selected" value="1">EMPLOYED</option>
													<option selected="selected" value="2">BUSINESS</option>
													<option selected="selected" value="3">HOUSE WIFE</option>
													<option selected="selected" value="4">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="maritalstatus" class="col-sm-4 control-label">Marital
												Status:</label>
											<div class="col-sm-8">
												<select name="MaritalStatus" required id="maritalstatus"
													class="form-control" data-ng-model="maritalstatusValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="SINGLE">SINGLE</option>
													<option value="MARRIED">MARRIED</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregistered" class="col-sm-4 control-label">GST
												Registered:</label>
											<div class="col-sm-8">
												<select name="GstRegistered" required id="gstregistered"
													class="form-control" data-ng-model="gstregisteredValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregistrationno" class="col-sm-4 control-label">GST
												Registration No:</label>
											<div class="col-sm-8">
												<input name="GstRegistrationNo" required
													class="form-control" id="gstregistrationno" type="text"
													data-ng-model="gstregistrationnoValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregdate" class="col-sm-4 control-label">GST
												Reg Date:</label>
											<div class="col-sm-8">
												<input name="GstRegDate" required class="form-control"
													id="gstregdate" type="date" data-ng-model="gstregdateValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstexpirydate" class="col-sm-4 control-label">GST
												Expiry Date:</label>
											<div class="col-sm-8">
												<input name="GstExpiryDate" required class="form-control"
													id="gstexpirydate" type="date"
													data-ng-model="gstexpirydateValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="website" class="col-sm-4 control-label">Website:</label>
											<div class="col-sm-8">
												<input name="Website" required class="form-control"
													id="website" type="text" data-ng-model="websiteValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="employmentstatus" class="col-sm-4 control-label">Employment
												Status:</label>
											<div class="col-sm-8">
												<select name="EmploymentStatus" required
													id="employmentstatus" class="form-control"
													data-ng-model="employmentstatusValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
									</div>

									<div class="col-md-6">

										<div class="row form-group form-inline">
											<label for="trafficviolation" class="col-sm-4 control-label">Traffic
												Violation:</label>
											<div class="col-sm-8">
												<select name="TrafficViolation" required
													id="trafficviolation" class="form-control"
													data-ng-model="trafficviolationValue">
													<option selected="selected" value="0">--SELECT--</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="email" class="col-sm-4 control-label">E-mail:</label>
											<div class="col-sm-8">
												<input name="Email" required class="form-control" id="email"
													type="email" data-ng-model="emailValue" />
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="vipstatus" class="col-sm-4 control-label">VIP
												Status:</label>
											<div class="col-sm-8">
												<select name="VipStatus" required id="vipstatus"
													class="form-control" data-ng-model="vipstatusValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<fieldset class="scheduler-border">
											<legend class="scheduler-border">Permanent Address</legend>
											<div class="row form-group form-inline">
												<label for="address" class="col-sm-4 control-label">Address:</label>
												<div class="col-sm-8">
													<input name="Address" required class="form-control"
														id="address" type="text" maxlength="120"
														data-ng-model="addressValue" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="postcode" class="col-sm-4 control-label">Post
													Code:</label>
												<div class="col-sm-8">
													<input name="PostCode" required class="form-control"
														id="postcode" type="text" maxlength="6"
														data-ng-model="postcodeValue" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="state" class="col-sm-4 control-label">State/Country:</label>
												<div class="col-sm-8">
													<select name="State" required id="state"
														class="form-control">
														<option selected="selected" value="0">--SELECT--</option>
														<option selected="selected" value="1">INDIA</option>
														<option selected="selected" value="2">MYLASIA</option>
													</select>
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="countrycode" class="col-sm-4 control-label">Country
													code:</label>
												<div class="col-sm-8">
													<input name="CountryCode" required class="form-control"
														id="countrycode" type="text" maxlength="6"
														data-ng-model="countrycodeValue" />
												</div>
											</div>
										</fieldset>
										<div class="row form-group form-inline">
											<label for="mobileno" class="col-sm-4 control-label">Mobile
												No:</label>
											<div class="col-sm-8">
												<input name="MobileNo" required class="form-control"
													id="mobileno" type="number" maxlength="10"
													data-ng-model="mobilenoValue" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno1" class="col-sm-4 control-label">Tel
												No.(House):</label>
											<div class="col-sm-8">
												<input name="Telno1" required class="form-control"
													id="telno1" type="number" maxlength="10"
													data-ng-model="telno1Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno2" class="col-sm-4 control-label">Tel
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="Telno2" required class="form-control"
													id="telno2" type="number" maxlength="10"
													data-ng-model="telno2Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno1" class="col-sm-4 control-label">Fax
												No.(House):</label>
											<div class="col-sm-8">
												<input name="Faxno1" required class="form-control"
													id="faxno1" type="number" maxlength="10"
													data-ng-model="faxno1Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno2" class="col-sm-4 control-label">Fax
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="Faxno2" required class="form-control"
													id="faxno2" type="number" maxlength="10"
													data-ng-model="faxno2Value" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="pdpa" class="col-sm-4 control-label">PDPA:</label>
											<div class="col-sm-8">
												<select name="Pdpa" required id="pdpa" class="form-control"
													data-ng-model="pdpaValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="N0">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="css" class="col-sm-4 control-label">CSS:</label>
											<div class="col-sm-8">
												<select name="Css" required id="css" class="form-control"
													data-ng-model="cssValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="remarks" class="col-sm-4 control-label">Remarks:</label>
											<div class="col-sm-8">
												<textarea rows="3" cols="20" class="form-control"
													id="remarks" data-ng-model="remarksValue">
													</textarea>
											</div>
										</div>
									</div>
								</div>
								<fieldset class="scheduler-border">
									<form>
										Personal Data Protection consent signed by customer
										<div class="col-sm-12">
											<label><input type="radio" name="optradio">Yes</label>
											<label><input type="radio" name="optradio">No</label>
										</div>
									</form>
									<form>
										Consent on Cross Selling signed by customer
										<div class="col-sm-12">
											<label><input type="radio" name="optradio">Yes</label>
											<label><input type="radio" name="optradio">No</label>
										</div>
									</form>
								</fieldset>
							</fieldset>

							<button type="submit" class="btn  btn-success center pull-right"
								onclick="validateOthers()">Next</button>
						</div>
					</form>
				</div>

			</div>

		</div>
</body>
</html>




