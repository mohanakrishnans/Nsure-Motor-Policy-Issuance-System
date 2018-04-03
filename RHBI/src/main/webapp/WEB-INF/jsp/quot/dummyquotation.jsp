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

<link type="text/javascript" src="//code.angularjs.org/snapshot/angular.min.js"> 
<link type="text/javascript" src="//code.angularjs.org/snapshot/angular-messages.js"> 
<link type="text/javascript" src="script.js"></script>
<script type="text/javascript" src="resources/js/index.js"></script>
<script type="text/javascript" src="resources/js/validate.js"></script>

<script type="text/javascript">
 var app = angular.module("app", ['ngMessages']);
 app.controller("quotationController",
			function($scope,$window) {
	 	$scope.quotation =[];
				$scope.contactId = null;
				$scope.quotation.drpContactType=$window.sessionStorage.getItem( 'drpContactType' );
				$scope.quotation.sourceType = $window.sessionStorage.getItem('sourceType');
				$scope.quotation.accountCode = $window.sessionStorage.getItem('accountCode');
				$scope.quotation.branch = $window.sessionStorage.getItem('branch');
				$scope.quotation.accountName = $window.sessionStorage.getItem('accountName');
				$scope.quotation.newIcNo = $window.sessionStorage.getItem('newIcNo');
				$scope.quotation.name = $window.sessionStorage.getItem('name');
				$scope.quotation.nationality = $window.sessionStorage.getItem('nationality');
				$scope.quotation.race = $window.sessionStorage.getItem('race');
				$scope.quotation.dateOfBirth = $window.sessionStorage.getItem('dateOfBirth');
				//alert($window.sessionStorage.getItem('dateOfBirth'));
				$scope.quotation.gender = $window.sessionStorage.getItem('gender');
				$scope.quotation.maritalStatus = $window.sessionStorage.getItem('maritalStatus');
				$scope.quotation.occupation = $window.sessionStorage.getItem('occupation');
				$scope.quotation.gstRegistered = $window.sessionStorage.getItem('gstRegistered');
				$scope.quotation.address = $window.sessionStorage.getItem('address');
				$scope.quotation.postCode = $window.sessionStorage.getItem('postCode');
				$scope.quotation.countryCode = $window.sessionStorage.getItem('countryCode');
				$scope.quotation.mobileNo = $window.sessionStorage.getItem('mobileNo');
				$scope.quotation.pdpa = $window.sessionStorage.getItem('pdpa');
				$scope.quotation.css = $window.sessionStorage.getItem('css');
				$scope.quotation.businessRegNo = $window.sessionStorage.getItem('businessRegNo');
				$scope.quotation.typeOfBusiness = $window.sessionStorage.getItem('typeOfBusiness');
				$scope.quotation.oldIcNo = $window.sessionStorage.getItem('oldIcNo');
				$scope.quotation.email = $window.sessionStorage.getItem('email');
				$scope.quotation.gstregistrationdate = $window.sessionStorage.getItem('gstregistrationdate');
				$scope.quotation.gstexpirydate = $window.sessionStorage.getItem('gstexpirydate');
				$scope.quotation.website = $window.sessionStorage.getItem('website');
				$scope.quotation.trafficviolation = $window.sessionStorage.getItem('trafficviolation');
				$scope.quotation.vipstatus = $window.sessionStorage.getItem('vipstatus');
				$scope.quotation.permanentaddress = $window.sessionStorage.getItem('permanentaddress');
				$scope.quotation.statecountry = $window.sessionStorage.getItem('statecountry');
				$scope.quotation.telnohouse = $window.sessionStorage.getItem('telnohouse');
				$scope.quotation.telnooffice = $window.sessionStorage.getItem('telnooffice');
				$scope.quotation.faxnohouse = $window.sessionStorage.getItem('faxnohouse');
				$scope.quotation.faxnooffice = $window.sessionStorage.getItem('faxnooffice');
				$scope.quotation.remarks = $window.sessionStorage.getItem('remarks');
				$scope.quotation.datasignedcustomer = $window.sessionStorage.getItem('datasignedcustomer');
				$scope.quotation.crosssignedcustomer = $window.sessionStorage.getItem('crosssignedcustomer');
				$scope.quotation.oldicpassportno = $window.sessionStorage.getItem('oldicpassportno');
				$scope.quotation.salutation = $window.sessionStorage.getItem('salutation');
				$scope.quotation.age = $window.sessionStorage.getItem('age');
				$scope.quotation.employementstatus = $window.sessionStorage.getItem('employementstatus');
				$scope.quotation.gstregistrationno = $window.sessionStorage.getItem('gstregistrationno');
				
				$scope.submit = function(){
					$window.sessionStorage.setItem('drpContactType',$scope.quotation.drpContactType);
					$window.sessionStorage.setItem('sourceType', $scope.quotation.sourceType);
					$window.sessionStorage.setItem('accountCode', $scope.quotation.accountCode);
					$window.sessionStorage.setItem('branch', $scope.quotation.branch);
					$window.sessionStorage.setItem('accountName', $scope.quotation.accountName);
					$window.sessionStorage.setItem('newIcNo', $scope.quotation.newIcNo);
					$window.sessionStorage.setItem('name', $scope.quotation.name);
					$window.sessionStorage.setItem('nationality', $scope.quotation.nationality);
					$window.sessionStorage.setItem('race', $scope.quotation.race);
					$window.sessionStorage.setItem('dateOfBirth', $scope.quotation.dateOfBirth);
					$window.sessionStorage.setItem('gender', $scope.quotation.gender);
					$window.sessionStorage.setItem('maritalStatus', $scope.quotation.maritalStatus);
					$window.sessionStorage.setItem('occupation', $scope.quotation.occupation);
					$window.sessionStorage.setItem('gstRegistered', $scope.quotation.gstRegistered);
					$window.sessionStorage.setItem('address', $scope.quotation.address);
					$window.sessionStorage.setItem('postCode', $scope.quotation.postCode);
					$window.sessionStorage.setItem('countryCode', $scope.quotation.countryCode);
					$window.sessionStorage.setItem('mobileNo', $scope.quotation.mobileNo);
					$window.sessionStorage.setItem('pdpa', $scope.quotation.pdpa);
					$window.sessionStorage.setItem('css', $scope.quotation.css);
					$window.sessionStorage.setItem('businessRegNo', $scope.quotation.businessRegNo);
					$window.sessionStorage.setItem('typeOfBusiness', $scope.quotation.typeOfBusiness);
					$window.sessionStorage.setItem('oldIcNo', $scope.quotation.oldIcNo);
					$window.sessionStorage.setItem('email', $scope.quotation.email);
					$window.sessionStorage.setItem('gstregistrationdate', $scope.quotation.gstregistrationdate);
					$window.sessionStorage.setItem('gstexpirydate', $scope.quotation.gstexpirydate);
					$window.sessionStorage.setItem('website', $scope.quotation.website);
					$window.sessionStorage.setItem('trafficviolation', $scope.quotation.trafficviolation);
					$window.sessionStorage.setItem('vipstatus', $scope.quotation.vipstatus);
					$window.sessionStorage.setItem('permanentaddress', $scope.quotation.permanentaddress);
					$window.sessionStorage.setItem('statecountry', $scope.quotation.statecountry);
					$window.sessionStorage.setItem('telnohouse', $scope.quotation.telnohouse);
					$window.sessionStorage.setItem('telnooffice', $scope.quotation.telnooffice);
					$window.sessionStorage.setItem('faxnohouse', $scope.quotation.faxnohouse);
					$window.sessionStorage.setItem('faxnooffice', $scope.quotation.faxnooffice);
					$window.sessionStorage.setItem('remarks', $scope.quotation.remarks);
					$window.sessionStorage.setItem('datasignedcustomer', $scope.quotation.datasignedcustomer);
					$window.sessionStorage.setItem('crosssignedcustomer', $scope.quotation.crosssignedcustomer);
					$window.sessionStorage.setItem('oldicpassportno', $scope.quotation.oldicpassportno);
					$window.sessionStorage.setItem('salutation', $scope.quotation.salutation);
					$window.sessionStorage.setItem('age', $scope.quotation.age);
					$window.sessionStorage.setItem('employementstatus', $scope.quotation.employementstatus);
					$window.sessionStorage.setItem('gstregistrationno', $scope.quotation.gstregistrationno);		
				};
				
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
								'<option data-ng-value="' + value.contactName + '">'
													 + value.contactName + '</option>');
					} else if (value.sourceType > 0) {
						$('#SOURCE_TYPE').append(
								'<option data-ng-value="' + value.sourceName + '">'
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
<body class="" data-ng-app="app"
	data-ng-controller="quotationController as tc" id="ENDOR_NON_JPJ_MOTOR">
	<nav class="side-navbar">
		<div class="side-navbar-wrapper">
			<div
				class="sidenav-header d-flex align-items-center justify-content-center">
				<div class="sidenav-header-inner text-center">
					<img src="http://localhost/nsure/dashboard/img/avatar-1.jpg"
						alt="person" class="img-fluid rounded-circle">
					<h2 class="h5">Nsure</h2>
					<h1 class="h1">${user }</h1>
				</div>
				<div class="sidenav-header-logo">
					<a href="index.jsp" class="brand-small text-center"> <strong>B</strong><strong
						class="text-primary">D</strong></a>
				</div>
			</div>
			<div class="main-menu">
				<ul id="side-main-menu" class="side-menu list-unstyled">
					<li><a href="quotation"> <i class="icon-home"></i>Quotation</a></li>
					<li><a href="nbquotation"> <i class="icon-form"></i>New Business</a></li>
					<li><a href="cnOptions"> <i class="icon-form"></i>CN Options</a></li>
					<li><a href="endorsementdetails"><i class="icon-form"></i>Endorsement</a></li>
					<li><a href="referRisk"> <i class="icon-grid"></i>Refer	Risk</a></li>
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
					<!-- <form action="save_quotation_form" method="POST"
						modelAttribute="userFormData"> -->
						<form method="POST">
						<fieldset class="scheduler-border">
							<legend class="scheduler-border">Account Code / Branch
								Details</legend>
							<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline">
										<label for="sourceType" class="col-sm-4 control-label">Source
											Type </label>
										<div class="col-sm-8">
											<select ng-model="quotation.sourceType" ng-option="{{quotation.sourceType}}" required id="SOURCE_TYPE"
												class="form-control">
												<!-- <option selected="selected" value="0">--SELECT--</option> -->
											</select>
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="accountCode" class="col-sm-4 control-label">Account
											Code</label>
										<div class="col-sm-8">
											<input ng-model="quotation.accountCode"
												ng-value="{{quotation.accountCode }}" required
												id="accountCode" class="form-control" type="number"
												onKeyPress="if(this.value.length==2) return false;" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="row form-group form-inline">
										<label for="branch" class="col-sm-4 control-label">Branch</label>
										<div class="col-sm-8">
											<input ng-model="quotation.branch" required id="branch"
												class="form-control" type="text" maxlength="10"
												ng-value="{{quotation. branch}}"
												onkeypress="return onlyAlphabets(event,this);" />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="accountName" class="col-sm-4 control-label">Account
											Name</label>
										<div class="col-sm-8">
											<input ng-model="quotation.accountName" required id="accountName"
												class="form-control" type="text" maxlength="10"
												ng-value="{{quotation.accountName}}" 
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
										<select required 
												id="CONTACT_TYPE" 
												class="form-control" 
												data-ng-value="{{quotation.drpContactType}}" 
												data-ng-model="quotation.drpContactType">
											<option data-ng-value=" ">--SELECT--</option>
										</select>
									</div>
								</div>
							</div>
						</div>

						<hr>
						<div class="form-horizontal" data-ng-if="quotation.drpContactType=='INDIVIDUAL'">
							<fieldset class="scheduler-border">
								<legend class="scheduler-border">Individual</legend>
								<div class="row">
									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label for="newicno" class="col-sm-4 control-label">New
												IC No:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.newIcNo"  ng-value="{{quotation.newIcNo }}"  required id="newicno" type="number"
													class="form-control" 
													onKeyPress="if(this.value.length==12) return false;"
													onChange="newIcno()" />
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
												<input ng-model="quotation.oldicpassportno"  ng-value="{{quotation. oldicpassportno}}" required id="oldicno" type="text"
													class="form-control" 
													maxlength="20" onChange="oldIcNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Name" class="col-sm-4 control-label">Name:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.name"  ng-value="{{quotation.name }}"  required id="Name" class="form-control"
													type="text" maxlength="100" 
													onkeypress="return onlyAlphabets(event,this);" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="SALUTATION" class="col-sm-4 control-label">Salutation:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.salutation" ng-value="{{quotation.salutation }}" required id="SALUTATION"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="Mr">Mr</option>
													<option value="Mrs">Mrs</option>
													<option value="Ms">Ms</option>
													<option value="Dr">Dr</option>
													<option value="Prof">Prof</option>
												</select>
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="Nationality" class="col-sm-4 control-label">Nationality:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.nationality" ng-value="{{quotation.nationality}}" required id="Nationality"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="Indian">INDIAN</option>
													<option value="Mylaysian">MYLAYSIAN</option>
													<option value="Others">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Race" class="col-sm-4 control-label">Race:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.race"  ng-value="{{quotation.race }}" required id="Race" class="form-control"
													>
													<option selected="selected" value="0">--SELECT--</option>
													<option value="Black">BLACK</option>
													<option value="White">WHITE</option>
													<option value="Others">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="dob" class="col-sm-4 control-label">Date
												Of Birth:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.dateOfBirth"  ng-value="{{quotation.dateOfBirth }}" required class="form-control"
												id="dateob"	type="date" /><!--   -->
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Age" class="col-sm-4 control-label">Age</label>
											<div class="col-sm-8">
												<input ng-model="quotation.age"  ng-value="{{quotation.age}}" required class="form-control" id="Agee"
													type="number"
													onKeyPress="if(this.value.length==2) return false;" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gender" class="col-sm-4 control-label">Gender:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.gender" ng-value="{{quotation.gender}}" required class="form-control"
													id="Genderg" type="text" />
												<!--<select ng-model="quotation.Gender" required id="gender"
													class="form-control">
													 <option selected="selected" value="0">--SELECT--</option>
													<option value="1">MALE</option>
													<option value="2">FEMALE</option> 
												</select>-->
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Maritalstatus" class="col-sm-4 control-label">Marital
												Status:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.maritalStatus" ng-value="{{quotation.maritalStatus }}" required id="Maritalstatus"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="SINGLE">SINGLE</option>
													<option value="MARRIED">MARRIED</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Occupation" class="col-sm-4 control-label">Occupation:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.occupation" ng-value="{{quotation.occupation }}" required id="Occupation"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="Employed">EMPLOYED</option>
													<option value="Business">BUSINESS</option>
													<option value="House wife">HOUSE WIFE</option>
													<option value="Others">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregistered" class="col-sm-4 control-label">GST
												Registered:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.gstRegistered" ng-value="{{quotation.gstRegistered }}"  required id="gstregistered"
													class="form-control" 
													onChange="gsTregistered()">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gstregistrationno" class="col-sm-4 control-label">GST
												Registration No:</label>
											<div class="col-sm-8">
												<input disabled ng-model="quotation.gstregistrationno" ng-value="{{quotation.gstregistrationno }}" required
													class="form-control" id="Gstregistrationno" type="number"
													onKeyPress="if(this.value.length==10) return false;"
													onChange="gstRegistrationNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregdate" class="col-sm-4 control-label">GST
												Reg Date:</label>
											<div class="col-sm-8">
												<input disabled ng-model="quotation.gstregistrationdate" ng-value="{{quotation.gstregistrationdate}}" required
													class="form-control" id="gstregdate" type="date" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gstexpirydate" class="col-sm-4 control-label">GST
												Expiry Date:</label>
											<div class="col-sm-8">
												<input disabled ng-model="quotation.gstexpirydate" ng-value="{{quotation.gstexpirydate }}"  required
													class="form-control" id="Gstexpirydate" type="date"
													/>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Website" class="col-sm-4 control-label">Website:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.website" ng-value="{{quotation.website }}" required class="form-control"
													id="Website" type="url"  />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Employmentstatus" class="col-sm-4 control-label">Employment
												Status:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.employementstatus" ng-value="{{quotation.employementstatus }}" required
													id="Employmentstatus" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6">

										<div class="row form-group form-inline">
											<label for="Trafficviolation" class="col-sm-4 control-label">Traffic
												Violation:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.trafficviolation" ng-value="{{quotation.trafficviolation }}" required
													id="Trafficviolation" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Email" class="col-sm-4 control-label">E-mail:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.email" ng-value="{{quotation.email }}"  required class="form-control" id="Email"
													type="email" 
													onChange="emailVal()" />
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="Vipstatus" class="col-sm-4 control-label">VIP
												Status:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.vipstatus" ng-value="{{quotation.vipstatus }}" required id="Vipstatus"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<fieldset class="scheduler-border">
											<legend class="scheduler-border">Permanent Address</legend>
											<div class="row form-group form-inline">
												<label for="Address" class="col-sm-4 control-label">Address:</label>
												<div class="col-sm-8">
													<input ng-model="quotation.address" ng-value="{{quotation.address }}"  required class="form-control"
														id="Address" type="text" maxlength="120"
														 />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="postcode" class="col-sm-4 control-label">Post
													Code:</label>
												<div class="col-sm-8">
													<input ng-model="quotation.postCode" ng-value="{{quotation.postCode}}" required class="form-control"
														id="postcode" type="number" 
														onKeyPress="if(this.value.length==6 ) return false;"
														onChange="posTcode()" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="state" class="col-sm-4 control-label">State/Country:</label>
												<div class="col-sm-8">
													<select ng-model="quotation.statecountry" ng-value="{{quotation.statecountry}}" required id="state"
														class="form-control">
														<option selected="selected" value="0">--SELECT--</option>
														<option value="1">INDIA</option>
														<option value="2">MYLASIA</option>
													</select>
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="Countrycode" class="col-sm-4 control-label">Country
													code:</label>
												<div class="col-sm-8">
													<input ng-model="quotation.countryCode" ng-value="{{quotation.countryCode}}"  required class="form-control"
														id="Countrycode" type="number"
														onKeyPress="if(this.value.length==3 ) return false;" />
												</div>
											</div>
										</fieldset>
										<div class="row form-group form-inline">
											<label for="mobileno" class="col-sm-4 control-label">Mobile
												No:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.mobileNo" ng-value="{{quotation.mobileNo}}"  required class="form-control"
													id="mobileno" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="mobilEno()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno1" class="col-sm-4 control-label">Tel
												No.(House):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.telnohouse" ng-value="{{quotation.telnohouse }}" required class="form-control"
													id="telno1" type="number"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno2" class="col-sm-4 control-label">Tel
												No.(Office):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.telnooffice" ng-value="{{quotation.telnooffice }}" required class="form-control"
													id="telno2" type="number" maxlength="10"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno1" class="col-sm-4 control-label">Fax
												No.(House):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.faxnohouse" ng-value="{{quotation.faxnohouse }}" required class="form-control"
													id="faxno1" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno2" class="col-sm-4 control-label">Fax
												No.(Office):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.faxnooffice" ng-value="{{quotation.faxnooffice }}" required class="form-control"
													id="faxno2" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Pdpa" class="col-sm-4 control-label">PDPA:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.pdpa" ng-value="{{quotation.pdpa }}" required id="Pdpa" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="N0">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Css" class="col-sm-4 control-label">CSS:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.css" ng-value="{{quotation.css }}" required id="Css" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="remarks" class="col-sm-4 control-label">Remarks:</label>
											<div class="col-sm-8">
												<textarea ng-model="quotation.remarks" class="form-control"
													id="remarks">{{quotation.remarks }}
													</textarea>
											</div>
										</div>
									</div>
								</div>
																
										Personal Data Protection consent signed by customer
											<div class="col-sm-12">
											<label><input type="radio" value="YES" ng-model="quotation.datasignedcustomer">Yes</label>
											<label><input type="radio" value="NO" ng-model="quotation.datasignedcustomer">No</label>
										</div>												
										Consent on Cross Selling signed by customer
										<div class="col-sm-12">
											<label><input type="radio" value="YES" ng-model="quotation.crosssignedcustomer">Yes</label>
											<label><input type="radio" value="NO" ng-model="quotation.crosssignedcustomer">No</label>
										</div>									
								
							</fieldset>
							<button type="submit" ng-click="submit()" class="pull-right btn  btn-success center">
								Next</button>
						</div>
						<!--  onclick="location.href='save_quotation_form'"  -->

						<div class="form-horizontal" data-ng-if="quotation.drpContactType=='BUSINESS'">
							<fieldset class="scheduler-border">
								<legend class="scheduler-border">Business</legend>
								<div class="row">
									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label for="businessregno" class="col-sm-4 control-label">Business
												Reg No:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.businessRegNo" ng-value="{{quotation.businessRegNo}}"  required id="businessregno"
													class="form-control" type="text" maxlength="10"
													onChange="businessRegno()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Name" class="col-sm-4 control-label">Name:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.name"  ng-value="{{quotation.name }}"  required id="Name" class="form-control"
													type="text" maxlength="100" 
													onkeypress="return onlyAlphabets(event,this);" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Race" class="col-sm-4 control-label">Race:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.race"  ng-value="{{quotation.race }}" required id="Race" class="form-control"
													>
													<option selected="selected" value="0">--SELECT--</option>
													<option value="Black">BLACK</option>
													<option value="White">WHITE</option>
													<option value="Others">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="typeofbusiness">Type
												Of Business:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.typeOfBusiness" ng-value="{{quotation.typeOfBusiness}}" required class="form-control"
													id="typeofbusiness" type="text" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Occupation" class="col-sm-4 control-label">Occupation:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.occupation" ng-value="{{quotation.occupation }}" required id="Occupation"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="Employed">EMPLOYED</option>
													<option value="Business">BUSINESS</option>
													<option value="House wife">HOUSE WIFE</option>
													<option value="Others">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregistered" class="col-sm-4 control-label">GST
												Registered:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.gstRegistered" ng-value="{{quotation.gstRegistered }}"  required id="gstregistered"
													class="form-control" 
													onChange="gsTregistered()">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gstregistrationno" class="col-sm-4 control-label">GST
												Registration No:</label>
											<div class="col-sm-8">
												<input disabled ng-model="quotation.gstregistrationno" ng-value="{{quotation.gstregistrationno }}" required
													class="form-control" id="Gstregistrationno" type="number"
													onKeyPress="if(this.value.length==10) return false;"
													onChange="gstRegistrationNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregdate" class="col-sm-4 control-label">GST
												Reg Date:</label>
											<div class="col-sm-8">
												<input disabled ng-model="quotation.gstregistrationdate" ng-value="{{quotation.gstregistrationdate }}" required
													class="form-control" id="gstregdate" type="date" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gstexpirydate" class="col-sm-4 control-label">GST
												Expiry Date:</label>
											<div class="col-sm-8">
												<input disabled ng-model="quotation.gstexpirydate" ng-value="{{quotation.gstexpirydate }}"  required
													class="form-control" id="Gstexpirydate" type="date"
													/>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Website" class="col-sm-4 control-label">Website:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.website" ng-value="{{quotation.website }}" required class="form-control"
													id="Website" type="url"  />
											</div>
										</div>
										<!-- <div class="row form-group form-inline">
											<label for="Employmentstatus" class="col-sm-4 control-label">Employment
												Status:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.EmploymentStatus" required
													id="Employmentstatus" class="form-control"
													data-ng-model="employmentstatusValue">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div> -->
										<div class="row form-group form-inline">
											<label for="Trafficviolation" class="col-sm-4 control-label">Traffic
												Violation:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.trafficviolation" ng-value="{{quotation.trafficviolation }}" required
													id="Trafficviolation" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Email" class="col-sm-4 control-label">E-mail:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.email" ng-value="{{quotation.email }}"  required class="form-control" id="Email"
													type="email" 
													onChange="emailVal()" />
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="Vipstatus" class="col-sm-4 control-label">VIP
												Status:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.vipstatus" ng-value="{{quotation.vipstatus }}" required id="Vipstatus"
													class="form-control" >
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
												<label for="Address" class="col-sm-4 control-label">Address:</label>
												<div class="col-sm-8">
													<input ng-model="quotation.address" ng-value="{{quotation.address }}"  required class="form-control"
														id="Address" type="text" maxlength="120"
														 />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="postcode" class="col-sm-4 control-label">Post
													Code:</label>
												<div class="col-sm-8">
													<input ng-model="quotation.postCode" ng-value="{{quotation.postCode }}" required class="form-control"
														id="postcode" type="number" 
														onKeyPress="if(this.value.length==6 ) return false;"
														onChange="posTcode()" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="state" class="col-sm-4 control-label">State/Country:</label>
												<div class="col-sm-8">
													<select ng-model="quotation.statecountry" ng-value="{{quotation.statecountry }}" required id="state"
														class="form-control">
														<option selected="selected" value="0">--SELECT--</option>
														<option value="1">INDIA</option>
														<option value="2">MYLASIA</option>
													</select>
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="Countrycode" class="col-sm-4 control-label">Country
													code:</label>
												<div class="col-sm-8">
													<input ng-model="quotation.countryCode" ng-value="{{quotation.countryCode }}"  required class="form-control"
														id="Countrycode" type="number"
														onKeyPress="if(this.value.length==3 ) return false;" />
												</div>
											</div>
										</fieldset>
										<div class="row form-group form-inline">
											<label for="mobileno" class="col-sm-4 control-label">Mobile
												No:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.mobileNo" ng-value="{{quotation.mobileNo }}"  required class="form-control"
													id="mobileno" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="mobilEno()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno1" class="col-sm-4 control-label">Tel
												No.(House):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.telnohouse" ng-value="{{quotation.telnohouse }}" required class="form-control"
													id="telno1" type="number"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno2" class="col-sm-4 control-label">Tel
												No.(Office):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.telnooffice" ng-value="{{quotation.telnooffice }}" required class="form-control"
													id="telno2" type="number" maxlength="10"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno1" class="col-sm-4 control-label">Fax
												No.(House):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.faxnohouse" ng-value="{{quotation.faxnohouse }}" required class="form-control"
													id="faxno1" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno2" class="col-sm-4 control-label">Fax
												No.(Office):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.faxnooffice" ng-value="{{quotation.faxnooffice }}" required class="form-control"
													id="faxno2" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Pdpa" class="col-sm-4 control-label">PDPA:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.pdpa" ng-value="{{quotation.pdpa }}" required id="Pdpa" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="N0">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Css" class="col-sm-4 control-label">CSS:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.css" ng-value="{{quotation.css }}" required id="Css" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="remarks" class="col-sm-4 control-label">Remarks:</label>
											<div class="col-sm-8">
												<textarea ng-model="quotation.remarks" class="form-control"
													id="remarks">{{remarks }}
													</textarea>
											</div>
										</div>
									</div>
								</div>
								 
									
										Personal Data Protection consent signed by customer
										<div class="col-sm-12">
											<label><input type="radio" value="YES" ng-model="quotation.datasignedcustomer">Yes</label>
											<label><input type="radio" value="NO" ng-model="quotation.datasignedcustomer">No</label>
										</div>
									
										Consent on Cross Selling signed by customer
										<div class="col-sm-12">
											<label><input type="radio" value="YES" ng-model="quotation.crosssignedcustomer">Yes</label>
											<label><input type="radio" value="NO" ng-model="quotation.crosssignedcustomer">No</label>
										</div>
									
								 
							</fieldset>
							<button type="submit" ng-click="submit()" class="pull-right btn  btn-success center">Next</button>
						</div>

						<div class="form-horizontal" data-ng-if="quotation.drpContactType=='OTHERS'">
							<fieldset class="scheduler-border">
								<legend class="scheduler-border">Others</legend>
								<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline">
											<label for="oldicno" class="col-sm-4 control-label">Old
												IC No / Passport No:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.oldicpassportno"  ng-value="{{quotation.oldicpassportno}}" required id="oldicno" type="text"
													class="form-control" 
													maxlength="20" onChange="oldIcNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Name" class="col-sm-4 control-label">Name:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.name"  ng-value="{{quotation.name }}"  required id="Name" class="form-control"
													type="text" maxlength="100" 
													onkeypress="return onlyAlphabets(event,this);" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="SALUTATION" class="col-sm-4 control-label">Salutation:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.salutation" ng-value="{{quotation.salutation }}" required id="SALUTATION"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="Mr">Mr</option>
													<option value="Mrs">Mrs</option>
													<option value="Ms">Ms</option>
													<option value="Dr">Dr</option>
													<option value="Prof">Prof</option>
												</select>
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="Nationality" class="col-sm-4 control-label">Nationality:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.nationality" ng-value="{{quotation.nationality}}" required id="Nationality"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="Indian">INDIAN</option>
													<option value="Mylaysian">MYLAYSIAN</option>
													<option value="Others">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Race" class="col-sm-4 control-label">Race:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.race"  ng-value="{{quotation.race }}" required id="Race" class="form-control"
													>
													<option selected="selected" value="0">--SELECT--</option>
													<option value="Black">BLACK</option>
													<option value="White">WHITE</option>
													<option value="Others">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="dob" class="col-sm-4 control-label">Date
												Of Birth:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.dateOfBirth"  ng-value="{{quotation.dateOfBirth }}" required class="form-control"
													id="dob" type="date" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Age" class="col-sm-4 control-label">Age</label>
											<div class="col-sm-8">
												<input ng-model="quotation.age"  ng-value="{{quotation.age }}" required class="form-control" id="Age"
													type="number"
													onKeyPress="if(this.value.length==2) return false;" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gender" class="col-sm-4 control-label">Gender:</label>
											<div class="col-sm-8">
												<%-- <input ng-model="quotation.gender" ng-value="{{quotation. gender}}" required class="form-control"
													id="gender" type="text" /> --%>
												<select ng-model="quotation.gender" ng-value="{{quotation.gender}}" required id="Gender"
													class="form-control">
													 <option selected="selected" value="0">--SELECT--</option>
													<option value="Male">MALE</option>
													<option value="Female">FEMALE</option> 
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Maritalstatus" class="col-sm-4 control-label">Marital
												Status:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.maritalStatus" ng-value="{{quotation.maritalStatus }}" required id="Maritalstatus"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="SINGLE">SINGLE</option>
													<option value="MARRIED">MARRIED</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Occupation" class="col-sm-4 control-label">Occupation:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.occupation" ng-value="{{quotation.occupation }}" required id="Occupation"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="Employed">EMPLOYED</option>
													<option value="Business">BUSINESS</option>
													<option value="House wife">HOUSE WIFE</option>
													<option value="Others">OTHERS</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregistered" class="col-sm-4 control-label">GST
												Registered:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.gstRegistered" ng-value="{{quotation.gstRegistered }}"  required id="gstregistered"
													class="form-control" 
													onChange="gsTregistered()">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gstregistrationno" class="col-sm-4 control-label">GST
												Registration No:</label>
											<div class="col-sm-8">
												<input disabled ng-model="quotation.gstregistrationno" ng-value="{{quotation.gstregistrationno }}" required
													class="form-control" id="Gstregistrationno" type="number"
													onKeyPress="if(this.value.length==10) return false;"
													onChange="gstRegistrationNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregdate" class="col-sm-4 control-label">GST
												Reg Date:</label>
											<div class="col-sm-8">
												<input disabled ng-model="quotation.gstregistrationdate" ng-value="{{quotation.gstregistrationdate }}" required
													class="form-control" id="gstregdate" type="date" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gstexpirydate" class="col-sm-4 control-label">GST
												Expiry Date:</label>
											<div class="col-sm-8">
												<input disabled ng-model="quotation.gstexpirydate" ng-value="{{quotation.gstexpirydate }}"  required
													class="form-control" id="Gstexpirydate" type="date"
													/>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Website" class="col-sm-4 control-label">Website:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.website" ng-value="{{quotation.website }}" required class="form-control"
													id="Website" type="url"  />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Employmentstatus" class="col-sm-4 control-label">Employment
												Status:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.employementstatus" ng-value="{{quotation.employementstatus }}" required
													id="Employmentstatus" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
									</div>

									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label for="Trafficviolation" class="col-sm-4 control-label">Traffic
												Violation:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.trafficviolation" ng-value="{{quotation.trafficviolation }}" required
													id="Trafficviolation" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>													
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Email" class="col-sm-4 control-label">E-mail:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.email" ng-value="{{quotation.email }}"  required class="form-control" id="Email"
													type="email" 
													onChange="emailVal()" />
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="Vipstatus" class="col-sm-4 control-label">VIP
												Status:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.vipstatus" ng-value="{{quotation.vipstatus }}" required id="Vipstatus"
													class="form-control" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<fieldset class="scheduler-border">
											<legend class="scheduler-border">Permanent Address</legend>
											<div class="row form-group form-inline">
												<label for="Address" class="col-sm-4 control-label">Address:</label>
												<div class="col-sm-8">
													<input ng-model="quotation.address" ng-value="{{quotation.address }}"  required class="form-control"
														id="Address" type="text" maxlength="120"
														 />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="postcode" class="col-sm-4 control-label">Post
													Code:</label>
												<div class="col-sm-8">
													<input ng-model="quotation.postCode" ng-value="{{quotation.postCode }}" required class="form-control"
														id="postcode" type="number" 
														onKeyPress="if(this.value.length==6 ) return false;"
														onChange="posTcode()" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="state" class="col-sm-4 control-label">State/Country:</label>
												<div class="col-sm-8">
													<select ng-model="quotation.statecountry" ng-value="{{quotation.statecountry }}" required id="state"
														class="form-control">
														<option selected="selected" value="0">--SELECT--</option>
														<option value="1">INDIA</option>
														<option value="2">MYLASIA</option>
													</select>
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="Countrycode" class="col-sm-4 control-label">Country
													code:</label>
												<div class="col-sm-8">
													<input ng-model="quotation.countryCode" ng-value="{{quotation.countryCode }}"  required class="form-control"
														id="Countrycode" type="number"
														onKeyPress="if(this.value.length==3 ) return false;" />
												</div>
											</div>
										</fieldset>
										<div class="row form-group form-inline">
											<label for="mobileno" class="col-sm-4 control-label">Mobile
												No:</label>
											<div class="col-sm-8">
												<input ng-model="quotation.mobileNo" ng-value="{{quotation.mobileNo }}"  required class="form-control"
													id="mobileno" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="mobilEno()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno1" class="col-sm-4 control-label">Tel
												No.(House):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.telnohouse" ng-value="{{quotation.telnohouse }}" required class="form-control"
													id="telno1" type="number"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno2" class="col-sm-4 control-label">Tel
												No.(Office):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.telnooffice" ng-value="{{quotation.telnooffice }}" required class="form-control"
													id="telno2" type="number" maxlength="10"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno1" class="col-sm-4 control-label">Fax
												No.(House):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.faxnohouse" ng-value="{{quotation.faxnohouse }}" required class="form-control"
													id="faxno1" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno2" class="col-sm-4 control-label">Fax
												No.(Office):</label>
											<div class="col-sm-8">
												<input ng-model="quotation.faxnooffice" ng-value="{{quotation.faxnooffice }}" required class="form-control"
													id="faxno2" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Pdpa" class="col-sm-4 control-label">PDPA:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.pdpa" ng-value="{{quotation.pdpa }}" required id="Pdpa" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="N0">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Css" class="col-sm-4 control-label">CSS:</label>
											<div class="col-sm-8">
												<select ng-model="quotation.css" ng-value="{{quotation.css }}" required id="Css" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="remarks" class="col-sm-4 control-label">Remarks:</label>
											<div class="col-sm-8">
											<textarea ng-model="quotation.remarks" class="form-control"
													id="remarks">{{quotation.remarks}}
													</textarea>
											</div>
										</div> 
									</div>
								</div>
							 
									
										Personal Data Protection consent signed by customer
											<div class="col-sm-12">
											<label><input type="radio" value="YES" ng-model="quotation.datasignedcustomer">Yes</label>
											<label><input type="radio" value="NO" ng-model="quotation.datasignedcustomer">No</label>
										</div>
									
									
										Consent on Cross Selling signed by customer
										<div class="col-sm-12">
											<label><input type="radio" value="YES" ng-model="quotation.crosssignedcustomer">Yes</label>
											<label><input type="radio" value="NO" ng-model="quotation.crosssignedcustomer">No</label>
										</div>
									
								</fieldset> 
							 

							<button type="submit" ng-click="submit()" class="btn  btn-success center pull-right"
								>Next</button>
						</div>
					</form>
				</div>

			</div>

		</div>
		</div>
</body>

</html>




