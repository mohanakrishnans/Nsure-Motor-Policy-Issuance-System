<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Nsure Motor Policy Issuance System | Login</title>
<link rel="stylesheet"
	href="http://localhost/nsure/dashboard/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://localhost/nsure/dashboard/css/font-awesome.min.css" />
<script src="http://localhost/nsure/dashboard/js/jquery.min.js"></script>
<script src="http://localhost/nsure/dashboard/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="http://localhost/nsure/dashboard/css/bootstrap_login.min.css">
</head>
<body>
	<div id="login-overlay" class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="pull-left modal-title" id="myModalLabel">Nsure Motor
					Policy Issuance System</h4>
				<button type="button" class="close" data-dismiss="modal">
					<span aria-hidden="true">×</span><span class="sr-only">Close</span>
				</button>

			</div>
			<div class="modal-body">
				<div class="well">
					<form modelAttribute="loginData" method="POST" action="login">
						<div class="form-group">
							<label for="username" class="control-label">Username</label> <input
								type="text" class="form-control" id="username" name="userName"
								value="" required="" title="Please enter you username"
								placeholder="example@gmail.com"> <span
								class="help-block"></span>
						</div>
						<div class="form-group">
							<label for="password" class="control-label">Password</label> <input
								type="password" class="form-control" id="password"
								name="password" value="" required=""
								title="Please enter your password"> <span
								class="help-block"></span>
						</div>
						<div id="loginErrorMsg" class="alert alert-error hide">Wrong
							username og password</div>
						<div class="checkbox">
							<label> <input type="checkbox" name="remember"
								id="remember"> Remember login
							</label>
							<p class="help-block">(if this is a private computer)</p>
						</div>
						<button type="submit" class="btn btn-success btn-block">Login</button>
						<a href="/forgot/" class="btn btn-default btn-block">Help to
							login</a>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>