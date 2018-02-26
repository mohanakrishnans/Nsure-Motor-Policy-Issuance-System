package com.kgisl.nsure.authenticate.services;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

import com.kgisl.nsure.authenticate.domain.AccountLockDO;
import com.kgisl.nsure.authenticate.domain.AgentDO;
import com.kgisl.nsure.authenticate.domain.LoginDO;
/*import com.kgisl.nsure.commonutils.domain.BranchDO;
import com.kgisl.nsure.commonutils.domain.CommonutilsDO;
import com.kgisl.nsure.transaction.domain.MotorTransactionDO;
import com.kgisl.nsure.web.logging.NsureException;*/

public interface AuthenticateService {
	
	public LoginDO authenticateUser(LoginDO login) throws Exception;
	
	public String checkSession(HttpServletRequest request,String successUrl) throws Exception;
	
	public int validateAuthorisedRole(int loginId,String loginUrl);

	int checkUserName(String userName);
	
}
