
package com.kgisl.nsure.authenticate.services;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



/*import com.kgisl.nsure.admin.dao.AdministrationDAO;
import com.kgisl.nsure.admin.domain.ConfigurationSettingDO;
import com.kgisl.nsure.admin.domain.SecuritySettingDO;
import com.kgisl.nsure.admin.services.AdministrationService;*/
import com.kgisl.nsure.authenticate.dao.AuthenticateDAO;
import com.kgisl.nsure.authenticate.domain.AccountLockDO;
import com.kgisl.nsure.authenticate.domain.AgentDO;
import com.kgisl.nsure.authenticate.domain.LoginDO;
/*import com.kgisl.nsure.commonutils.domain.BranchDO;
import com.kgisl.nsure.commonutils.domain.CommonutilsDO;*/
import com.kgisl.nsure.commonutils.domain.GlobalNames;
//import com.kgisl.nsure.commonutils.domain.LDAPAuthenticator;
/*import com.kgisl.nsure.externalapi.services.ExternalAPIService;
import com.kgisl.nsure.transaction.domain.MotorTransactionDO;
import com.kgisl.nsure.transaction.services.ClientProfileService;
import com.kgisl.nsure.transaction.services.TransactionRollback;
import com.kgisl.nsure.web.helper.MailService;*/
import com.kgisl.nsure.web.helper.Utilities;
//import com.kgisl.nsure.web.logging.Exception;
import com.kgisl.nsure.web.security.AESEncryptionDecryption;

@Service
public class AuthenticateServiceImpl implements AuthenticateService {

	@Autowired
	AuthenticateDAO authenticateDAO;

	/*@Autowired
	LDAPAuthenticator ldapAuthenticator;
	
	@Autowired
	AdministrationDAO administrationDAO;
	
	@Autowired
	AdministrationService administrationService;
	
	@Autowired
	ClientProfileService clientProfileService;
	
	@Autowired
	ExternalAPIService ismService;
	
	@Autowired
	MailService mailService;

	@Autowired
	AuthenticateBaseDAO authenticateBaseDAO;*/
	
	public LoginDO fnValidateLogin(LoginDO loginDO){
		try{
			if(loginDO!=null && loginDO.getLockStatus()!=null && loginDO.getLockStatus().equalsIgnoreCase("Y"))
				loginDO.setErrorMsg(GlobalNames.ACCOUNT_LOCK);
			else if(loginDO!=null && loginDO.getInValidStatus()!=null && !loginDO.getInValidStatus().equalsIgnoreCase("N") ){
				if(loginDO.getInValidStatus().trim().equalsIgnoreCase("Y"))
					loginDO.setErrorMsg(GlobalNames.INVALID_LOGIN_LOCK);
				else if(loginDO.getInValidStatus().trim().equalsIgnoreCase("L"))
					loginDO.setErrorMsg(GlobalNames.ACCOUNT_LOCK);
			}
			else if(loginDO!=null && loginDO.getDormantInd()!=null && loginDO.getDormantInd().equalsIgnoreCase("Y"))
				loginDO.setErrorMsg(GlobalNames.DORMANT_LOGIN);
			else if(loginDO!=null && loginDO.getSuspendedInd()!=null && loginDO.getSuspendedInd().equalsIgnoreCase("T"))
				loginDO.setErrorMsg(GlobalNames.TERMINATE_LOGIN);
			else
				loginDO.setErrorMsg(GlobalNames.INVALID_LOGIN);
		}catch(Exception e){
			//throw new Exception(e);
		}
		if(loginDO!=null && loginDO.getErrorMsg() != null)
			loginDO.setLoginId(0);
		return loginDO;
	}

	@Override
	public int checkUserName(String userName) {
		return authenticateDAO.CheckUserName(userName);
	}
	
	@Override
	public LoginDO authenticateUser(LoginDO login) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String checkSession(HttpServletRequest request, String successUrl)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int validateAuthorisedRole(int loginId, String loginUrl) {
		// TODO Auto-generated method stub
		return 0;
	}

}
