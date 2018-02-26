<%@taglib uri="/WEB-INF/tlds/spring-form.tld" prefix="form"%>
<%@taglib uri="/WEB-INF/tlds/spring.tld" prefix="s"%>
<%@ taglib uri="/WEB-INF/tlds/jstlc.tld" prefix="c"%>
<!DOCTYPE html>
<html>
<!--[if (lte IE 9)]>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<![endif]-->
<script type="text/javascript">
      var CONTEXT_PATH = '<%=request.getContextPath()%>/';
      window.localStorage.clear();
</script>
<head>
<!-- Need to remove this line during Production -->
<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />
<title>RHB | Admin login</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<!-- CSS Files -->
<link href="<%=request.getContextPath()%>/login/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/layout/alert/sweet-alert.css" rel="stylesheet"> 
<link href="<%=request.getContextPath()%>/login/css/font-awesome.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/login/css/pe-icon-7-stroke.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/login/css/animate.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/login/css/owl.theme.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/login/css/owl.carousel.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/login/css/box-css.css" rel="stylesheet">
<!-- Colors -->
<link href="<%=request.getContextPath()%>/login/css/css-index.css" rel="stylesheet" media="screen">
<link href="<%=request.getContextPath()%>/login/css/custom.css" rel="stylesheet" media="screen">

</head>
  
<body  class="admin_bg">

<!-- /.preloader -->

<div id="top"></div>

<!-- /.parallax full screen background image -->

	<!-- NAVIGATION -->

		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
				
					<!-- /.logo -->
					

					<!-- /.main title -->
						
					<div class="admin-signup-header wow fadeInUp">
                    <div class="admin-logo wow fadeInDown text-center"> <a href=""><img src="<%=request.getContextPath()%>/login/images/logonew.png" alt="logo" ></a></div>
						<h3 class="form-title text-center">Admin Login</h3>
						<form:form id="agentLogin" onsubmit="return fnCheckCRCBrowserTab(this);" commandName="loginDO" cssClass="form-header">
							<div class="form-group">
								 <form:input path="userName" cssClass="form-control input-md" tabindex="1" id="userNameId"/>
							</div>
							<div class="form-group">
								<form:password path="password" cssClass="form-control input-md" tabindex="2" id="passwordId" />
							</div>
							<div class="form-group" style="color:red;font-family:inherit;font-size:12px;">
								<form:errors path="password" />
							</div>
							<div class="form-group last">
								<input type="submit" class="btn btn-warning btn-block btn-lg" value="Sign in">
							</div>
							<div class="text-center form-group">
							
								 <a href="#" data-toggle="modal" data-backdrop="static" 
										onclick="onModelClick();" ><p class="login-footer-text text-center" style="padding-bottom:0px;">Release account Lock / Forgot Password</p></a>
									<br>	
										<%-- <a target="_blank" onclick="fnclaimTrigger()" class="login-footer-text text-center"><img src="<%=request.getContextPath()%>/login/images/claimbanner.png" alt="ClaimBanner"></a> --%>
										<div class="Submit-your-claim"><a href="#"  onclick="fnclaimTrigger()" class="a_demo_four">Submit & Check Claims Status</a></div>
										</div>
										
						</form:form>	
                        
                        <div class="alert alert-danger">
                   			<div style="text-align:justify;"><strong>Attention : </strong> Kindly do not share your password with anyone to avoid unauthorised access to your account.</div>
                        </div>
					</div>			
					</div> 
				<!-- /.signup form -->
			</div>
		</div> 
	<!-- /.javascript files -->
    <script src="<%=request.getContextPath()%>/login/js/jquery.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/app/jquery.alerts.js"></script>
    <script src="<%=request.getContextPath()%>/login/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/login/js/custom.js"></script>
    <script src="<%=request.getContextPath()%>/login/js/jquery.sticky.js"></script>
	<script src="<%=request.getContextPath()%>/login/js/owl.carousel.min.js"></script>
    	        	<!-- AccountLock validation JS -->
	<script src="<%=request.getContextPath()%>/app/accountlock.js"></script>
		 <!-- Sweet Alert JS CSS -->
	<script src="<%=request.getContextPath()%>/layout/alert/sweet-alert.min.js"></script>
		 <!-- bootstrap-toggle  JS-->
	<script src="<%=request.getContextPath()%>/layout/booty-toggle/bootstrap-toggle.min.js"></script>
    
    <!-- /.javascript files for hover -->
    <script>
    localStorage.skin = 'skin-purple-light';
    $('.article-content').popover();
    $("#userNameId").attr('placeholder', 'Enter your user name');
    $("#passwordId").attr('placeholder', 'Enter your password');
    $(function() {
    	function disableBack() { 
    		window.history.forward();
    	}
        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
	});
    </script>
  </body>
</html>
<%@ taglib uri="/WEB-INF/tlds/jstlfmt.tld" prefix="fmt"%>
<style>
.modal-header,.close {
	background-color: #0076bc;
	color: white !important;
	text-align: left;
	font-size: 17px;
	text-rendering: optimizeLegibility !important;
	-webkit-font-smoothing: antialiased !important;	
}
</style>
<fmt:setLocale value='en_US' />
<fmt:bundle basename="applicationresources">
	<div class="modal fade" id="myModal">
		<div class="modal-dialog modal-lg" style="padding-top: 150px;">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close" onclick="fnCloseModel();" id="BTN_MODEL_CLOSE">
						<span aria-hidden="true">&times;</span>
					</button>
					<h6 class="modal-title">Account Locked / Forgot Password</h6>
				</div>
				<div class="modal-body">
					<form 	method="post">
						<section class="content">
							<!-----------------------Account Lock/Forget Password Section----------------------------->
							<div class="row" id="DIV_ACCOUNTLOCK">
								<div class="col-lg-12">									
									<fieldset class="group-filedset-form">
										<div class="row">
											<div class="col-md-12">
												<div class="box-body">
													<div class="form-group">
														<label class="col-md-5 control-label"><fmt:message
																key="label.loginname" /></label>
														<div class="col-md-7">
															<div class="input-group input-group-sm">
																<input type="text" class="form-control" 
																	id="TXT_LOCK_USERNAME" maxlength="25"/>
															</div>
														</div>
													</div>
													<br>
													<div class="form-group" id="RESET_PASSWORD">
														<label class="col-md-5 control-label"></label>

														<div class="col-md-7">
															<div class="col-md-7">
																<input type="radio" name="rdoAccountLock"
																	id="RDO_ACCOUNT_LOCK" value="L" class="text-right"
																	onclick="onRadioSelect(this.value)">&nbsp;&nbsp;
																<fmt:message key="label.acclock" />
															</div>

															<div class="col-md-7">
																<input type="radio" name="rdoForgetPassword"
																	id="RDO_FORGET_PASSWORD" value="R" class="text-right"
																	onclick="onRadioSelect(this.value)">&nbsp;&nbsp;
																<fmt:message key="label.forgetpass" />
															</div>
															<div class="col-md-7">
																<input type="radio" name="rdogeneratePwd" value="G"
																	onclick="onRadioSelect(this.value)"
																	id="RDO_GEN_PASSWORD" class="text-right">
																&nbsp;&nbsp;Generate Password
															</div>

														</div>
													</div>
													
												</div>
											</div>
										</div>
									</fieldset>
								</div>
							</div>
							<!-----------------------Account Lock/Forget Password Section Ends---------------------------->
							<!-----------------------Security Question Section----------------------------->
							<div class="row" id="DIV_SECURITYQSTN" style="display: none">
								<div class="col-lg-12">
									<div class="callout callout-warning"></div>
									<div class="col-md-12">
											<fieldset class="edit-fieldset">
												<div class="box-body">
													<div class="form-group">
														<label class="col-md-10 control-label"><h6><fmt:message
																key="label.loginname" /></h6></label>
														<div class="col-md-2">
															<div class="input-group input-group-sm">
															<input type="hidden" id="HDN_REL_OR_RESET_IND"/>
															<input type="text" class="form-control"  id="TXT_LOCK_USERNAME1"
																	 readonly="true" />
															</div>
														</div>
													</div>
													<div class="form-group">
														<label class="col-md-12 control-label"><h6><fmt:message
																key="label.pleaseansqstn" /></h6></label>
													</div>
													<div class="form-group">
														<label class="col-md-10 control-label"
															id="TXT_SECURITY_QSTN"><h6></h6></label>
														<div class="col-md-2">
															<div class="input-group input-group-sm">
																<input type="text" class="form-control"
																	id="TXT_SECURITY_ANSWER" style="text-transform: uppercase" maxlength="50"/>
															</div>
														</div>
													</div>
													<div class="form-group">
														<div class="col-lg-10">
															<input type="button" name="btn_pwdhint"
																value="<fmt:message key="label.pwdhintbtn" />"
																class="btn  btn-icon-left btn-sm"
																onclick="viewPasswordHint()"></input>
														</div>
														<label class="col-md-2 control-label"
															id="TXT_SECURITY_ANS_HINT" style="display: none; word-break: break-word;"></label>

													</div>
													<div class="row">
														<div class="box-body text-right">
															<div class="col-lg-12">
																<input type="button" name="btn_changePwd" value="Submit" id="SUBMIT_BTN"
																	class="btn  btn-icon-left btn-sm" onclick="return submitForm();" /> <input
																	type="button" name="btn_cancel" value="Cancel"
																	class="btn  btn-icon-left btn-sm" data-dismiss="modal"  id="btn_cancel"
																	onclick="fnCloseModel()" />
															</div>

														</div>
													</div>
												</div>
												<!-- /.box-body -->
									
									<!-----------------------Security Question Section Ends----------------------------->
									</fieldset>
									</div>
								</div>
							</div>
						</section>
						<!-- /.content -->
					</form>
					<!-- /.content-wrapper -->
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->
	</div>
</fmt:bundle>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			method : 'GET',
			url : CONTEXT_PATH + 'getAgentLogoutInd',
			success : function(response) {
				if(response == null || (response != null && response.trim().length == 0)){
					jAlert("<html>To have better system performance, Kindly clear your web browser's cache and cookies.\n\nThe below link holds the guide, which will help you to clear the cache & cookies of your specific web browser.\n\n<a style='text-decoration:underline;color:#3817BF;' href="+CONTEXT_PATH+"browsercacheguide>Click here to download the browser cache clear guide.</a></html>","Important Notice");
				}
			}
		});
	 });
  
  function fnCheckCRCBrowserTab(form){
	  alert("yes");
	  $.ajax({
    	  method:'GET',
    	  url:CONTEXT_PATH+"validateLoginSession",
    	  success:function(response){
    		  if(response != null && response.trim().length > 0 && response.trim() == "Y"){
    			  jAlert("<html><h4>For security purpose</h4></html>Diamond system will allow only one active session per browser.\nPlease try with alternate browser or close the browser and retry again, if you haven't logged out properly.",'Information');
    		  }else{
    			  form.submit();  
    		  }
    	  },
    	  error:function(response){
    		  form.submit();
    	  }
  	 });
     return false;
  }
  function fnclaimTrigger(){
		var currentURL = window.location.href;
		var dynamicCheck = 'uat.';
		if(currentURL.indexOf(dynamicCheck) !== -1){
			window.open('http://uat.merimen.com.my/UAT_MY/claims/index.cfm?fusebox=MTRcmt&fuseaction=dsp_claimant&ins=RHB&mobile=2');
		}else{
			window.open('https://www.merimen.com.my/claims/index.cfm?fusebox=MTRcmt&fuseaction=dsp_claimant&ins=rhb');
		}
	}
  
document.cookie = "";
var c = document.cookie.split("; ");
for (i in c) 
document.cookie =/^[^=]+/.exec(c[i])[0]+"=;expires=Thu, 01 Jan 1970 00:00:00 GMT"; 
</script>