package com.kgisl.nsure.authenticate.domain;

public class AccountLockDO {
	
	private int loginId;
	private String userName;
	private String agencyName;
	private String agencyMob;
	private String agencyEmail;
	
	private String password;
	private String encryptPaassword;
	private String passwordKey;
	private String alertMsg;
	private String lockStatusInd;
	private String accountStatusInd;
	private String securityQuestion1;
	private String securityAnswer1;
	private String passwordHint;
	private String releaseOrResetInd;
	private String checkvalidateInd;
	private String genPwdInd;
	
	public String getGenPwdInd() {
		return genPwdInd;
	}
	public void setGenPwdInd(String genPwdInd) {
		this.genPwdInd = genPwdInd;
	}
	public int getLoginId() {
		return loginId;
	}
	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getAgencyName() {
		return agencyName;
	}
	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
	}
	public String getAgencyMob() {
		return agencyMob;
	}
	public void setAgencyMob(String agencyMob) {
		this.agencyMob = agencyMob;
	}
	public String getAgencyEmail() {
		return agencyEmail;
	}
	public void setAgencyEmail(String agencyEmail) {
		this.agencyEmail = agencyEmail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEncryptPaassword() {
		return encryptPaassword;
	}
	public void setEncryptPaassword(String encryptPaassword) {
		this.encryptPaassword = encryptPaassword;
	}
	public String getPasswordKey() {
		return passwordKey;
	}
	public void setPasswordKey(String passwordKey) {
		this.passwordKey = passwordKey;
	}
	public String getAlertMsg() {
		return alertMsg;
	}
	public void setAlertMsg(String alertMsg) {
		this.alertMsg = alertMsg;
	}
	public String getLockStatusInd() {
		return lockStatusInd;
	}
	public void setLockStatusInd(String lockStatusInd) {
		this.lockStatusInd = lockStatusInd;
	}
	public String getAccountStatusInd() {
		return accountStatusInd;
	}
	public void setAccountStatusInd(String accountStatusInd) {
		this.accountStatusInd = accountStatusInd;
	}
	public String getSecurityQuestion1() {
		return securityQuestion1;
	}
	public void setSecurityQuestion1(String securityQuestion1) {
		this.securityQuestion1 = securityQuestion1;
	}
	public String getSecurityAnswer1() {
		return securityAnswer1;
	}
	public void setSecurityAnswer1(String securityAnswer1) {
		this.securityAnswer1 = securityAnswer1;
	}
	public String getPasswordHint() {
		return passwordHint;
	}
	public void setPasswordHint(String passwordHint) {
		this.passwordHint = passwordHint;
	}
	public String getReleaseOrResetInd() {
		return releaseOrResetInd;
	}
	public void setReleaseOrResetInd(String releaseOrResetInd) {
		this.releaseOrResetInd = releaseOrResetInd;
	}
	public String getCheckvalidateInd() {
		return checkvalidateInd;
	}
	public void setCheckvalidateInd(String checkvalidateInd) {
		this.checkvalidateInd = checkvalidateInd;
	}
	
}
