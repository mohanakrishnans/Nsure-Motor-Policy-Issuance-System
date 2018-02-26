<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
if(request.getSession()!=null && request.getSession().getAttribute("logouturl")!=null){
	response.sendRedirect(request.getContextPath()+request.getSession().getAttribute("logouturl"));
}else{
	response.sendRedirect(request.getContextPath()+"/admin/");
}
%>	
	

