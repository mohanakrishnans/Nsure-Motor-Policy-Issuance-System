package com.kgisl.nsure.authenticate.domain;

import java.io.Serializable;
import java.util.List;

public class LoginDO implements Serializable {

	private static final long serialVersionUID = 1L;
	private String userName;
	private String password;
	private String startIn;
	private String passwordKey;
	private int subUserId;
	private int staffId;
	private int loginId;
	private String loginDate;
	private String loginDateInMilis;
	private String mobilePrefix;
	private String postCodeLength;
	private int agentId;
	private String agencyName;
	private int roleId;
	private String loginRoleInd;
	private int branchId;
	private String branchName;
	private int stateId;

	// password Expiry Details
	private Boolean isPasswordExpired;
	private int passwordExpiryDays;
	private int promptpwdChange;
	private int pwdChangePeriod;
	private int pwdChangeHours;
	private String pwdExpiredMsg;
	private String initialPwdChangeInd;
	private String returnView;
	private String lockStatus;
	private String inValidStatus;
	private String firstLoginInd;
	private String multiLoginInd;
	private String lastLoginDate;
	private String dormantInd;
	private String loginType;
	private String loginRole;
	private String loginSessionId;
	private String suspendedInd;
	private String errorMsg;
	private String ldapInd;
	private String killSessionInd;// Used for Multiple Session
	private int jobGradeId;

	// Below three fields are in EIS_MST_LOGIN_ACCESS table and can be updated from Agent Sub User Profile Module!

	// To check if the agent is eligible to login. If the date falls between  effective from and to, then he is.
	private String effectiveDateInd;
	// To check if the current date is holiday and if user is eligible to login to the system on this day!
	private String isHolidayInd;
	// To check if the user can login at this time. It is Based on access timing information for the user!
	private String accessTimingsInd;

	private AgentDO agentDO;
	private int channelId;
	private String channelCode;
	
	private double warchestTempBal;
	private double warchestPermBal;
	private boolean showWarchestBal;

	private double cnparYTD;
	private double cnparMTD;
	private String accountCode;
	private boolean showCnPar;
	
	private List<Integer> sourceTypeIds;
	private List<LoginDO> staffWarchestDetails;
	
	
	public int getChannelId() {
		return channelId;
	}

	public void setChannelId(int channelId) {
		this.channelId = channelId;
	}

	public String getChannelCode() {
		return channelCode;
	}

	public void setChannelCode(String channelCode) {
		this.channelCode = channelCode;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordKey() {
		return passwordKey;
	}

	public void setPasswordKey(String passwordKey) {
		this.passwordKey = passwordKey;
	}

	public int getSubUserId() {
		return subUserId;
	}

	public void setSubUserId(int subUserId) {
		this.subUserId = subUserId;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public int getLoginId() {
		return loginId;
	}

	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}

	public String getLoginDate() {
		return loginDate;
	}

	public void setLoginDate(String loginDate) {
		this.loginDate = loginDate;
	}

	public String getLoginDateInMilis() {
		return loginDateInMilis;
	}

	public void setLoginDateInMilis(String loginDateInMilis) {
		this.loginDateInMilis = loginDateInMilis;
	}

	public String getMobilePrefix() {
		return mobilePrefix;
	}

	public void setMobilePrefix(String mobilePrefix) {
		this.mobilePrefix = mobilePrefix;
	}

	public String getPostCodeLength() {
		return postCodeLength;
	}

	public void setPostCodeLength(String postCodeLength) {
		this.postCodeLength = postCodeLength;
	}

	public int getAgentId() {
		return agentId;
	}

	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}

	public String getAgencyName() {
		return agencyName;
	}

	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}

	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}

	public String getLoginRoleInd() {
		return loginRoleInd;
	}

	public void setLoginRoleInd(String loginRoleInd) {
		this.loginRoleInd = loginRoleInd;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public int getStateId() {
		return stateId;
	}

	public void setStateId(int stateId) {
		this.stateId = stateId;
	}

	public Boolean getIsPasswordExpired() {
		return isPasswordExpired;
	}

	public void setIsPasswordExpired(Boolean isPasswordExpired) {
		this.isPasswordExpired = isPasswordExpired;
	}

	public int getPasswordExpiryDays() {
		return passwordExpiryDays;
	}

	public void setPasswordExpiryDays(int passwordExpiryDays) {
		this.passwordExpiryDays = passwordExpiryDays;
	}

	public int getPromptpwdChange() {
		return promptpwdChange;
	}

	public void setPromptpwdChange(int promptpwdChange) {
		this.promptpwdChange = promptpwdChange;
	}

	public int getPwdChangePeriod() {
		return pwdChangePeriod;
	}

	public void setPwdChangePeriod(int pwdChangePeriod) {
		this.pwdChangePeriod = pwdChangePeriod;
	}

	public int getPwdChangeHours() {
		return pwdChangeHours;
	}

	public void setPwdChangeHours(int pwdChangeHours) {
		this.pwdChangeHours = pwdChangeHours;
	}

	public String getPwdExpiredMsg() {
		return pwdExpiredMsg;
	}

	public void setPwdExpiredMsg(String pwdExpiredMsg) {
		this.pwdExpiredMsg = pwdExpiredMsg;
	}

	public String getInitialPwdChangeInd() {
		return initialPwdChangeInd;
	}

	public void setInitialPwdChangeInd(String initialPwdChangeInd) {
		this.initialPwdChangeInd = initialPwdChangeInd;
	}

	public String getReturnView() {
		return returnView;
	}

	public void setReturnView(String returnView) {
		this.returnView = returnView;
	}

	public String getLockStatus() {
		return lockStatus;
	}

	public void setLockStatus(String lockStatus) {
		this.lockStatus = lockStatus;
	}

	public String getInValidStatus() {
		return inValidStatus;
	}

	public void setInValidStatus(String inValidStatus) {
		this.inValidStatus = inValidStatus;
	}

	public String getFirstLoginInd() {
		return firstLoginInd;
	}

	public void setFirstLoginInd(String firstLoginInd) {
		this.firstLoginInd = firstLoginInd;
	}

	public String getMultiLoginInd() {
		return multiLoginInd;
	}

	public void setMultiLoginInd(String multiLoginInd) {
		this.multiLoginInd = multiLoginInd;
	}

	public String getLastLoginDate() {
		return lastLoginDate;
	}

	public void setLastLoginDate(String lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}

	public String getDormantInd() {
		return dormantInd;
	}

	public void setDormantInd(String dormantInd) {
		this.dormantInd = dormantInd;
	}

	public String getLoginType() {
		return loginType;
	}

	public void setLoginType(String loginType) {
		this.loginType = loginType;
	}

	public String getLoginRole() {
		return loginRole;
	}

	public void setLoginRole(String loginRole) {
		this.loginRole = loginRole;
	}

	public String getLoginSessionId() {
		return loginSessionId;
	}

	public void setLoginSessionId(String loginSessionId) {
		this.loginSessionId = loginSessionId;
	}

	public String getSuspendedInd() {
		return suspendedInd;
	}

	public void setSuspendedInd(String suspendedInd) {
		this.suspendedInd = suspendedInd;
	}

	public String getErrorMsg() {
		return errorMsg;
	}

	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}

	public String getLdapInd() {
		return ldapInd;
	}

	public void setLdapInd(String ldapInd) {
		this.ldapInd = ldapInd;
	}

	public String getKillSessionInd() {
		return killSessionInd;
	}

	public void setKillSessionInd(String killSessionInd) {
		this.killSessionInd = killSessionInd;
	}

	public int getJobGradeId() {
		return jobGradeId;
	}

	public void setJobGradeId(int jobGradeId) {
		this.jobGradeId = jobGradeId;
	}

	public String getEffectiveDateInd() {
		return effectiveDateInd;
	}

	public void setEffectiveDateInd(String effectiveDateInd) {
		this.effectiveDateInd = effectiveDateInd;
	}

	public String getIsHolidayInd() {
		return isHolidayInd;
	}

	public void setIsHolidayInd(String isHolidayInd) {
		this.isHolidayInd = isHolidayInd;
	}

	public String getAccessTimingsInd() {
		return accessTimingsInd;
	}

	public void setAccessTimingsInd(String accessTimingsInd) {
		this.accessTimingsInd = accessTimingsInd;
	}

	public AgentDO getAgentDO() {
		return agentDO;
	}

	public void setAgentDO(AgentDO agentDO) {
		this.agentDO = agentDO;
	}

	public double getWarchestTempBal() {
		return warchestTempBal;
	}

	public void setWarchestTempBal(double warchestTempBal) {
		this.warchestTempBal = warchestTempBal;
	}

	public double getWarchestPermBal() {
		return warchestPermBal;
	}

	public void setWarchestPermBal(double warchestPermBal) {
		this.warchestPermBal = warchestPermBal;
	}

	public boolean isShowWarchestBal() {
		return showWarchestBal;
	}

	public void setShowWarchestBal(boolean showWarchestBal) {
		this.showWarchestBal = showWarchestBal;
	}

	public String getStartIn() {
		return startIn;
	}

	public void setStartIn(String startIn) {
		this.startIn = startIn;
	}

	public double getCnparYTD() {
		return cnparYTD;
	}

	public void setCnparYTD(double cnparYTD) {
		this.cnparYTD = cnparYTD;
	}

	public double getCnparMTD() {
		return cnparMTD;
	}

	public void setCnparMTD(double cnparMTD) {
		this.cnparMTD = cnparMTD;
	}

	public String getAccountCode() {
		return accountCode;
	}

	public void setAccountCode(String accountCode) {
		this.accountCode = accountCode;
	}
	
	public boolean isShowCnPar() {
		return showCnPar;
	}

	public void setShowCnPar(boolean showCnPar) {
		this.showCnPar = showCnPar;
	}

	public List<Integer> getSourceTypeIds() {
		return sourceTypeIds;
	}

	public void setSourceTypeIds(List<Integer> sourceTypeIds) {
		this.sourceTypeIds = sourceTypeIds;
	}

	public List<LoginDO> getStaffWarchestDetails() {
		return staffWarchestDetails;
	}

	public void setStaffWarchestDetails(List<LoginDO> staffWarchestDetails) {
		this.staffWarchestDetails = staffWarchestDetails;
	}
	
}
