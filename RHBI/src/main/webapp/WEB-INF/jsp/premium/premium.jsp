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
				<h3 class="h4" style="color: red;">${sessionScope.user}</h3>
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
				<li><a href="nbquotation"> <i class="icon-form"></i>New
						Business
				</a></li>
				<li><a href="cnoptions"> <i class="icon-form"></i>CN
						Options
				</a></li>
				<li><a href="endorsementdetails"><i class="icon-form"></i>Endorsement</a></li>
				<li><a href="referRisk"> <i class="icon-grid"></i>Refer
						Risk
				</a></li>
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
					<h4>New Business | Premium</h4>
				</div>
				<div class="card-body">
				<form action="save_premium_form" method="POST" modelAttribute="premiumFormData">
					<fieldset class="scheduler-border">
						<legend class="scheduler-border">Sum Insured Details</legend>
						<div class="row">
							<div class="col-md-6">
								<div class="row form-group form-inline">
									<label for="Suminsured" class="col-sm-4  control-label">Sum
										Insured RM</label>
									<div class="col-sm-8">
										<input required name="suminsured1" id="Suminsured"
											class="form-control" type="text" value="${suminsured1}" />
									</div>
								</div>
								<div class="row form-group form-inline">
									<label for="Trailersuminsured" class="col-sm-4  control-label">
										Trailer Sum Insured RM</label>
									<div class="col-sm-8 inner-addon right-addon">
										<input required name="trailersuminsured1"
											id="Trailersuminsured" class="form-control" type="text"
											value="${trailersuminsured1}" />
									</div>
								</div>
								<div class="row form-group form-inline">
									<label for="Allrideramount" class="col-sm-4  control-label">
										All Rider Amount RM</label>
									<div class="col-sm-8">
										<input required name="allrideramount" id="Allrideramount"
											class="form-control" type="text" value="${allrideramount}" />
									</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="row form-group form-inline">
									<label for="Basicpremium" class="col-sm-4  control-label">Basic
										Premium RM</label>
									<div class="col-sm-8">
										<input required name="basicpremium" id="Basicpremium"
											class="form-control" type="text" value="${basicpremium}" />
									</div>
								</div>
								<div class="row form-group form-inline">
									<label for="Trailerpremium" class="col-sm-4  control-label">
										Trailer Premium RM</label>
									<div class="col-sm-8">
										<input required name="trailerpremium" id="Trailerpremium"
											class="form-control" type="text" value="${trailerpremium}" />
									</div>
								</div>
								<div class="row form-group form-inline">
									<label for="Totalbasic" class="col-sm-4  control-label">
										Total Basic RM</label>
									<div class="col-sm-8">
										<input required name="totalbasic" id="Totalbasic"
											class="form-control" type="text" value="${totalbasic}" />
									</div>
								</div>
							</div>
					</div>
				</fieldset>
				<fieldset class="scheduler-border">
					<legend class="scheduler-border">NCD Source</legend>
					<div class="row">
						<div class="col-md-6">
							<div class="row form-group form-inline">
								<label for="Vehiclenumber" class="col-sm-4  control-label">NCD
									Vehicle Number</label>
								<div class="col-sm-8">
									<input   name="vehiclenumber1" id="Vehiclenumber"
										class="form-control" type="text" value="${vehiclenumber1}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Policynumber" class="col-sm-4  control-label">
									Policy Number</label>
								<div class="col-sm-8 inner-addon right-addon">
									<input   name="policynumber" id="Policynumber"
										class="form-control" type="text" value="${policynumber}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Policyexpirydate" class="col-sm-4  control-label">Policy
									Expiry Date</label>
								<div class="col-sm-8">
									<input   name="policyexpirydate" id="Policyexpirydate"
										class="form-control" type="date" value="${policyexpirydate}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Ncdeffectivedate" class="col-sm-4  control-label">NCD
									Effective Date</label>
								<div class="col-sm-8">
									<input   name="ncdeffectivedate" id="Ncdeffectivedate"
										class="form-control" type="date" value="${ncdeffectivedate}" />
								</div>
							</div>
						</div>

						<div class="col-md-6">
							<div class="row form-group form-inline">
								<label for="Ncdfrom" class="col-sm-4  control-label">NCD
									From</label>
								<div class="col-sm-8">
									<input name="ncdfrom" id="Ncdfrom" type="text"
										class="form-control" placeholder="Search" value="${ncdfrom}" />
									<button class="btn btn-default" type="submit">
										<i class="glyphicon glyphicon-search"></i>
									</button>
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Policyeffectivedate"
									class="col-sm-4  control-label"> Policy Effective Date</label>
								<div class="col-sm-8">
									<input   name="policyeffectivedate"
										id="Policyeffectivedate" class="form-control" type="date"
										value="${policyeffectivedate}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Ncdallowedpercent" class="col-sm-4  control-label">
									NCD Allowed Percent</label>
								<div class="col-sm-8">
									<select name="ncdallowedpercent" class="form-control"
										id="Ncdallowedpercent" value="${ncdallowedpercent}">
										<option selected="selected" value="0">--Select--</option>
										<option value="10">10</option>
										<option value="20">20</option>
										<option value="30">30</option>
									</select>
								</div>
							</div>
						</div>

					</div>
					<ul align="center" class="pager">
						<!-- <button type="button" class="btn btn-primary btn-md">Clear
							NCD</button> -->
						 
					</ul>
				</fieldset>
				<fieldset class="scheduler-border">
					<legend class="scheduler-border">Premium Details</legend>
					<div class="row">
						<div class="col-md-6">
							<div class="row form-group form-inline">
								<label for="Annualpremium" class="col-sm-4  control-label">Annual
									Premium RM</label>
								<div class="col-sm-8">
									<input required name="annualpremium" id="Annualpremium"
										class="form-control" type="text" value="${annualpremium}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Ncdamount" class="col-sm-4  control-label">NCD
									Amount RM</label>
								<div class="col-sm-8">
									<input required name="ncdamount" id="Ncdamount"
										class="form-control" type="text" value="${ncdamount}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Grosspremium" class="col-sm-4  control-label">Gross
									Premium RM</label>
								<div class="col-sm-8">
									<input required name="grosspremium" id="Grosspremium"
										class="form-control" type="text" value="${grosspremium}" />
								</div>
							</div>
							 
							<div class="row form-group form-inline">
								<label for="Gst" class="col-sm-4  control-label">GST %
									%</label>
								<div class="col-sm-8">
									<input required name="gst" id="Gst" class="form-control"
										type="text" value="${gst}" />
								</div>
								<label for="Gstrm" class="col-sm-4  control-label">RM</label>
								<div class="col-sm-8">
									<input required name="gstrm" id="Gstrm" class="form-control"
										type="text" value="${gstrm}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Gstoncommission" class="col-sm-4  control-label">GST
									on Commission % %</label>
								<div class="col-sm-8">
									<input required name="gstoncommission" id="Gstoncommission"
										class="form-control" type="text" value="${gstoncommission}" />
								</div>
								<label for="Gstoncommissionrm" class="col-sm-4  control-label">RM</label>
								<div class="col-sm-8">
									<input required name="gstoncommissionrm"
										id="Gstoncommissionrm" class="form-control" type="text"
										value="${gstoncommissionrm}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Amountpayableagent" class="col-sm-4  control-label">Amount
									Payable by Agent RM</label>
								<div class="col-sm-8">
									<input required name="amountpayableagent"
										id="Amountpayableagent" class="form-control" type="text"
										value="${amountpayableagent}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Actpremium" class="col-sm-4  control-label">Act
									Premium RM</label>
								<div class="col-sm-8">
									<input required name="actpremium" id="Actpremium"
										class="form-control" type="text" value="${actpremium}" />
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row form-group form-inline">
								<label for="Afterloading" class="col-sm-4  control-label">After
									Loading RM</label>
								<div class="col-sm-8">
									<input required name="afterloading" id="Afterloading"
										class="form-control" type="text" value="${afterloading}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Extracoverage" class="col-sm-4  control-label">Extra
									Coverage RM</label>
								<div class="col-sm-8">
									<input required name="extracoverage" id="Extracoverage"
										class="form-control" type="text" value="${extracoverage}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Stampduty" class="col-sm-4  control-label">Stamp
									Duty RM</label>
								<div class="col-sm-8">
									<input required name="stampduty" id="Stampduty"
										class="form-control" type="text" value="${stampduty}" />
								</div>
							</div>
							 
							<div class="row form-group form-inline">
								<label for="Commission" class="col-sm-4  control-label">Commission
									%</label>
								<div class="col-sm-8">
									<input required name="commission" id="Commission"
										class="form-control" type="text" value="${commission}" />
								</div>
								<label for="Commissionrm" class="col-sm-4  control-label">RM</label>
								<div class="col-sm-8">
									<input required name="commissionrm" id="Commissionrm"
										class="form-control" type="text" value="${commissionrm}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Amountpayableclient"
									class="col-sm-4  control-label">Amount Payable by
									Client RM</label>
								<div class="col-sm-8">
									<input required name="amountpayableclient"
										id="Amountpayableclient" class="form-control" type="text"
										value="${amountpayableclient}" />
								</div>
							</div>

							<div class="row form-group form-inline">
								<label for="Excessdamageclaim" class="col-sm-4  control-label">Excess
									Damage Claim RM</label>
								<div class="col-sm-8">
									<input required name="excessdamageclaim"
										id="Excessdamageclaim" class="form-control" type="text"
										value="${excessdamageclaim}" />
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
							<div class="row form-group form-inline">
								<label for="Selectplan" class="col-sm-4  control-label">
									Select Plan</label>
								<div class="col-sm-8 inner-addon right-addon">
									<select name="selectplan" class="form-control" id="Selectplan"
										value="${selectplan}">
										<option selected="selected" value="0">--Select--</option>
										<option value="1">Monthly</option>
										<option value="2">Yearly</option>
										<option value="3">2 Years</option>
									</select>
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Mpapremium" class="col-sm-4  control-label">MPA
									Premium RM</label>
								<div class="col-sm-8">
									<input   name="mpapremium" id="Mpapremium"
										class="form-control" type="text" value="${mpapremium}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Gst1" class="col-sm-4  control-label">GST
									%</label>
								<div class="col-sm-8">
									<input   name="gst1" id="Gst1" class="form-control"
										type="text" value="${gst1}" />
								</div>
								<label for="Gst1rm" class="col-sm-4  control-label">RM</label>
								<div class="col-sm-8">
									<input   name="gst1rm" id="Gst1rm" class="form-control"
										type="text" value="${gst1rm}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Gstoncommission1" class="col-sm-4  control-label">GST
									on Commission % </label>
								<div class="col-sm-8">
									<input   name="gstoncommission1" id="Gstoncommission1"
										class="form-control" type="text" value="${gstoncommission1}" />
								</div>
								<label for="Gstoncommission1rm" class="col-sm-4  control-label">RM</label>
								<div class="col-sm-8">
									<input   name="gstoncommission1rm"
										id="Gstoncommission1rm" class="form-control" type="text"
										value="${gstoncommission1rm}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Amountpayableagent1"
									class="col-sm-4  control-label">Amount Payable by
									Agent RM</label>
								<div class="col-sm-8">
									<input   name="amountpayableagent1"
										id="Amountpayableagent1" class="form-control" type="text"
										value="${amountpayableagent1}" />
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row form-group form-inline">
								<label for="Noofpassenger" class="col-sm-4  control-label">
									Number of Passenger(s)</label>
								<div class="col-sm-8 inner-addon right-addon">
									<select name="noofpassenger" class="form-control"
										id="Noofpassenger" value="${noofpassenger}">
										<option selected="selected" value="0">--Select--</option>
										<option value="5">5</option>
										<option value="10">10</option>
										<option value="50">50</option>
									</select>
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Stampduty1" class="col-sm-4  control-label">Stamp
									Duty RM</label>
								<div class="col-sm-8">
									<input   name="stampduty1" id="Stampduty1" class="form-control" type="text"
										value="${stampduty1}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Commission1" class="col-sm-4  control-label">Commission %</label>
								<div class="col-sm-8">
									<input   name="commission1" id="Commission1" class="form-control" type="text"
										value="${commission1}"/>
								</div>
								<label for="Commission1rm" class="col-sm-4  control-label">RM</label>
								<div class="col-sm-8">
									<input   name="commission1rm" id="Commission1rm" class="form-control" type="text"
										value="${commission1rm}" />
								</div>
							</div>
							<div class="row form-group form-inline">
								<label for="Amountpayableclient1" class="col-sm-4  control-label">Amount
									Payable by Client RM</label>
								<div class="col-sm-8">
									<input   name="amountpayableclient1" id="Amountpayableclient1" class="form-control" type="text"
										value="${amountpayableclient1}" />
								</div>
							</div>
						</div>
					</div>
				</fieldset>
				<u>AGREED VALUE INDICATOR</u></br> <input name="agreevalue" id="Agreevalue" type="checkbox" value="">
				ENDORSEMENT 87-AGREED VALUE
				<ul align="center" class="pager">
					<button onclick="location.href='nameddrivers'" type="button" class="btn btn-danger btn-md">Back</button>
					<button type="submit" class="btn btn-primary btn-md">Save AND Print</button>
					<button type="button" class="btn btn-primary btn-md" onclick="location.href='printreport'">Print</button>
					<button type="button" class="btn btn-danger btn-md">Cancel</button>
				</ul>
				<font color="red">This case is under Risk for the below
					reasons.Approval is required from Branch Adminstrator. </font></br> <b>
					Vehicle Age Referred</b>

				</form>
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
