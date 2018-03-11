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
	
	
	
 <script type="text/javascript">
 /* 
 window.onload=session;
 function session(){
	 document.getElementById("CONTACT_TYPE").value = "${contactType}";
	 document.getElementById("SOURCE_TYPE").value = "${contactType}";
 }
  */
 var app = angular.module("quotation", ['ngMessages']).controller("quotationController",
			function($scope) {
				$scope.contactId = null;
				fnendtmotoronload();
				
			});
	//var app = angular.module('app', ['ngMessages']);
	//$SCdrpContactType=
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
					}
				});

			}
		});
		return status;
	}
</script>

<script>
function validationQuotation() {
    document.getElementById("demo").innerHTML = "Hello World";
}
</script>

<!-- <style type="text/css">
.inputfield{

height:25px

}
select{
height:25px;
}
</style> -->
</head>

<body class="" data-ng-app="quotation"
	data-ng-controller="quotationController ">
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
					<li><a href="premium"> <i class="icon-grid"></i>Premium
					</a> <!-- <ul id="tablesDropdown" class="collapse list-unstyled ">
							<li><a href="tables.html">Bootstrap tables</a></li>
							<li><a href="tables-datatable.html">Datatable</a></li>
						</ul>--></li>
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
						<button type='submit' onclick="location.href='logout'" class="btn btn-danger pull-right">Log out</button>
					</div>
				</div>
			</nav>
		</header>
		<div class="card-body">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<h4>Quotation | Client Profile</h4>
					${sourceType}
				</div>
				<div class="card-body">
					<form action="save_quotation_form" method="POST" modelAttribute="quotationFormData">
						<fieldset class="scheduler-border">
							<legend class="scheduler-border">Account Code / Branch
								Details</legend>
							<div class="row">
								<div class="col-md-6">
									<div class="row form-group form-inline">
										<label for="sourceType" class="col-sm-4 control-label">Source
											Type </label>
										<%-- 	${sessionScope.sourceType} --%>
										<div class="col-sm-8">
											<select name="sourceType" id="SOURCE_TYPE" value="${sourceType }"
												class="form-control inputfield">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="accountCode" class="col-sm-4 control-label">Account
											Code</label>
										<div class="col-sm-8">
											<input name="accountCode"  id="accountCode" value="${accountCode}"
												class="form-control inputfield" type="text"/>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="row form-group form-inline">
										<label for="branch" class="col-sm-4 control-label">Branch</label>
										<div class="col-sm-8">
											<input name="branch" required id="branch" value="${branch }"
												class="form-control inputfield" type="text" />
										</div>
									</div>
									<div class="row form-group form-inline">
										<label for="accountName" class="col-sm-4 control-label">Account
											Name</label>
										<div class="col-sm-8">
											<input name="accountName" required id="accountName"
												class="form-control inputfield" type="text" value="${accountName}" />
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
											<select name="contactType" id="CONTACT_TYPE"
												class="form-control inputfield" data-ng-model="drpContactType">
												<option selected="selected" value="0">--SELECT--</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						<!-- </div> -->
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
												<input name="newIcNo" required id="newicno"
													class="form-control inputfield" value="${newIcNo }" 
													maxlength="12" />
												<!-- pattern="\d{12} " -->
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="oldicno" class="col-sm-4 control-label">Old
												IC No / Passport No:</label>
											<div class="col-sm-8">
												<input name="oldIcNo" required id="oldicno"
													class="form-control inputfield" value="${oldIcNo }" 
													maxlength="12" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="numberEdit" class="col-sm-4 control-label">Business
												Reg No:</label>
											<div class="col-sm-8">
												<input name="businessRegNo" required id="numberEdit"
													class="form-control inputfield" type="number"
													value="${businessRegNo}" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="nameEdit" class="col-sm-4 control-label">Name:</label>
											<div class="col-sm-8">
												<input name="name" required id="nameEdit"
													class="form-control inputfield" type="text" value="${name }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="salutation" class="col-sm-4 control-label">Salutation:</label>
											<div class="col-sm-8">
												<input name="salutation" required id="salutation"
													class="form-control inputfield" type="text" value="${salutation }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="nationalityEdit" class="col-sm-4 control-label">Nationality:</label>
											<div class="col-sm-8">
												<input name="nationality" required class="form-control inputfield"
													id="nationalityEdit" type="text"
													value="${nationality }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="raceEdit" class="col-sm-4 control-label">Race:</label>
											<div class="col-sm-8">
												<input name="race" required class="form-control inputfield"
													id="raceEdit" type="text" value="${race }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="dobEdit" class="col-sm-4 control-label">Date
												Of Birth:</label>
											<div class="col-sm-8">
												<input name="dateOfBirth" required class="form-control inputfield"
													id="dobEdit" type="date" value="${dateOfBirth }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="genderEdit" class="col-sm-4 control-label">Gender:</label>
											<div class="col-sm-8">
												<select name="gender" id="genderEdit" class="form-control inputfield"  value="${gender }">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="MALE">MALE</option>
													<option value="FEMALE">FEMALE</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="maritalstatusEdit" class="col-sm-4 control-label">Marital
												Status:</label>
											<div class="col-sm-8">
												<select name="maritalStatus" id="maritalstatusEdit" class="form-control inputfield"  value="${maritalStatus }">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="SINGLE">SINGLE</option>
													<option value="MARRIED">MARRIED</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label for="OccupationEdit" class="col-sm-4 control-label">Occupation:</label>
											<div class="col-sm-8">
												<input name="occupation" required class="form-control inputfield"
													id="OccupationEdit" type="text"
													value="${occupation }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="emloymentStatus" class="col-sm-4 control-label">Employment Status:</label>
											<div class="col-sm-8">
												<input name="employmentStatus" required class="form-control inputfield"
													id="emloymentStatus" type="text"
													value="${employmentStatus }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="GSTRegisteredEdit" class="col-sm-4 control-label">GST
												Registered:</label>
											<div class="col-sm-8"> 
												<select name="gstRegistered" id="GSTRegisteredEdit" class="form-control inputfield"  value="${gstRegistered }">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="vipStatus" class="col-sm-4 control-label">VIP
												Status:</label>
											<div class="col-sm-8"> 
												<select name="vipStatus" id="vipStatus" class="form-control inputfield"  value="${vipStatus }">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
										<fieldset class="scheduler-border" >
										<legend class="scheduler-border" >Permanent Address</legend>
										<div class="row form-group form-inline">
											<label for="AddressEdit" class="col-sm-4 control-label">Address:</label>
											<div class="col-sm-8">
												<input name="address" required class="form-control inputfield"
													id="AddressEdit" type="text" value="${address }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="PostCodeEdit" class="col-sm-4 control-label">Post
												Code:</label>
											<div class="col-sm-8">
												<input name="postCode" required class="form-control inputfield"
													id="PostCodeEdit" type="number" value="${postCode }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="CountrycodeEdit" class="col-sm-4 control-label">Country
												code:</label>
											<div class="col-sm-8">
												<input name="countryCode" required class="form-control inputfield"
													id="CountrycodeEdit" type="number"
													value="${countryCode }" />
											</div>
										</div>
										</fieldset>
										<div class="row form-group form-inline">
											<label for="Mobile NoEdit" class="col-sm-4 control-label">Mobile
												No:</label>
											<div class="col-sm-8">
												<input name="mobileNo" required class="form-control inputfield"
													id="Mobile NoEdit" type="text"
													value="${mobileNo }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="pdpaEdit" class="col-sm-4 control-label">PDPA:</label>
											<div class="col-sm-8">
												<select name="pdpa" id="pdpaEdit" class="form-control inputfield"  value="${pdpa }">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="N0">NO</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label for="cssEdit" class="col-sm-4 control-label">CSS:</label>
											<div class="col-sm-8">
												<select name="css" id="cssEdit" class="form-control inputfield"  value="${css }">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</fieldset>
							<button type="submit" class="pull-right btn  btn-success center" onclick="validationIndividual()">Next</button>
						</div>
						<!--  onclick="location.href='save_quotation_form'"  -->

						<div class="form-horizontal" data-ng-if="drpContactType=='2'">
							<fieldset class="scheduler-border">
								<legend class="scheduler-border">Business</legend>
								<div class="row">

									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label"
												for="businessRegistrationNoEdit">Business
												Registration No:</label>
											<div class="col-sm-8">
												<input name="businessRegNo" required class="form-control inputfield"
													id="businessRegistrationNumberEdit"
													type="number" value="${businessRegNo }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="nameEdit">Name:</label>
											<div class="col-sm-8">
												<input name="name" required class="form-control inputfield"
													id="nameEdit" type="text" value="${name }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label"
												for="TypeOfBusinessEdit">Type Of Business:</label>
											<div class="col-sm-8">
												<input name="typeOfBusiness" required class="form-control inputfield"
													id="TypeOfBusinessEdit" type="text"
													value="${typeOfBusiness }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="GSTRegisteredEdit">GST
												Registered:</label>
											<div class="col-sm-8">
												<select name="gstRegistered" id="GSTRegisteredEdit" class="form-control inputfield" value="${gstRegistered }" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>													
													
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="AddressEdit">Address:</label>
											<div class="col-sm-8">
												<input name="address" required class="form-control inputfield"
													id="AddressEdit" type="text" value="${address }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="PostCodeEdit">Post
												Code:</label>
											<div class="col-sm-8">
												<input name="postCode" required class="form-control inputfield"
													id="PostCodeEdit" type="number" value="${postCode }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="CountrycodeEdit">Country
												code:</label>
											<div class="col-sm-8">
												<input name="countryCode" required class="form-control inputfield"
													id="CountrycodeEdit" type="number"
													value="${countryCode }" /> <br />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="Mobile NoEdit">Mobile
												No:</label>
											<div class="col-sm-8">
												<input name="mobileNo" required class="form-control inputfield"
													id="Mobile NoEdit" type="number"
													value="${mobileNo }" />
											</div>
										</div>
									</div>
								</div>
							</fieldset>
							<button type="submit" class="pull-right btn  btn-success center">Next</button>
						</div>



						<div class="form-horizontal" data-ng-if="drpContactType=='3'">
							<fieldset class="scheduler-border">
								<legend class="scheduler-border" >Others</legend>
								<div class="row">
									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="numberEdit">New
												IC No:</label>
											<div class="col-sm-8">
												<input name="newIcNo" required class="form-control inputfield"
													id="numberEdit" type="number" value="${newIcNo }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="nameEdit">Name:</label>
											<div class="col-sm-8">
												<input name="name" required class="form-control inputfield"
													id="nameEdit" type="text" value="${name }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="genderEdit">Gender:</label>
											<div class="col-sm-8">
												<select name="gender" id="genderEdit" class="form-control inputfield"  value="${gender }">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="MALE">MALE</option>
													<option value="FEMALE">FEMALE</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="maritalstatusEdit">Marital
												Status:</label>
											<div class="col-sm-8">
												<select name="maritalStatus" id="maritalstatusEdit" class="form-control inputfield"  value="${maritalStatus }">
													<option selected="selected" value="0">--SELECT--</option>
													<option value="SINGLE">SINGLE</option>
													<option value="MARRIED">MARRIED</option>
												</select>
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="GSTRegisteredEdit">GST
												Registered:</label>
											<div class="col-sm-8">
												<select name="gstRegistered" id="GSTRegisteredEdit" class="form-control inputfield" value="${gstRegistered }" >
													<option selected="selected" value="0">--SELECT--</option>
													<option value="YES">YES</option>
													<option value="NO">NO</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="AddressEdit">Address:</label>
											<div class="col-sm-8">
												<input required class="form-control inputfield" id="AddressEdit"
													name="address" type="text" value="${address }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="PostCodeEdit">Post
												Code:</label>
											<div class="col-sm-8">
												<input required class="form-control inputfield" id="PostCodeEdit"
													name="postCode" type="number" value="${postCode }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="OccupationEdit">Occupation:</label>
											<div class="col-sm-8">
												<input required class="form-control inputfield" id="OccupationEdit"
													name="occupation" type="text"
													value="${occupation }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="CountrycodeEdit">Country
												code:</label>
											<div class="col-sm-8">
												<input required class="form-control inputfield" id="CountrycodeEdit"
													name="countryCode" type="number"
													value="${countryCode }" />
											</div>
										</div>
										<div class="row form-group form-inline">
											<label class="col-sm-4 control-label" for="Mobile NoEdit">Mobile
												No:</label>
											<div class="col-sm-8">
												<input required class="form-control inputfield" id="Mobile NoEdit"
													type="number" name="mobileNo" value="${mobileNo }" />
											</div>
										</div>
									</div>
								</div>

							</fieldset>
							<button type="submit" class="btn  btn-success center pull-right">Next</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>


