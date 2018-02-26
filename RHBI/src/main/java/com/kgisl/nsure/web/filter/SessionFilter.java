package com.kgisl.nsure.web.filter;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

public class SessionFilter implements Filter {
	private ArrayList<String> urlList;
	private String timeoutPage = "redirect.jsp";
	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		if((request instanceof HttpServletRequest) && (response instanceof HttpServletResponse)) {
			   HttpServletRequest httpServletRequest = (HttpServletRequest) request;
			   HttpServletResponse httpServletResponse = (HttpServletResponse) response;
			   // is session expire control required for this request?
			   if(httpServletRequest.getSession().getAttribute("logOut")!=null &&
					   httpServletRequest.getSession().getAttribute("logOut").toString().equalsIgnoreCase("true")){
				   httpServletRequest.getSession().invalidate();  
			   }
			   
			  if(isSessionControlRequiredForThisResource(httpServletRequest)) {
				   // is session invalid?
				   if (isSessionInvalid(httpServletRequest)) { 
					   String reqUrl = httpServletRequest.getRequestURI();
				    	int urlInd = 1;
				    	if(reqUrl!=null){
				    		if(reqUrl.contains("crclogin.do"))
				    			urlInd = 2;
				    		else
				    			urlInd = 1;
				    	}else{
				    		urlInd = 1;
				    	}
					   httpServletResponse.setContentType("text/html");
					   StringBuilder html = new StringBuilder()
							   .append("<html><head><script type=\"text/javascript\">function fnCloseCurrentSession(){")
							   //.append("alert(\"Your secure session has expired due to inactivity, kindly login again.\");")
							   .append("window.location.href = \""+httpServletRequest.getContextPath()+"/logout?sessionExpired="+urlInd+"\";")
							   .append("}")
							   .append("</script></head><body onload=\"fnCloseCurrentSession()\">")
							   /*.append("<a href=\""+httpServletRequest.getContextPath()+"/logout?sessionExpired=1\">")
							   .append("<div class=\"ca-content\"><h4 class=\"ca-main\">Log out</h4></div>")
							   .append("</a>")*/
							   .append("</body></html>");
					   PrintWriter out = httpServletResponse.getWriter();
					   out.flush();
					   out.write(html.toString());
					   return;
				   }
			   }
		}
		filterChain.doFilter(request, response);
	}

	public void init(FilterConfig config) throws ServletException {
		String urls = config.getInitParameter("avoid-urls");
		StringTokenizer token = new StringTokenizer(urls, ",");
		urlList = new ArrayList<String>();
		while (token.hasMoreTokens()) {
			urlList.add(token.nextToken());
		}
	}
	
	private boolean isSessionControlRequiredForThisResource(HttpServletRequest httpServletRequest) {
		  String requestPath = httpServletRequest.getRequestURI();
		  boolean controlRequired = !StringUtils.contains(requestPath, getTimeoutPage());
		  return controlRequired;
	}

	private boolean isSessionInvalid(HttpServletRequest httpServletRequest) {
		boolean sessionInValid = (httpServletRequest.getRequestedSessionId() != null)
				&& !httpServletRequest.isRequestedSessionIdValid();
		return sessionInValid;
	}

	public String getTimeoutPage() {
		return timeoutPage;
	}

	public void setTimeoutPage(String timeoutPage) {
		this.timeoutPage = timeoutPage;
	}
}