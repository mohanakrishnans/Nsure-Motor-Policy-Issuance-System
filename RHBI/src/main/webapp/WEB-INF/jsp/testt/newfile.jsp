<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="insert" method="post" modelAttribute="userFormData">
	
	
	
		<input type="text" name="name" class="form-control" required autofocus>


		<input class="btn btn-md btn-success btn-block" type="submit"
			value="Signin">
	</form>
</body>
</html>