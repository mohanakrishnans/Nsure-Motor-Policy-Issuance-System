package com.kgisl.nsure.authenticate.domain;

import java.io.Serializable;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@JsonIgnoreProperties(ignoreUnknown=true)
public class AgentDO implements Serializable {
	private static final long serialVersionUID = 1L;
	private int agentId;
	private String accountCode;
	private String agencyName;
	private int branchId;
	private String branchName;
	private int stateId;
	private String address1;
	private String address2;
	private String address3;
	private String address4;
	private String postCode;
	private String homePhone;
	private String homeFax;
	private String officePhone;
	private String officeFax;
	private String mobile;
	private String contactPerson1;
	private String contactPerson2;
	private String emailId1;
	private String emailId2;
	private String piamNo;
	private String piamIssueDate;
	private String piamExpiryDate;
	private String cpdHours;
	private String agentName;// or Nominee
	private String stateName;
	private String cityName;
	private String jpjSMSStatusClient;
	private String agencyActiveStatus;
	private String motCNActiveStatus;
	private String nmCNActiveStatus;
	private String jpjSMSStatusAgent;
	private String agentCode;
	private String coverNoteNo;
	private String insuredName;
	private String contactType;
	private String icDet;
	private String issueDate;
	private String inceptionDate;
	private String expiryDate;
	private String classCode;
	private String cnType;
	private String si;
	private String premium;
	private String submissionNo;
	private String errorReason;
	private int sno;
	private String policyNo;
	private String serialNo;
	private String typeGroup;
	private String matchItemNo;
	private String documentNo;
	private String debitNoteNo;
	private String endorsementNo;
	private String renewalNo;
	private String receiptNo;
	private String origPremiumDue;
	
	
	public int getAgentId() {
		return agentId;
	}

	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}

	public String getAccountCode() {
		return accountCode;
	}

	public void setAccountCode(String accountCode) {
		this.accountCode = accountCode;
	}

	public String getAgencyName() {
		return agencyName;
	}

	public void setAgencyName(String agencyName) {
		this.agencyName = agencyName;
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

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	public String getAddress4() {
		return address4;
	}

	public void setAddress4(String address4) {
		this.address4 = address4;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getHomePhone() {
		return homePhone;
	}

	public void setHomePhone(String homePhone) {
		this.homePhone = homePhone;
	}

	public String getHomeFax() {
		return homeFax;
	}

	public void setHomeFax(String homeFax) {
		this.homeFax = homeFax;
	}

	public String getOfficePhone() {
		return officePhone;
	}

	public void setOfficePhone(String officePhone) {
		this.officePhone = officePhone;
	}

	public String getOfficeFax() {
		return officeFax;
	}

	public void setOfficeFax(String officeFax) {
		this.officeFax = officeFax;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getContactPerson1() {
		return contactPerson1;
	}

	public void setContactPerson1(String contactPerson1) {
		this.contactPerson1 = contactPerson1;
	}

	public String getContactPerson2() {
		return contactPerson2;
	}

	public void setContactPerson2(String contactPerson2) {
		this.contactPerson2 = contactPerson2;
	}

	public String getEmailId1() {
		return emailId1;
	}

	public void setEmailId1(String emailId1) {
		this.emailId1 = emailId1;
	}

	public String getEmailId2() {
		return emailId2;
	}

	public void setEmailId2(String emailId2) {
		this.emailId2 = emailId2;
	}

	public String getPiamNo() {
		return piamNo;
	}

	public void setPiamNo(String piamNo) {
		this.piamNo = piamNo;
	}

	public String getPiamIssueDate() {
		return piamIssueDate;
	}

	public void setPiamIssueDate(String piamIssueDate) {
		this.piamIssueDate = piamIssueDate;
	}

	public String getPiamExpiryDate() {
		return piamExpiryDate;
	}

	public void setPiamExpiryDate(String piamExpiryDate) {
		this.piamExpiryDate = piamExpiryDate;
	}

	public String getCpdHours() {
		return cpdHours;
	}

	public void setCpdHours(String cpdHours) {
		this.cpdHours = cpdHours;
	}

	public String getAgentName() {
		return agentName;
	}

	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getJpjSMSStatusClient() {
		return jpjSMSStatusClient;
	}

	public void setJpjSMSStatusClient(String jpjSMSStatusClient) {
		this.jpjSMSStatusClient = jpjSMSStatusClient;
	}

	public String getAgencyActiveStatus() {
		return agencyActiveStatus;
	}

	public void setAgencyActiveStatus(String agencyActiveStatus) {
		this.agencyActiveStatus = agencyActiveStatus;
	}

	public String getMotCNActiveStatus() {
		return motCNActiveStatus;
	}

	public void setMotCNActiveStatus(String motCNActiveStatus) {
		this.motCNActiveStatus = motCNActiveStatus;
	}

	public String getNmCNActiveStatus() {
		return nmCNActiveStatus;
	}

	public void setNmCNActiveStatus(String nmCNActiveStatus) {
		this.nmCNActiveStatus = nmCNActiveStatus;
	}

	public String getJpjSMSStatusAgent() {
		return jpjSMSStatusAgent;
	}

	public void setJpjSMSStatusAgent(String jpjSMSStatusAgent) {
		this.jpjSMSStatusAgent = jpjSMSStatusAgent;
	}

	public String getAgentCode() {
		return agentCode;
	}

	public void setAgentCode(String agentCode) {
		this.agentCode = agentCode;
	}

	public String getCoverNoteNo() {
		return coverNoteNo;
	}

	public void setCoverNoteNo(String coverNoteNo) {
		this.coverNoteNo = coverNoteNo;
	}

	public String getInsuredName() {
		return insuredName;
	}

	public void setInsuredName(String insuredName) {
		this.insuredName = insuredName;
	}

	public String getContactType() {
		return contactType;
	}

	public void setContactType(String contactType) {
		this.contactType = contactType;
	}

	public String getIcDet() {
		return icDet;
	}

	public void setIcDet(String icDet) {
		this.icDet = icDet;
	}

	public String getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(String issueDate) {
		this.issueDate = issueDate;
	}

	public String getInceptionDate() {
		return inceptionDate;
	}

	public void setInceptionDate(String inceptionDate) {
		this.inceptionDate = inceptionDate;
	}

	public String getExpiryDate() {
		return expiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}

	public String getClassCode() {
		return classCode;
	}

	public void setClassCode(String classCode) {
		this.classCode = classCode;
	}

	public String getCnType() {
		return cnType;
	}

	public void setCnType(String cnType) {
		this.cnType = cnType;
	}

	public String getSi() {
		return si;
	}

	public void setSi(String si) {
		this.si = si;
	}

	public String getPremium() {
		return premium;
	}

	public void setPremium(String premium) {
		this.premium = premium;
	}

	public String getSubmissionNo() {
		return submissionNo;
	}

	public void setSubmissionNo(String submissionNo) {
		this.submissionNo = submissionNo;
	}

	public String getErrorReason() {
		return errorReason;
	}

	public void setErrorReason(String errorReason) {
		this.errorReason = errorReason;
	}

	public int getSno() {
		return sno;
	}

	public void setSno(int sno) {
		this.sno = sno;
	}

	public String getPolicyNo() {
		return policyNo;
	}

	public void setPolicyNo(String policyNo) {
		this.policyNo = policyNo;
	}

	public String getSerialNo() {
		return serialNo;
	}

	public void setSerialNo(String serialNo) {
		this.serialNo = serialNo;
	}

	public String getTypeGroup() {
		return typeGroup;
	}

	public void setTypeGroup(String typeGroup) {
		this.typeGroup = typeGroup;
	}

	public String getMatchItemNo() {
		return matchItemNo;
	}

	public void setMatchItemNo(String matchItemNo) {
		this.matchItemNo = matchItemNo;
	}

	public String getDocumentNo() {
		return documentNo;
	}

	public void setDocumentNo(String documentNo) {
		this.documentNo = documentNo;
	}

	public String getDebitNoteNo() {
		return debitNoteNo;
	}

	public void setDebitNoteNo(String debitNoteNo) {
		this.debitNoteNo = debitNoteNo;
	}

	public String getEndorsementNo() {
		return endorsementNo;
	}

	public void setEndorsementNo(String endorsementNo) {
		this.endorsementNo = endorsementNo;
	}

	public String getRenewalNo() {
		return renewalNo;
	}

	public void setRenewalNo(String renewalNo) {
		this.renewalNo = renewalNo;
	}

	public String getReceiptNo() {
		return receiptNo;
	}

	public void setReceiptNo(String receiptNo) {
		this.receiptNo = receiptNo;
	}

	public String getOrigPremiumDue() {
		return origPremiumDue;
	}

	public void setOrigPremiumDue(String origPremiumDue) {
		this.origPremiumDue = origPremiumDue;
	}

	
}
