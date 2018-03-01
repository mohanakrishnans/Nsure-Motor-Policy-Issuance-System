/**
 * 
 */
package com.kgisl.nsure.quotation.domain;

import org.springframework.stereotype.Component;

/**
 * @author mohan
 *
 */
@Component
public class QuotationDO {
	/*Contact Type*/
	private int contactType;
	private String contactName;
	private char contactActiveStatus;
	private String creationDate; 
	private int createdBy;
	
	/*Individual*/
	private int sourceType;
	private String branch;
	private int accountCode;
	private String accountName;
	private String sourceName;
	
	/*Business*/
	private long newIcNo;
	private String name;
	private String nationality;
	private String race;
	private String dateOfBirth;
	private String gender;
	private String maritalStatus;
	private String occupation;
	private String gstRegistered;
	private String address;
	private String postCode;
	private String countryCode;
	private String mobileNo;
	private String pdpa;
	private String css;
	
	/*Others*/
	private long businessRegNo;
	private String typeOfBusiness;
	private long oldIcNo;
	
	/*Grid*/
	public Long id;
	public String namee;
	public String email;
	public int quotationID;
	
	
	/**
	 * @return the quotationID
	 */
	public int getQuotationID() {
		return quotationID;
	}
	/**
	 * @param quotationID the quotationID to set
	 */
	public void setQuotationID(int quotationID) {
		this.quotationID = quotationID;
	}
	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}
	/**
	 * @return the namee
	 */
	public String getNamee() {
		return namee;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * @param namee the namee to set
	 */
	public void setNamee(String namee) {
		this.namee = namee;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the contactType
	 */
	public int getContactType() {
		return contactType;
	}
	/**
	 * @return the contactName
	 */
	public String getContactName() {
		return contactName;
	}
	/**
	 * @return the contactActiveStatus
	 */
	public char getContactActiveStatus() {
		return contactActiveStatus;
	}
	/**
	 * @return the creationDate
	 */
	public String getCreationDate() {
		return creationDate;
	}
	/**
	 * @return the createdBy
	 */
	public int getCreatedBy() {
		return createdBy;
	}
	/**
	 * @return the sourceType
	 */
	public int getSourceType() {
		return sourceType;
	}
	/**
	 * @return the branch
	 */
	public String getBranch() {
		return branch;
	}
	/**
	 * @return the accountCode
	 */
	public int getAccountCode() {
		return accountCode;
	}
	/**
	 * @return the accountName
	 */
	public String getAccountName() {
		return accountName;
	}
	/**
	 * @return the sourceName
	 */
	public String getSourceName() {
		return sourceName;
	}
	/**
	 * @return the newIcNo
	 */
	public long getNewIcNo() {
		return newIcNo;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @return the nationality
	 */
	public String getNationality() {
		return nationality;
	}
	/**
	 * @return the race
	 */
	public String getRace() {
		return race;
	}
	/**
	 * @return the dateOfBirth
	 */
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}
	/**
	 * @return the maritalStatus
	 */
	public String getMaritalStatus() {
		return maritalStatus;
	}
	/**
	 * @return the occupation
	 */
	public String getOccupation() {
		return occupation;
	}
	/**
	 * @return the gstRegistered
	 */
	public String getGstRegistered() {
		return gstRegistered;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @return the postCode
	 */
	public String getPostCode() {
		return postCode;
	}
	/**
	 * @return the countryCode
	 */
	public String getCountryCode() {
		return countryCode;
	}
	/**
	 * @return the mobileNo
	 */
	public String getMobileNo() {
		return mobileNo;
	}
	/**
	 * @return the pdpa
	 */
	public String getPdpa() {
		return pdpa;
	}
	/**
	 * @return the css
	 */
	public String getCss() {
		return css;
	}
	/**
	 * @return the businessRegNo
	 */
	public long getBusinessRegNo() {
		return businessRegNo;
	}
	/**
	 * @return the typeOfBusiness
	 */
	public String getTypeOfBusiness() {
		return typeOfBusiness;
	}
	/**
	 * @return the oldIcNo
	 */
	public long getOldIcNo() {
		return oldIcNo;
	}
	/**
	 * @param contactType the contactType to set
	 */
	public void setContactType(int contactType) {
		this.contactType = contactType;
	}
	/**
	 * @param contactName the contactName to set
	 */
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	/**
	 * @param contactActiveStatus 
	 * @param contactActiveStatus the contactActiveStatus to set
	 */
	public void setContactActiveStatus(char contactActiveStatus) {
		this.contactActiveStatus = contactActiveStatus;
	}
	/**
	 * @param creationDate the creationDate to set
	 */
	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}
	/**
	 * @param createdBy the createdBy to set
	 */
	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}
	/**
	 * @param sourceType the sourceType to set
	 */
	public void setSourceType(int sourceType) {
		this.sourceType = sourceType;
	}
	/**
	 * @param branch the branch to set
	 */
	public void setBranch(String branch) {
		this.branch = branch;
	}
	/**
	 * @param accountCode the accountCode to set
	 */
	public void setAccountCode(int accountCode) {
		this.accountCode = accountCode;
	}
	/**
	 * @param accountName the accountName to set
	 */
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	/**
	 * @param sourceName the sourceName to set
	 */
	public void setSourceName(String sourceName) {
		this.sourceName = sourceName;
	}
	/**
	 * @param newIcNo the newIcNo to set
	 */
	public void setNewIcNo(long newIcNo) {
		this.newIcNo = newIcNo;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @param nationality the nationality to set
	 */
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}
	/**
	 * @param race the race to set
	 */
	public void setRace(String race) {
		this.race = race;
	}
	/**
	 * @param dateOfBirth the dateOfBirth to set
	 */
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}
	/**
	 * @param maritalStatus the maritalStatus to set
	 */
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}
	/**
	 * @param occupation the occupation to set
	 */
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	/**
	 * @param gstRegistered the gstRegistered to set
	 */
	public void setGstRegistered(String gstRegistered) {
		this.gstRegistered = gstRegistered;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @param postCode the postCode to set
	 */
	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	/**
	 * @param countryCode the countryCode to set
	 */
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	/**
	 * @param mobileNo the mobileNo to set
	 */
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	/**
	 * @param pdpa the pdpa to set
	 */
	public void setPdpa(String pdpa) {
		this.pdpa = pdpa;
	}
	/**
	 * @param css the css to set
	 */
	public void setCss(String css) {
		this.css = css;
	}
	/**
	 * @param businessRegNo the businessRegNo to set
	 */
	public void setBusinessRegNo(long businessRegNo) {
		this.businessRegNo = businessRegNo;
	}
	/**
	 * @param typeOfBusiness the typeOfBusiness to set
	 */
	public void setTypeOfBusiness(String typeOfBusiness) {
		this.typeOfBusiness = typeOfBusiness;
	}
	/**
	 * @param oldIcNo the oldIcNo to set
	 */
	public void setOldIcNo(long oldIcNo) {
		this.oldIcNo = oldIcNo;
	}
	
	
}