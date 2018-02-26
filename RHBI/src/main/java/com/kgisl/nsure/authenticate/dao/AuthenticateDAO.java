package com.kgisl.nsure.authenticate.dao;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kgisl.nsure.authenticate.domain.AccountLockDO;
import com.kgisl.nsure.authenticate.domain.AgentDO;
import com.kgisl.nsure.authenticate.domain.LoginDO;
/*import com.kgisl.nsure.commonutils.domain.BranchDO;
import com.kgisl.nsure.commonutils.domain.CommonutilsDO;
import com.kgisl.nsure.transaction.domain.MotorTransactionDO;
import com.kgisl.nsure.web.logging.NsureException;*/

@Service
@Transactional
public interface AuthenticateDAO {
	public LoginDO authenticateUser(LoginDO loginDO)throws Exception;
	
	/*public List<BranchDO> fnGetBraches() throws NsureException;
	
	public int fnGetPostCodeByPostCodeId(String postCode) throws NsureException;
	
	public CommonutilsDO fnGetCityByPostCode(int postCodeId) throws NsureException;
	
	public CommonutilsDO fnGetStateByBranch(int postCodeId) throws NsureException;
	
	public List<CommonutilsDO> fnGetLoginAgent(LoginDO loginDO) throws NsureException;

	public JSONArray getDynamicMenu(int loginId, int loginRoleId) throws NsureException;
	
	public BranchDO fnGetBranchDetails(int branchId) throws NsureException;*/
	
	//Account Locked /Forget Password
	public AccountLockDO fnLoadLoginId(String userName);
	
	public AccountLockDO getUserDetails(int loginId);
	
	public String getLockStatus(AccountLockDO accountLockDO);
	
	public String getRandomPassword();
	
	public LoginDO fnGetPasswordExpiryDetails(int loginId);
	
	public AgentDO getAgentInfo(int agentId);
	
	public String updateInvaildAccessCount(String userName);
	
	public void updateInvalidCount(String userName);
	
	public void saveLoginHistory(int loginId,String sessionId,String loginType);
	
	public void updateLoginHistory(int loginId,String sessionId);
	
	public List<String> getSessionId(int loginId);
	
	public void inValidAttempt(LoginDO loginDO); 
	public int CheckUserName(String userName);
	
	/*public String getMenuBlockCount(MotorTransactionDO motorTransactionDO);

	public LoginDO getPreviousLoggedUser(LoginDO loginDO);

	public List<Map<String, Object>> getPreviousLoggedUserSession(int agentId, String sessionId);

	public JSONArray getExplorerMenu(int loginRoleId) throws NsureException;

	public void cleanupLoginHistory(int loginId, String sessionId);

	public int checkMenuExistance(String loginUrl,String replacedString);
	public int validateAuthorisedRole(int loginId,String loginUrl);

	public LoginDO fnGetWarChestBalance(int agentId);

	public LoginDO getStaffWarchestbalance(LoginDO loginDO);
	
	public LoginDO getCNPARDetails(LoginDO loginDO);
	public JSONArray getAccountMenu(int loginId, int loginRoleId);*/
}
