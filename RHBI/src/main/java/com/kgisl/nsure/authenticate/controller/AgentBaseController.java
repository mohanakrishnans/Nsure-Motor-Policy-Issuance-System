package com.kgisl.nsure.authenticate.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UrlPathHelper;
import com.kgisl.nsure.authenticate.domain.AccountLockDO;
import com.kgisl.nsure.authenticate.domain.LoginDO;
import com.kgisl.nsure.authenticate.services.AuthenticateService;
import com.kgisl.nsure.commonutils.domain.GlobalNames;
/*import com.kgisl.nsure.transaction.domain.MotorTransactionDO;
import com.kgisl.nsure.web.logging.FWKILogger;
import com.kgisl.nsure.web.logging.FWKLogManager;
import com.kgisl.nsure.web.logging.NsureException;
import com.kgisl.nsure.web.logging.NsureLogger;*/
import com.kgisl.nsure.quotation.Service.QuotationService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class AgentBaseController {

	@Autowired
	private AuthenticateService authService;
	
	@Autowired
	QuotationService quotationService;
	
	@Autowired
	private ServletContext servletContext;
	
	
	
	//FWKILogger logger = FWKLogManager.getInstance().getDefaultLogger("motortransaction");
	
	@RequestMapping(value = "/agentlogin", method = RequestMethod.GET)
	public ModelAndView getInitialPage(@ModelAttribute("loginDO") LoginDO login,
			HttpServletRequest request){
		request.getSession().setAttribute("SESSION_COUNT", request.getSession().getId());
		return new ModelAndView("auth/agentlogin");
	}
	
	@RequestMapping(value="/validateLoginSession",method=RequestMethod.GET)
	public @ResponseBody String validateLoginSession(HttpServletRequest request,HttpSession session){
		String sessionStatus = null;
		try{
			if(session.getAttribute("SESSION_COUNT") != null 
					&& session.getAttribute("SESSION_COUNT").toString().equalsIgnoreCase(session.getId())
					&& session.getAttribute("loginDetail")!=null){
				sessionStatus = "Y";
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return sessionStatus;
	}
	
	
	@RequestMapping(value = "/agentlogin", method = RequestMethod.POST)
	public String postInitialPage(@Validated @ModelAttribute("loginDO") LoginDO loginDO, final BindingResult result,
			HttpServletResponse response, HttpServletRequest request) {
		String returnView = null;
		HttpSession session = request.getSession();
		LoginDO loginDetails = session.getAttribute("loginDetail") != null ? (LoginDO) session.getAttribute("loginDetail") : null;
		if(loginDetails != null && loginDetails.getLoginId() > 0){
			return "common/template/layout";
		}
		try{
			if(loginDO != null && loginDO.getUserName()!=null && loginDO.getPassword()!=null
					&& loginDO.getUserName().trim().length()>0
					&& loginDO.getPassword().trim().length()>0){
				loginDO.setLoginSessionId(request.getSession().getId());
				returnView = agentLoginUtility(loginDO, session, result);
				if(result.hasErrors()){
					request.getSession().setAttribute("logoutInd", "Y");
				}else{
					request.getSession().removeAttribute("logoutInd");
				}
				/** 
				 * Once the user decide to kill all active session, this condition will get triggered.
				 * Get the active sessions from the session map and kill the session!
				 * This will force the other user out of the system!
				 */
				/*if(loginDO != null && loginDO.getMultiLoginInd() != null 
						&& loginDO.getMultiLoginInd().equals("N") && loginDO.getKillSessionInd() != null 
						&& loginDO.getKillSessionInd().equals("Y")){
					authService.cleanupLoginHistory(loginDO.getLoginId(), session.getId());
				}*/
			} else{
				request.getSession().setAttribute("logoutInd", "Y");
				result.addError(new FieldError(result.getObjectName(),"password", GlobalNames.LOGIN_MANDATORY));
				returnView="auth/agentlogin";
			}
		}catch(Exception e){
			e.printStackTrace();
			request.getSession().setAttribute("logoutInd", "Y");
			//result.addError(new FieldError(result.getObjectName(),"password", GlobalNames.INVALID_LOGIN));
			returnView="auth/agentlogin";
		}
		return returnView;
	}

	@RequestMapping(value = "/crclogin", method = RequestMethod.GET)
	public ModelAndView CRCInitialPage(@ModelAttribute("loginDO") LoginDO login,
			HttpServletRequest request) throws Exception {
		request.getSession().setAttribute("SESSION_COUNT", request.getSession().getId());
		int i = authService.checkUserName("mohan");
		
		int j = quotationService.checkUserName("mohan");
		System.out.println(i + " GOOD\n"+j);
		//return new ModelAndView("auth/crclogin");
		return new ModelAndView("/auth/crclogin");
	}
	
	@RequestMapping(value = "/checkSession", method = RequestMethod.POST)
	public @ResponseBody int checkSession(HttpServletRequest httpRequest) throws Exception {
		int status = (httpRequest.getSession().getAttribute("loginDetail")!=null) ? 1 : 0;
		return status;
	}

	@RequestMapping(value = "/crclogin", method = RequestMethod.POST)
	public String CRCPostInitialPage(@ModelAttribute("loginDO") LoginDO loginDO,
			HttpServletResponse response, HttpServletRequest request,BindingResult result) {
		LoginDO loginDetails = request.getSession().getAttribute("loginDetail") != null ? (LoginDO) request.getSession().getAttribute("loginDetail") : null;
		if(loginDetails != null && loginDetails.getLoginId() > 0){
			return "common/template/layout";
		}
		String returnView=null;
		try{
			if(loginDO.getUserName()!=null && loginDO.getPassword()!=null
					&& loginDO.getUserName().trim().length()>0
					&& loginDO.getPassword().trim().length()>0){
				loginDO.setLoginType("C");
				loginDO.setLoginSessionId(request.getSession().getId());
				/*LoginDO loginFromDb = authService.authenticateUser(loginDO);
				if (loginFromDb!= null && loginFromDb.getLoginId()>0 && loginFromDb.getStaffId()>0) {
					request.getSession().setAttribute("loginDetail", loginFromDb);
					request.getSession().setAttribute("language", "en_US");
					request.getSession().setAttribute("menuAsArray", authService.getDynamicMenu(0,loginFromDb.getRoleId()));
					request.getSession().setAttribute("explorerMenu", authService.getExplorerMenu(loginFromDb.getRoleId()));
					request.getSession().setAttribute("accountMenu", authService.getAccountMenu(0,loginFromDb.getRoleId()));
					//Message for Password Expired Details	
					request.getSession().setAttribute("ispasswordexpired", loginFromDb.getIsPasswordExpired());
					request.getSession().setAttribute("message", loginFromDb.getPwdExpiredMsg());
					authService.saveLoginHistory(loginFromDb.getLoginId(), request.getSession().getId(),"E");
					returnView = loginFromDb.getReturnView();		
					request.getSession().removeAttribute("logoutInd");
				}else{
					request.getSession().setAttribute("logoutInd", "Y");
					result.addError(new FieldError(result.getObjectName(),"password",loginFromDb != null ?loginFromDb.getErrorMsg():null));
					returnView="auth/crclogin";
				}*/
			}
			else{
				request.getSession().setAttribute("logoutInd", "Y");
				result.addError(new FieldError(result.getObjectName(),"password", GlobalNames.LOGIN_MANDATORY));
				returnView="auth/crclogin";
			}
		}catch(Exception e){
			request.getSession().setAttribute("logoutInd", "Y");
			result.addError(new FieldError(result.getObjectName(),"password", GlobalNames.INVALID_LOGIN));
			returnView="auth/crclogin";
		}
		return returnView;
	}
	
	@RequestMapping(value = "/adm1n", method = RequestMethod.GET)
	public ModelAndView dbAuditInitialPage(@ModelAttribute("loginDO") LoginDO login,
			HttpServletRequest request) throws Exception {
		return new ModelAndView("auth/adminlogin");
	}
	
	@RequestMapping(value = "/adm1n", method = RequestMethod.POST)
	public String postDBAuditPage(@Validated @ModelAttribute("loginDO") LoginDO loginDO, final BindingResult result,
			HttpServletResponse response, HttpServletRequest request) {
		String returnView = null;
		try{
			if(loginDO.getUserName()!=null && loginDO.getPassword()!=null
					&& loginDO.getUserName().trim().length()>0 && loginDO.getUserName().equals(GlobalNames.DB_AUDIT_USER_NAME)
					&& loginDO.getPassword().trim().length()>0 && loginDO.getPassword().equals(GlobalNames.DB_AUDIT_PWD)){
				request.getSession().setAttribute("loginDetail", loginDO);
				request.getSession().setAttribute("language", "en_US");
				request.getSession().setAttribute("menuAsArray", GlobalNames.AuditMenu());
				request.getSession().setAttribute("explorerMenu", new JSONArray());
				request.getSession().setAttribute("accountMenu", new JSONArray());
				returnView = "common/template/layout";
			} else{
				result.addError(new FieldError(result.getObjectName(),"password", GlobalNames.LOGIN_MANDATORY));
				returnView="redirect:/auth/agentlogin";
			}
		}catch(Exception e){
			e.printStackTrace();
			result.addError(new FieldError(result.getObjectName(),"password", GlobalNames.INVALID_LOGIN));
			returnView="redirect:/auth/agentlogin";
		}
		return returnView;
	}
	
	@RequestMapping(value = "/logoutT", method = RequestMethod.GET)
	public String logout(HttpServletRequest request,HttpServletResponse response) {
		StringBuilder stringBuilder = new StringBuilder();
		LoginDO loginDO = new LoginDO();
		if(request.getSession().getAttribute("loginDetail")!=null){
			loginDO = (LoginDO)request.getSession().getAttribute("loginDetail");
			if(loginDO.getStaffId()==0)
				stringBuilder.append("/agent/");
			else
				stringBuilder.append("/admin/");	
		}else{
			if(request.getParameter("sessionExpired")!=null && request.getParameter("sessionExpired").equalsIgnoreCase("2")){ 
				stringBuilder.append("/admin/");
			}else{
				stringBuilder.append("/agent/");
			}
		}
		//authService.updateLoginHistory(loginDO.getLoginId(), request.getSession().getId());
		request.getSession().invalidate();
		request.getSession().setAttribute("logouturl", stringBuilder.toString());
		request.getSession().setAttribute("logoutInd", "Y");
		return "redirect:"+stringBuilder.toString();
	}	
	
	@RequestMapping(value = "/changelanguage", method = RequestMethod.POST)
	public @ResponseBody String setLanguage(String language,HttpServletRequest request) {
		request.getSession(true).setAttribute("language", language);
		return language;
	}
	
	@RequestMapping("/common/template/agentmain")
	private String initialDashboard(){
		return "/common/template/agentmain";
	}
	
	@RequestMapping(value="/nsurebase/{folderName}/{pages}", method=RequestMethod.GET)
	public String aboutPage(@PathVariable("folderName") String folderName,@PathVariable("pages") String pages, HttpServletRequest httpRequest,
			HttpServletResponse response){
		if(httpRequest.getSession().getAttribute("loginDetail")!=null) {
			return folderName+"/"+pages;
		}else{
			noCacheResponse(response);
			return "redirect:/agent/";
		}
	}

	@RequestMapping(value="/nsurebase/{folder1}/{folder2}/{pageName}", method=RequestMethod.GET)
	public String searchPopupHandler(@PathVariable("folder1") String folder1,@PathVariable("folder2") String folder2,@PathVariable("pageName") String pageName, 
			HttpServletRequest httpRequest, HttpServletResponse response){
		if(httpRequest.getSession().getAttribute("loginDetail")!=null)
			return folder1+"/"+folder2+"/"+pageName;
		else {
			noCacheResponse(response);
			return "redirect:/agent/";
		}
	} 
	
	/**
	 * Clear cache so that user can't come back to secured pages!
	 * */
	public void noCacheResponse(HttpServletResponse response){
		response.setHeader("Cache-Control","no-cache");
		response.setHeader("Cache-Control","no-store");
		response.setDateHeader("Expires", 0);
		response.setHeader("Pragma","no-cache");
	}
	
	/**
	 * This Method used to get account locked Details for given user name
	 * @param login name and release or reset indicator
	 * @return  String - status message
	 */
	@RequestMapping(value = "/getLockdetails", method = RequestMethod.POST)
	public @ResponseBody String getLockDetails(String loginName, String releaseInd,String checkValidateInd) {
		AccountLockDO accountLockDO = new AccountLockDO();
		JSONArray jsonArray = new JSONArray();
		try{
			accountLockDO.setUserName(loginName);
			accountLockDO.setReleaseOrResetInd(releaseInd);
			accountLockDO.setCheckvalidateInd(checkValidateInd);
			AccountLockDO lockDetails = null;//authService.getUserDetails(accountLockDO);
			// added for security purpose 
			String securityAnswer = lockDetails.getSecurityAnswer1();
			if(securityAnswer != null && securityAnswer.length() > 0){
			    StringBuilder hint = new StringBuilder();
			    for (int i = 0; i < securityAnswer.length(); i++) {
			    	 if(i==0 || i==(securityAnswer.length()-1))
			    		 hint.append(securityAnswer.charAt(i));
			    	 else
			    		 hint.append("*");
			    }
			    lockDetails.setSecurityAnswer1(hint.toString());
			    lockDetails.setAgencyMob(null);
			    lockDetails.setAgencyEmail(null);
			    lockDetails.setAgencyName(null);
			    lockDetails.setUserName(null);
			}
			jsonArray.add(lockDetails);
		}catch(Exception e){
			//throw new Exception(e);
		}
		return jsonArray.toString();
	}
	
	/**
	 * This Method used to Release Lock or reset password for given user name
	 * @param login name and release or reset indicator
	 * @return  String - status message
	 */
	@RequestMapping(value = "/accountlock", method = RequestMethod.POST)
	public @ResponseBody String fnReleaseLockOrResetPwd(String userName,String securityAnswer1,String releaseInd, String checkValidateInd) {
		AccountLockDO accountLockDO=new AccountLockDO();
		String status = null;
		try{
			accountLockDO.setUserName(userName);
			accountLockDO.setReleaseOrResetInd(releaseInd);
			accountLockDO.setCheckvalidateInd(checkValidateInd);
			accountLockDO.setSecurityAnswer1(securityAnswer1);
			//status = authService.getLockStatus(accountLockDO);
		}catch(Exception e){
			//throw new NsureException(e);
		}
		return status;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value="/menuvalidate",method=RequestMethod.POST)
	public @ResponseBody HashMap getMenuBlockCount(@RequestBody int mainClassId, HttpServletRequest httpRequest){
		HashMap statusMap = new HashMap();
		String status = "NA";
		try{
			clearSessionObjects(httpRequest.getSession());
			if(httpRequest.getSession().getAttribute("loginDetail")!=null){
				LoginDO loginDO = (LoginDO)httpRequest.getSession().getAttribute("loginDetail");
				int agentId = loginDO.getAgentId();
				
				/*MotorTransactionDO motorTransactionDO = new MotorTransactionDO();
				motorTransactionDO.setAgentId(agentId);
				motorTransactionDO.setMainClassId(mainClassId);
				if(loginDO.getStaffId() == 0){
					motorTransactionDO.setBranchId(loginDO.getBranchId());
				}
				status = authService.getMenuBlockCount(motorTransactionDO);*/
				statusMap.put("status", status);
			}
		}catch(Exception e){
			//NsureLogger.logException(e, logger, this.getClass(), "menuvalidate","fatal",null);
		}
		return statusMap;
	}
	
	public void clearSessionObjects(HttpSession session){
		session.removeAttribute("tariffPremiumDet");
		session.removeAttribute("motorDetariffResponse");
		session.removeAttribute("PremiumTabInd");
		session.removeAttribute("oldMotorTransactionDO");
		session.removeAttribute("ddlMotorTransactionDO");
		session.removeAttribute("MasterPcwConfigDetExcelbytes");
		session.removeAttribute("MasterPcwConfigDetExcelName");
		session.removeAttribute("FireMortgageeExcelbytes");
		session.removeAttribute("FireMortgageeExcelName");
		session.removeAttribute("FireTariffExcelbytes");
		session.removeAttribute("FireTariffExcelName");
		session.removeAttribute("OccupationExcelbytes");
		session.removeAttribute("OccupationExcelName");
		session.removeAttribute("PiamExcelbytes");
		session.removeAttribute("PiamExcelName");
		session.removeAttribute("dddlMenuId");
		session.removeAttribute("validFireTariffRecords");
		session.removeAttribute("invalidFireTariffRecords");
		session.removeAttribute("MasterVehDetExcelbytes");
		session.removeAttribute("MasterVehDetExcelName");
		session.removeAttribute("tariffPremiumDetList");
		session.removeAttribute("motorDetariffResponseList");
		session.removeAttribute("masterPolicySessionDetails");
		session.removeAttribute("originalPolicyDet");
	}
	
	/**
	 * Code divided to accommodate the condition checking for multiple session.
	 * */
	public String agentLoginUtility(LoginDO loginDO, HttpSession session, final BindingResult result){
		String returnView = "auth/agentlogin";
		loginDO.setLoginType("A");
		/*LoginDO loginFromDb = authService.authenticateUser(loginDO);
		loginFromDb.setStartIn(loginDO.getStartIn());
		loginDO.setMultiLoginInd(loginFromDb.getMultiLoginInd());
		if(loginFromDb!=null && loginDO.getMultiLoginInd() != null && loginDO.getKillSessionInd() != null &&
				loginDO.getMultiLoginInd().equals("N") && loginDO.getKillSessionInd().equals("NA")){
			if(loginFromDb.getErrorMsg()!=null){
				session.setAttribute("loginDO", loginFromDb);
				returnView = loginFromDb.getReturnView();
				result.addError(new FieldError(result.getObjectName(),"password",loginFromDb.getErrorMsg()));
			} else
				returnView = setSessionValues(loginFromDb, session);
		} else if(loginFromDb!=null &&  loginDO.getMultiLoginInd() != null && loginDO.getKillSessionInd() != null 
				&& loginFromDb.getLoginId()>0 && loginFromDb.getAgentId()>0 
				&& loginDO.getMultiLoginInd().equals("N") && loginDO.getKillSessionInd().equals("Y")){
			returnView = setSessionValues(loginFromDb, session);
		} else if(loginFromDb!= null && loginDO.getMultiLoginInd() != null 
				&& loginFromDb.getLoginId()>0 && loginFromDb.getAgentId()>0 && loginDO.getMultiLoginInd().equals("Y")){
			returnView = setSessionValues(loginFromDb, session);
		} else {
			if(result!=null)
				result.addError(new FieldError(result.getObjectName(),"password",loginFromDb.getErrorMsg()));
		}*/
		return returnView;
	}
	
	/**
	 * In two scenarios, we need to set the session. 
	 * 1. If multiple session is allowed
	 * 2. If not, but user decided to kill session and continue!
	 * To avoid repetition, this code is moved into individual method for better code read-ability!
	 * */
	public String setSessionValues(LoginDO loginFromDb, HttpSession session){
		/*loginFromDb.setAgentDO(authService.getAgentInfo(loginFromDb.getAgentId()));
		session.setAttribute("loginDetail", loginFromDb);
		session.setAttribute("language", "en_US");
		session.setAttribute("menuAsArray", authService.getDynamicMenu(0, loginFromDb.getRoleId()));
		//session.setAttribute("explorerMenu", authService.getExplorerMenu(loginFromDb.getRoleId()));
		session.setAttribute("accountMenu", authService.getAccountMenu(0, loginFromDb.getRoleId()));
		//Message for Password Expired Details				
		session.setAttribute("ispasswordexpired", loginFromDb.getIsPasswordExpired());
		session.setAttribute("message", loginFromDb.getPwdExpiredMsg());	
		authService.saveLoginHistory(loginFromDb.getLoginId(), session.getId(),"A");*/
		return loginFromDb.getReturnView();
	}
	
	@RequestMapping(value = {"/errorPage/404","/errorPage/500"}, method = RequestMethod.GET)
	public String error(HttpServletRequest request) throws Exception {
		String returnView = null;
		if(request.getSession().getAttribute("loginDetail")!=null){
			
			String originalRequestURL = new UrlPathHelper().getOriginatingRequestUri(request);
			String contentTypes[] = null;
			
			String[] extensions = {".js",".css",".jpg",".jpeg",".png",".gif"};
			boolean responseStatus = true;
			if(originalRequestURL != null && originalRequestURL.trim().length() > 0){
				for(String str : extensions){
					if(originalRequestURL.trim().toUpperCase().endsWith(str.trim().toUpperCase())){
						responseStatus = false;
						break;
					}
				}
			}
			if(responseStatus){
				if(request.getHeader("Accept") != null){
					contentTypes = request.getHeader("Accept").trim().split(",");
					if(contentTypes != null && contentTypes.length > 0){
						for(String contentType : contentTypes){
							if(MediaType.APPLICATION_JSON_VALUE.equalsIgnoreCase(contentType)){
								responseStatus = false;
								break;
							}
						}
					}
				}
			}
			
			LoginDO loginDO = (LoginDO)request.getSession().getAttribute("loginDetail");
			if(responseStatus){
				if(loginDO.getStaffId() == 0){
					request.getSession().removeAttribute("loginDetail");
					returnView = "redirect:"+request.getContextPath()+"/agent/";
				}else if(loginDO.getStaffId() > 0){
					request.getSession().removeAttribute("loginDetail");
					returnView = "redirect:"+request.getContextPath()+"/admin/";
				}
			}
		}else{
			return "redirect:/agent/";
		}
		return returnView;
	}
	
	@RequestMapping(value="/checkauthoriseduser",method=RequestMethod.POST)
	public @ResponseBody int checkAuthorizedUser(@RequestBody JSONObject object,HttpServletRequest request){
		int roleExists = 1;
		try{
			if(request.getSession().getAttribute("loginDetail") != null){
				LoginDO loginDO = (LoginDO) request.getSession().getAttribute("loginDetail");
				/*if(object != null && object.containsKey("loginUrl")
						&& !object.getString("loginUrl").trim().equalsIgnoreCase("menu")
						&& authService.checkMenuExistance(object.getString("loginUrl")," AND CHR_ACTIVE_STATUS = 'Y'") > 0){
					roleExists = authService.validateAuthorisedRole(loginDO.getLoginId(), object.getString("loginUrl"));
				}*/
			}
			/*if(roleExists == 0 && authService.checkMenuExistance(object.getString("loginUrl")," AND CHR_ACTIVE_STATUS = 'N'") > 0){
				roleExists = 1;
			}*/
		}catch(Exception e){
			//throw new NsureException(e);
		}
		return roleExists;
	}

	@RequestMapping(value="/getAgentLogoutInd",method=RequestMethod.GET)
	public @ResponseBody String getAgentLogoutInd(HttpServletRequest request){
		String logoutInd = null;
		try{
			logoutInd = request.getSession().getAttribute("logoutInd") != null ? request.getSession().getAttribute("logoutInd").toString() : null; 
		}catch(Exception e){
			//throw new NsureException(e);
		}
		return logoutInd;
	}

	@RequestMapping(value = "/browsercacheguide", method = RequestMethod.GET)
	public void downloadBrowserCacheGuide(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String realPath = servletContext.getRealPath("/");
		File downloadFile = new File(realPath + "/proposalform/Internet_ClearYourCache.pdf");
		FileInputStream inputStream = null;
		OutputStream outStream = null;
		try{
			inputStream = new FileInputStream(downloadFile);
			response.setContentLength((int) downloadFile.length());
			response.setContentType("application/pdf");

			// response header
			String headerKey = "Content-Disposition";
			String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
			response.setHeader(headerKey, headerValue);

			// Write response
			outStream = response.getOutputStream();
			IOUtils.copy(inputStream, outStream);

		}catch (Exception e){
			//throw new NsureException(e);
		}finally{
			try{
				if (null != inputStream)
					inputStream.close();
				if (null != inputStream)
					outStream.close();
			}catch (Exception e){
				//NsureLogger.logException(e, logger, this.getClass(), "downloadBrowserCacheGuide", "fatal", null);
			}
		}
	}
	

}
