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
<!-- 
<script src="http://localhost/nsure/dashboard/js/angular.min.js"></script> -->

<script src="http://localhost/nsure/dashboard/js/jquery.min.js"></script>
<script src="//code.angularjs.org/snapshot/angular.min.js"></script>
<script src="//code.angularjs.org/snapshot/angular-messages.js"></script>
<!-- 
<script src='resources/js/angular.min.js'></script>
<script src='resources/js/angular-touch.min.js'></script>
<script src='resources/js/angular-animate.min.js'></script>
<script src='resources/js/ui-grid.min.js'></script>
<script src="resources/js/index.js"></script> -->
<link rel='stylesheet prefetch' href='resources/css/ui-grid.min.css'>
<link rel='stylesheet prefetch' href='resources/css/style.css'>

<script type="text/javascript" src="resources/js/validate.js"></script>

<script type="text/javascript">
 var app = angular.module("quotation", ['ngMessages']);
 app.controller("quotationController",
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
<body data-ng-app="quotation" data-ng-controller="quotationController" id="ENDOR_NON_JPJ_MOTOR">
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
					<li><a href="cnoptions"> <i class="icon-form"></i>CN Options</a></li>
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
		<div class="card-body"  data-ng-init="onloadFun()">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<h4>Quotation | Client Profile</h4>
				</div>
				<div class="card-body">
					<form   method="POST">
						<fieldset class="scheduler-border">
							<legend class="scheduler-border">Account Code / Branch
								Details</legend>
							<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline">
										<label for="sourceType" class="col-sm-4 control-label">Source
											Type </label>
										<div class="col-sm-8">
											<select name="sourceType" value="${sourceType }" required id="SOURCE_TYPE"
												class="form-control">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="accountCode" class="col-sm-4 control-label">Account
											Code</label>
										<div class="col-sm-8">
											<input name="accountCode" value="${accountCode }" required id="accountCode"
												class="form-control" type="number"												
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
												value="${ branch}"
												onkeypress="return onlyAlphabets(event,this);" />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="accountName" class="col-sm-4 control-label">Account
											Name</label>
										<div class="col-sm-8">
											<input name="accountName" required id="accountName"
												class="form-control" type="text" maxlength="10"
												value="${accountName}" 
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
										<select required id="CONTACT_TYPE" 
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
												<input name="newIcNo"  value="${newIcNo }"  required id="newicno" type="number"
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
												<input name="oldicpassportno"  value="${ oldicpassportno}" required id="oldicno" type="text"
													class="form-control" 
													maxlength="20" onChange="oldIcNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Name" class="col-sm-4 control-label">Name:</label>
											<div class="col-sm-8">
												<input name="name"  value="${name }"  required id="Name" class="form-control"
													type="text" maxlength="100" 
													onkeypress="return onlyAlphabets(event,this);" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="SALUTATION" class="col-sm-4 control-label">Salutation:</label>
											<div class="col-sm-8">
												<select name="salutation" value="${salutation }" required id="SALUTATION"
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
												<select name="nationality" value="${ nationality}" required id="Nationality"
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
												<select name="race"  value="${race }" required id="Race" class="form-control"
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
												<input name="dateOfBirth"  value="${dateOfBirth }" required class="form-control"
												id="dateob"	type="date" /><!--   -->
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Age" class="col-sm-4 control-label">Age</label>
											<div class="col-sm-8">
												<input name="age"  value="${age }" required class="form-control" id="Agee"
													type="number"
													onKeyPress="if(this.value.length==2) return false;" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gender" class="col-sm-4 control-label">Gender:</label>
											<div class="col-sm-8">
												<input name="gender" value="${ gender}" required class="form-control"
													id="Genderg" type="text" />
												<!--<select name="Gender" required id="gender"
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
												<select name="maritalStatus" value="${maritalStatus }" required id="Maritalstatus"
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
												<select name="occupation" value="${occupation }" required id="Occupation"
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
												<select name="gstRegistered" value="${gstRegistered }"  required id="gstregistered"
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
												<input disabled name="gstregistrationno" value="${gstregistrationno }" required
													class="form-control" id="Gstregistrationno" type="number"
													onKeyPress="if(this.value.length==10) return false;"
													onChange="gstRegistrationNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregdate" class="col-sm-4 control-label">GST
												Reg Date:</label>
											<div class="col-sm-8">
												<input disabled name="gstregistrationdate" value="${gstregistrationdate }" required
													class="form-control" id="gstregdate" type="date" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gstexpirydate" class="col-sm-4 control-label">GST
												Expiry Date:</label>
											<div class="col-sm-8">
												<input disabled name="gstexpirydate" value="${gstexpirydate }"  required
													class="form-control" id="Gstexpirydate" type="date"
													/>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Website" class="col-sm-4 control-label">Website:</label>
											<div class="col-sm-8">
												<input name="website" value="${website }" required class="form-control"
													id="Website" type="url"  />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Employmentstatus" class="col-sm-4 control-label">Employment
												Status:</label>
											<div class="col-sm-8">
												<select name="employementstatus" value="${employementstatus }" required
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
												<select name="trafficviolation" value="${trafficviolation }" required
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
												<input name="email" value="${email }"  required class="form-control" id="Email"
													type="email" 
													onChange="emailVal()" />
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="Vipstatus" class="col-sm-4 control-label">VIP
												Status:</label>
											<div class="col-sm-8">
												<select name="vipstatus" value="${vipstatus }" required id="Vipstatus"
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
													<input name="address" value="${address }"  required class="form-control"
														id="Address" type="text" maxlength="120"
														 />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="postcode" class="col-sm-4 control-label">Post
													Code:</label>
												<div class="col-sm-8">
													<input name="postCode" value="${postCode }" required class="form-control"
														id="postcode" type="number" 
														onKeyPress="if(this.value.length==6 ) return false;"
														onChange="posTcode()" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="state" class="col-sm-4 control-label">State/Country:</label>
												<div class="col-sm-8">
													<select name="statecountry" value="${statecountry }" required id="state"
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
													<input name="countryCode" value="${countryCode }"  required class="form-control"
														id="Countrycode" type="number"
														onKeyPress="if(this.value.length==3 ) return false;" />
												</div>
											</div>
										</fieldset>
										<div class="row form-group form-inline">
											<label for="mobileno" class="col-sm-4 control-label">Mobile
												No:</label>
											<div class="col-sm-8">
												<input name="mobileNo" value="${mobileNo }"  required class="form-control"
													id="mobileno" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="mobilEno()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno1" class="col-sm-4 control-label">Tel
												No.(House):</label>
											<div class="col-sm-8">
												<input name="telnohouse" value="${telnohouse }" required class="form-control"
													id="telno1" type="number"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno2" class="col-sm-4 control-label">Tel
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="telnooffice" value="${telnooffice }" required class="form-control"
													id="telno2" type="number" maxlength="10"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno1" class="col-sm-4 control-label">Fax
												No.(House):</label>
											<div class="col-sm-8">
												<input name="faxnohouse" value="${faxnohouse }" required class="form-control"
													id="faxno1" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno2" class="col-sm-4 control-label">Fax
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="faxnooffice" value="${faxnooffice }" required class="form-control"
													id="faxno2" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Pdpa" class="col-sm-4 control-label">PDPA:</label>
											<div class="col-sm-8">
												<select name="pdpa" value="${pdpa }" required id="Pdpa" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="N0">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Css" class="col-sm-4 control-label">CSS:</label>
											<div class="col-sm-8">
												<select name="css" value="${css }" required id="Css" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="remarks" class="col-sm-4 control-label">Remarks:</label>
											<div class="col-sm-8">
												<textarea name="remarks" class="form-control"
													id="remarks">${remarks }
													</textarea>
											</div>
										</div>
									</div>
								</div>
																
										Personal Data Protection consent signed by customer
											<div class="col-sm-12">
											<label><input type="radio" value="YES" name="datasignedcustomer">Yes</label>
											<label><input type="radio" value="NO" name="datasignedcustomer">No</label>
										</div>												
										Consent on Cross Selling signed by customer
										<div class="col-sm-12">
											<label><input type="radio" value="YES" name="crosssignedcustomer">Yes</label>
											<label><input type="radio" value="NO" name="crosssignedcustomer">No</label>
										</div>									
								
							</fieldset>
							<button type="submit" class="pull-right btn  btn-success center">
								Next</button>
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
												<input name="businessRegNo" value="${ businessRegNo}"  required id="businessregno"
													class="form-control" type="text" maxlength="10"
													onChange="businessRegno()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Name" class="col-sm-4 control-label">Name:</label>
											<div class="col-sm-8">
												<input name="name"  value="${name }"  required id="Name" class="form-control"
													type="text" maxlength="100" 
													onkeypress="return onlyAlphabets(event,this);" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Race" class="col-sm-4 control-label">Race:</label>
											<div class="col-sm-8">
												<select name="race"  value="${race }" required id="Race" class="form-control"
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
												<input name="typeOfBusiness" value="${ typeOfBusiness}" required class="form-control"
													id="typeofbusiness" type="text" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Occupation" class="col-sm-4 control-label">Occupation:</label>
											<div class="col-sm-8">
												<select name="occupation" value="${occupation }" required id="Occupation"
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
												<select name="gstRegistered" value="${gstRegistered }"  required id="gstregistered"
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
												<input disabled name="gstregistrationno" value="${gstregistrationno }" required
													class="form-control" id="Gstregistrationno" type="number"
													onKeyPress="if(this.value.length==10) return false;"
													onChange="gstRegistrationNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregdate" class="col-sm-4 control-label">GST
												Reg Date:</label>
											<div class="col-sm-8">
												<input disabled name="gstregistrationdate" value="${gstregistrationdate }" required
													class="form-control" id="gstregdate" type="date" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gstexpirydate" class="col-sm-4 control-label">GST
												Expiry Date:</label>
											<div class="col-sm-8">
												<input disabled name="gstexpirydate" value="${gstexpirydate }"  required
													class="form-control" id="Gstexpirydate" type="date"
													/>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Website" class="col-sm-4 control-label">Website:</label>
											<div class="col-sm-8">
												<input name="website" value="${website }" required class="form-control"
													id="Website" type="url"  />
											</div>
										</div>
										<!-- <div class="row form-group form-inline">
											<label for="Employmentstatus" class="col-sm-4 control-label">Employment
												Status:</label>
											<div class="col-sm-8">
												<select name="EmploymentStatus" required
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
												<select name="trafficviolation" value="${trafficviolation }" required
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
												<input name="email" value="${email }"  required class="form-control" id="Email"
													type="email" 
													onChange="emailVal()" />
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="Vipstatus" class="col-sm-4 control-label">VIP
												Status:</label>
											<div class="col-sm-8">
												<select name="vipstatus" value="${vipstatus }" required id="Vipstatus"
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
													<input name="address" value="${address }"  required class="form-control"
														id="Address" type="text" maxlength="120"
														 />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="postcode" class="col-sm-4 control-label">Post
													Code:</label>
												<div class="col-sm-8">
													<input name="postCode" value="${postCode }" required class="form-control"
														id="postcode" type="number" 
														onKeyPress="if(this.value.length==6 ) return false;"
														onChange="posTcode()" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="state" class="col-sm-4 control-label">State/Country:</label>
												<div class="col-sm-8">
													<select name="statecountry" value="${statecountry }" required id="state"
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
													<input name="countryCode" value="${countryCode }"  required class="form-control"
														id="Countrycode" type="number"
														onKeyPress="if(this.value.length==3 ) return false;" />
												</div>
											</div>
										</fieldset>
										<div class="row form-group form-inline">
											<label for="mobileno" class="col-sm-4 control-label">Mobile
												No:</label>
											<div class="col-sm-8">
												<input name="mobileNo" value="${mobileNo }"  required class="form-control"
													id="mobileno" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="mobilEno()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno1" class="col-sm-4 control-label">Tel
												No.(House):</label>
											<div class="col-sm-8">
												<input name="telnohouse" value="${telnohouse }" required class="form-control"
													id="telno1" type="number"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno2" class="col-sm-4 control-label">Tel
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="telnooffice" value="${telnooffice }" required class="form-control"
													id="telno2" type="number" maxlength="10"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno1" class="col-sm-4 control-label">Fax
												No.(House):</label>
											<div class="col-sm-8">
												<input name="faxnohouse" value="${faxnohouse }" required class="form-control"
													id="faxno1" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno2" class="col-sm-4 control-label">Fax
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="faxnooffice" value="${faxnooffice }" required class="form-control"
													id="faxno2" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Pdpa" class="col-sm-4 control-label">PDPA:</label>
											<div class="col-sm-8">
												<select name="pdpa" value="${pdpa }" required id="Pdpa" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="N0">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Css" class="col-sm-4 control-label">CSS:</label>
											<div class="col-sm-8">
												<select name="css" value="${css }" required id="Css" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="remarks" class="col-sm-4 control-label">Remarks:</label>
											<div class="col-sm-8">
												<textarea name="remarks" class="form-control"
													id="remarks">${remarks }
													</textarea>
											</div>
										</div>
									</div>
								</div>
								 
									
										Personal Data Protection consent signed by customer
										<div class="col-sm-12">
											<label><input type="radio" value="YES" name="datasignedcustomer">Yes</label>
											<label><input type="radio" value="NO" name="datasignedcustomer">No</label>
										</div>
									
										Consent on Cross Selling signed by customer
										<div class="col-sm-12">
											<label><input type="radio" value="YES" name="crosssignedcustomer">Yes</label>
											<label><input type="radio" value="NO" name="crosssignedcustomer">No</label>
										</div>
									
								 
							</fieldset>
							<button type="submit" class="pull-right btn  btn-success center">Next</button>
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
												<input name="oldicpassportno"  value="${ oldicpassportno}" required id="oldicno" type="text"
													class="form-control" 
													maxlength="20" onChange="oldIcNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Name" class="col-sm-4 control-label">Name:</label>
											<div class="col-sm-8">
												<input name="name"  value="${name }"  required id="Name" class="form-control"
													type="text" maxlength="100" 
													onkeypress="return onlyAlphabets(event,this);" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="SALUTATION" class="col-sm-4 control-label">Salutation:</label>
											<div class="col-sm-8">
												<select name="salutation" value="${salutation }" required id="SALUTATION"
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
												<select name="nationality" value="${ nationality}" required id="Nationality"
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
												<select name="race"  value="${race }" required id="Race" class="form-control"
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
												<input name="dateOfBirth"  value="${dateOfBirth }" required class="form-control"
													id="dateob" type="date" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Age" class="col-sm-4 control-label">Age</label>
											<div class="col-sm-8">
												<input name="age"  value="${age }" required class="form-control" id="Age"
													type="number"
													onKeyPress="if(this.value.length==2) return false;" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gender" class="col-sm-4 control-label">Gender:</label>
											<div class="col-sm-8">
												<%-- <input name="gender" value="${ gender}" required class="form-control"
													id="gender" type="text" /> --%>
												<select name="gender" value="${ gender}" required id="Gender"
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
												<select name="maritalStatus" value="${maritalStatus }" required id="Maritalstatus"
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
												<select name="occupation" value="${occupation }" required id="Occupation"
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
												<select name="gstRegistered" value="${gstRegistered }"  required id="gstregistered"
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
												<input disabled name="gstregistrationno" value="${gstregistrationno }" required
													class="form-control" id="Gstregistrationno" type="number"
													onKeyPress="if(this.value.length==10) return false;"
													onChange="gstRegistrationNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="gstregdate" class="col-sm-4 control-label">GST
												Reg Date:</label>
											<div class="col-sm-8">
												<input disabled name="gstregistrationdate" value="${gstregistrationdate }" required
													class="form-control" id="gstregdate" type="date" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Gstexpirydate" class="col-sm-4 control-label">GST
												Expiry Date:</label>
											<div class="col-sm-8">
												<input disabled name="gstexpirydate" value="${gstexpirydate }"  required
													class="form-control" id="Gstexpirydate" type="date"
													/>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Website" class="col-sm-4 control-label">Website:</label>
											<div class="col-sm-8">
												<input name="website" value="${website }" required class="form-control"
													id="Website" type="url"  />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Employmentstatus" class="col-sm-4 control-label">Employment
												Status:</label>
											<div class="col-sm-8">
												<select name="employementstatus" value="${employementstatus }" required
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
												<select name="trafficviolation" value="${trafficviolation }" required
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
												<input name="email" value="${email }"  required class="form-control" id="Email"
													type="email" 
													onChange="emailVal()" />
											</div>
										</div>

										<div class="row form-group form-inline">
											<label for="Vipstatus" class="col-sm-4 control-label">VIP
												Status:</label>
											<div class="col-sm-8">
												<select name="vipstatus" value="${vipstatus }" required id="Vipstatus"
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
													<input name="address" value="${address }"  required class="form-control"
														id="Address" type="text" maxlength="120"
														 />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="postcode" class="col-sm-4 control-label">Post
													Code:</label>
												<div class="col-sm-8">
													<input name="postCode" value="${postCode }" required class="form-control"
														id="postcode" type="number" 
														onKeyPress="if(this.value.length==6 ) return false;"
														onChange="posTcode()" />
												</div>
											</div>
											<div class="row form-group form-inline">
												<label for="state" class="col-sm-4 control-label">State/Country:</label>
												<div class="col-sm-8">
													<select name="statecountry" value="${statecountry }" required id="state"
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
													<input name="countryCode" value="${countryCode }"  required class="form-control"
														id="Countrycode" type="number"
														onKeyPress="if(this.value.length==3 ) return false;" />
												</div>
											</div>
										</fieldset>
										<div class="row form-group form-inline">
											<label for="mobileno" class="col-sm-4 control-label">Mobile
												No:</label>
											<div class="col-sm-8">
												<input name="mobileNo" value="${mobileNo }"  required class="form-control"
													id="mobileno" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="mobilEno()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno1" class="col-sm-4 control-label">Tel
												No.(House):</label>
											<div class="col-sm-8">
												<input name="telnohouse" value="${telnohouse }" required class="form-control"
													id="telno1" type="number"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="telno2" class="col-sm-4 control-label">Tel
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="telnooffice" value="${telnooffice }" required class="form-control"
													id="telno2" type="number" maxlength="10"
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="telNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno1" class="col-sm-4 control-label">Fax
												No.(House):</label>
											<div class="col-sm-8">
												<input name="faxnohouse" value="${faxnohouse }" required class="form-control"
													id="faxno1" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="faxno2" class="col-sm-4 control-label">Fax
												No.(Office):</label>
											<div class="col-sm-8">
												<input name="faxnooffice" value="${faxnooffice }" required class="form-control"
													id="faxno2" type="number" 
													onKeyPress="if(this.value.length==10 )return false;"
													onChange="faxNo1()" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Pdpa" class="col-sm-4 control-label">PDPA:</label>
											<div class="col-sm-8">
												<select name="pdpa" value="${pdpa }" required id="Pdpa" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="N0">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="Css" class="col-sm-4 control-label">CSS:</label>
											<div class="col-sm-8">
												<select name="css" value="${css }" required id="Css" class="form-control">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="remarks" class="col-sm-4 control-label">Remarks:</label>
											<div class="col-sm-8">
											<textarea name="remarks" class="form-control"
													id="remarks">${remarks }
													</textarea>
											</div>
										</div> 
									</div>
								</div>
							 
									
										Personal Data Protection consent signed by customer
											<div class="col-sm-12">
											<label><input type="radio" value="YES" name="datasignedcustomer">Yes</label>
											<label><input type="radio" value="NO" name="datasignedcustomer">No</label>
										</div>
									
									
										Consent on Cross Selling signed by customer
										<div class="col-sm-12">
											<label><input type="radio" value="YES" name="crosssignedcustomer">Yes</label>
											<label><input type="radio" value="NO" name="crosssignedcustomer">No</label>
										</div>
									
								</fieldset> 
							 

							<button type="submit" class="btn  btn-success center pull-right"
								>Next</button>
						</div>
					</form>
				</div>

			</div>

		</div>
		</div>
</body>

</html>




