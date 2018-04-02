/**
 * 
 */
package com.kgisl.nsure.quotation.domain;

import java.util.Date;

import org.springframework.stereotype.Component;

/**
 * @author mohan
 *
 */
@Component
public class QuotationDO {
	/* Contact Type */
	private int contactType;
	private String contactName;
	private char contactActiveStatus;
	private String creationDate;
	private int createdBy;

	/* Individual */
	private int sourceType;
	private String branch;
	private int accountCode;
	private String accountName;
	private String sourceName;

	/* Business */
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

	/* Others */
	private int businessRegNo;
	private String typeOfBusiness;
	private long oldIcNo;

	/* Grid */
	public Long id;
	public String namee;
	public String email;
	public int quotationID;

	/* Named Drivers */
	public int nameddriversno;
	public String namednewicno;
	public String namedoldicno;
	public int namedage;
	public String nameddriverexperience;
	public String namedgender;
	public String nameddrivername;
	public String nameddriverrelationship;

	/* Extra Coverage */
	private String suminsured;
	private String extracoveragerate;
	private String extracoveragepremium;
	private String extracoverageclass;
	private String cartdays;
	private String cartamount;
	private int extracoverageid;

	/* Extra */
	public String gstregistrationdate;
	public String gstexpirydate;
	public String website;
	public String trafficviolation;
	public String vipstatus;
	public String permanentaddress;
	public String statecountry;
	public String telnohouse;
	public String telnooffice;
	public String faxnohouse;
	public String faxnooffice;
	public String remarks;
	public String datasignedcustomer;
	public String crosssignedcustomer;
	public String oldicpassportno;
	public String salutation;
	public String age;
	public String employementstatus;
	public String gstregistrationno;

	/*Extra Coverage */
	private int mpaid;
	private String selectplan;
	private String noofpassengers;
	private String mpapremium;
	
	/**/
	private String location;
	private String phone;
	
	
	/**
	 * @return the location
	 */
	public String getLocation() {
		return location;
	}

	/**
	 * @param location the location to set
	 */
	public void setLocation(String location) {
		this.location = location;
	}

	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * @return the mpaid
	 */
	public int getMpaid() {
		return mpaid;
	}

	/**
	 * @param mpaid the mpaid to set
	 */
	public void setMpaid(int mpaid) {
		this.mpaid = mpaid;
	}

	/**
	 * @return the selectplan
	 */
	public String getSelectplan() {
		return selectplan;
	}

	/**
	 * @param selectplan the selectplan to set
	 */
	public void setSelectplan(String selectplan) {
		this.selectplan = selectplan;
	}

	/**
	 * @return the noofpassengers
	 */
	public String getNoofpassengers() {
		return noofpassengers;
	}

	/**
	 * @param noofpassengers the noofpassengers to set
	 */
	public void setNoofpassengers(String noofpassengers) {
		this.noofpassengers = noofpassengers;
	}

	/**
	 * @return the mpapremium
	 */
	public String getMpapremium() {
		return mpapremium;
	}

	/**
	 * @param mpapremium the mpapremium to set
	 */
	public void setMpapremium(String mpapremium) {
		this.mpapremium = mpapremium;
	}

	/**
	 * @return the suminsured
	 */
	public String getSuminsured() {
		return suminsured;
	}

	/**
	 * @param suminsured the suminsured to set
	 */
	public void setSuminsured(String suminsured) {
		this.suminsured = suminsured;
	}

	/**
	 * @return the extracoveragerate
	 */
	public String getExtracoveragerate() {
		return extracoveragerate;
	}

	/**
	 * @param extracoveragerate the extracoveragerate to set
	 */
	public void setExtracoveragerate(String extracoveragerate) {
		this.extracoveragerate = extracoveragerate;
	}

	/**
	 * @return the extracoveragepremium
	 */
	public String getExtracoveragepremium() {
		return extracoveragepremium;
	}

	/**
	 * @param extracoveragepremium the extracoveragepremium to set
	 */
	public void setExtracoveragepremium(String extracoveragepremium) {
		this.extracoveragepremium = extracoveragepremium;
	}

	/**
	 * @return the extracoverageclass
	 */
	public String getExtracoverageclass() {
		return extracoverageclass;
	}

	/**
	 * @param extracoverageclass the extracoverageclass to set
	 */
	public void setExtracoverageclass(String extracoverageclass) {
		this.extracoverageclass = extracoverageclass;
	}

	/**
	 * @return the cartdays
	 */
	public String getCartdays() {
		return cartdays;
	}

	/**
	 * @param cartdays the cartdays to set
	 */
	public void setCartdays(String cartdays) {
		this.cartdays = cartdays;
	}

	/**
	 * @return the cartamount
	 */
	public String getCartamount() {
		return cartamount;
	}

	/**
	 * @param cartamount the cartamount to set
	 */
	public void setCartamount(String cartamount) {
		this.cartamount = cartamount;
	}

	/**
	 * @return the extracoverageid
	 */
	public int getExtracoverageid() {
		return extracoverageid;
	}

	/**
	 * @param extracoverageid the extracoverageid to set
	 */
	public void setExtracoverageid(int extracoverageid) {
		this.extracoverageid = extracoverageid;
	}

	/**
	 * @param businessRegNo
	 *            the businessRegNo to set
	 */
	public void setBusinessRegNo(int businessRegNo) {
		this.businessRegNo = businessRegNo;
	}

	/**
	 * @return the crosssignedcustomer
	 */
	public String getCrosssignedcustomer() {
		return crosssignedcustomer;
	}

	/**
	 * @param crosssignedcustomer
	 *            the crosssignedcustomer to set
	 */
	public void setCrosssignedcustomer(String crosssignedcustomer) {
		this.crosssignedcustomer = crosssignedcustomer;
	}

	/**
	 * @return the gstregistrationdate
	 */
	public String getGstregistrationdate() {
		return gstregistrationdate;
	}

	/**
	 * @return the gstexpirydate
	 */
	public String getGstexpirydate() {
		return gstexpirydate;
	}

	/**
	 * @param gstregistrationdate
	 *            the gstregistrationdate to set
	 */
	public void setGstregistrationdate(String gstregistrationdate) {
		this.gstregistrationdate = gstregistrationdate;
	}

	/**
	 * @param gstexpirydate
	 *            the gstexpirydate to set
	 */
	public void setGstexpirydate(String gstexpirydate) {
		this.gstexpirydate = gstexpirydate;
	}

	/**
	 * @return the website
	 */
	public String getWebsite() {
		return website;
	}

	/**
	 * @param website
	 *            the website to set
	 */
	public void setWebsite(String website) {
		this.website = website;
	}

	/**
	 * @return the trafficviolation
	 */
	public String getTrafficviolation() {
		return trafficviolation;
	}

	/**
	 * @param trafficviolation
	 *            the trafficviolation to set
	 */
	public void setTrafficviolation(String trafficviolation) {
		this.trafficviolation = trafficviolation;
	}

	/**
	 * @return the vipstatus
	 */
	public String getVipstatus() {
		return vipstatus;
	}

	/**
	 * @param vipstatus
	 *            the vipstatus to set
	 */
	public void setVipstatus(String vipstatus) {
		this.vipstatus = vipstatus;
	}

	/**
	 * @return the permanentaddress
	 */
	public String getPermanentaddress() {
		return permanentaddress;
	}

	/**
	 * @param permanentaddress
	 *            the permanentaddress to set
	 */
	public void setPermanentaddress(String permanentaddress) {
		this.permanentaddress = permanentaddress;
	}

	/**
	 * @return the statecountry
	 */
	public String getStatecountry() {
		return statecountry;
	}

	/**
	 * @param statecountry
	 *            the statecountry to set
	 */
	public void setStatecountry(String statecountry) {
		this.statecountry = statecountry;
	}

	/**
	 * @return the telnohouse
	 */
	public String getTelnohouse() {
		return telnohouse;
	}

	/**
	 * @param telnohouse
	 *            the telnohouse to set
	 */
	public void setTelnohouse(String telnohouse) {
		this.telnohouse = telnohouse;
	}

	/**
	 * @return the telnooffice
	 */
	public String getTelnooffice() {
		return telnooffice;
	}

	/**
	 * @param telnooffice
	 *            the telnooffice to set
	 */
	public void setTelnooffice(String telnooffice) {
		this.telnooffice = telnooffice;
	}

	/**
	 * @return the faxnohouse
	 */
	public String getFaxnohouse() {
		return faxnohouse;
	}

	/**
	 * @param faxnohouse
	 *            the faxnohouse to set
	 */
	public void setFaxnohouse(String faxnohouse) {
		this.faxnohouse = faxnohouse;
	}

	/**
	 * @return the faxnooffice
	 */
	public String getFaxnooffice() {
		return faxnooffice;
	}

	/**
	 * @param faxnooffice
	 *            the faxnooffice to set
	 */
	public void setFaxnooffice(String faxnooffice) {
		this.faxnooffice = faxnooffice;
	}

	/**
	 * @return the remarks
	 */
	public String getRemarks() {
		return remarks;
	}

	/**
	 * @param remarks
	 *            the remarks to set
	 */
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	/**
	 * @return the datasignedcustomer
	 */
	public String getDatasignedcustomer() {
		return datasignedcustomer;
	}

	/**
	 * @param datasignedcustomer
	 *            the datasignedcustomer to set
	 */
	public void setDatasignedcustomer(String datasignedcustomer) {
		this.datasignedcustomer = datasignedcustomer;
	}

	/**
	 * @return the oldicpassportno
	 */
	public String getOldicpassportno() {
		return oldicpassportno;
	}

	/**
	 * @param oldicpassportno
	 *            the oldicpassportno to set
	 */
	public void setOldicpassportno(String oldicpassportno) {
		this.oldicpassportno = oldicpassportno;
	}

	/**
	 * @return the salutation
	 */
	public String getSalutation() {
		return salutation;
	}

	/**
	 * @param salutation
	 *            the salutation to set
	 */
	public void setSalutation(String salutation) {
		this.salutation = salutation;
	}

	/**
	 * @return the age
	 */
	public String getAge() {
		return age;
	}

	/**
	 * @param age
	 *            the age to set
	 */
	public void setAge(String age) {
		this.age = age;
	}

	/**
	 * @return the employementstatus
	 */
	public String getEmployementstatus() {
		return employementstatus;
	}

	/**
	 * @param employementstatus
	 *            the employementstatus to set
	 */
	public void setEmployementstatus(String employementstatus) {
		this.employementstatus = employementstatus;
	}

	/**
	 * @return the gstregistrationno
	 */
	public String getGstregistrationno() {
		return gstregistrationno;
	}

	/**
	 * @param gstregistrationno
	 *            the gstregistrationno to set
	 */
	public void setGstregistrationno(String gstregistrationno) {
		this.gstregistrationno = gstregistrationno;
	}

	/**
	 * @return the namedoldicno
	 */
	public String getNamedoldicno() {
		return namedoldicno;
	}

	/**
	 * @param namedoldicno
	 *            the namedoldicno to set
	 */
	public void setNamedoldicno(String namedoldicno) {
		this.namedoldicno = namedoldicno;
	}

	/**
	 * @return the namednewicno
	 */
	public String getNamednewicno() {
		return namednewicno;
	}

	/**
	 * @param namednewicno
	 *            the namednewicno to set
	 */
	public void setNamednewicno(String namednewicno) {
		this.namednewicno = namednewicno;
	}

	/**
	 * @return the nameddriversno
	 */
	public int getNameddriversno() {
		return nameddriversno;
	}

	/**
	 * @param nameddriversno
	 *            the nameddriversno to set
	 */
	public void setNameddriversno(int nameddriversno) {
		this.nameddriversno = nameddriversno;
	}

	/**
	 * @return the namedage
	 */
	public int getNamedage() {
		return namedage;
	}

	/**
	 * @param namedage
	 *            the namedage to set
	 */
	public void setNamedage(int namedage) {
		this.namedage = namedage;
	}

	/**
	 * @return the nameddriverexperience
	 */
	public String getNameddriverexperience() {
		return nameddriverexperience;
	}

	/**
	 * @param nameddriverexperience
	 *            the nameddriverexperience to set
	 */
	public void setNameddriverexperience(String nameddriverexperience) {
		this.nameddriverexperience = nameddriverexperience;
	}

	/**
	 * @return the namedgender
	 */
	public String getNamedgender() {
		return namedgender;
	}

	/**
	 * @param namedgender
	 *            the namedgender to set
	 */
	public void setNamedgender(String namedgender) {
		this.namedgender = namedgender;
	}

	/**
	 * @return the nameddrivername
	 */
	public String getNameddrivername() {
		return nameddrivername;
	}

	/**
	 * @param nameddrivername
	 *            the nameddrivername to set
	 */
	public void setNameddrivername(String nameddrivername) {
		this.nameddrivername = nameddrivername;
	}

	/**
	 * @return the nameddriverrelationship
	 */
	public String getNameddriverrelationship() {
		return nameddriverrelationship;
	}

	/**
	 * @param nameddriverrelationship
	 *            the nameddriverrelationship to set
	 */
	public void setNameddriverrelationship(String nameddriverrelationship) {
		this.nameddriverrelationship = nameddriverrelationship;
	}

	/**
	 * @return the quotationID
	 */
	public int getQuotationID() {
		return quotationID;
	}

	/**
	 * @param quotationID
	 *            the quotationID to set
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
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @param namee
	 *            the namee to set
	 */
	public void setNamee(String namee) {
		this.namee = namee;
	}

	/**
	 * @param email
	 *            the email to set
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
	 * @param contactType
	 *            the contactType to set
	 */
	public void setContactType(int contactType) {
		this.contactType = contactType;
	}

	/**
	 * @param contactName
	 *            the contactName to set
	 */
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	/**
	 * @param contactActiveStatus
	 * @param contactActiveStatus
	 *            the contactActiveStatus to set
	 */
	public void setContactActiveStatus(char contactActiveStatus) {
		this.contactActiveStatus = contactActiveStatus;
	}

	/**
	 * @param creationDate
	 *            the creationDate to set
	 */
	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}

	/**
	 * @param createdBy
	 *            the createdBy to set
	 */
	public void setCreatedBy(int createdBy) {
		this.createdBy = createdBy;
	}

	/**
	 * @param sourceType
	 *            the sourceType to set
	 */
	public void setSourceType(int sourceType) {
		this.sourceType = sourceType;
	}

	/**
	 * @param branch
	 *            the branch to set
	 */
	public void setBranch(String branch) {
		this.branch = branch;
	}

	/**
	 * @param accountCode
	 *            the accountCode to set
	 */
	public void setAccountCode(int accountCode) {
		this.accountCode = accountCode;
	}

	/**
	 * @param accountName
	 *            the accountName to set
	 */
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	/**
	 * @param sourceName
	 *            the sourceName to set
	 */
	public void setSourceName(String sourceName) {
		this.sourceName = sourceName;
	}

	/**
	 * @param newIcNo
	 *            the newIcNo to set
	 */
	public void setNewIcNo(long newIcNo) {
		this.newIcNo = newIcNo;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @param nationality
	 *            the nationality to set
	 */
	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	/**
	 * @param race
	 *            the race to set
	 */
	public void setRace(String race) {
		this.race = race;
	}

	/**
	 * @param dateOfBirth
	 *            the dateOfBirth to set
	 */
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	/**
	 * @param gender
	 *            the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}

	/**
	 * @param maritalStatus
	 *            the maritalStatus to set
	 */
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	/**
	 * @param occupation
	 *            the occupation to set
	 */
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}

	/**
	 * @param gstRegistered
	 *            the gstRegistered to set
	 */
	public void setGstRegistered(String gstRegistered) {
		this.gstRegistered = gstRegistered;
	}

	/**
	 * @param address
	 *            the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @param postCode
	 *            the postCode to set
	 */
	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	/**
	 * @param countryCode
	 *            the countryCode to set
	 */
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	/**
	 * @param mobileNo
	 *            the mobileNo to set
	 */
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	/**
	 * @param pdpa
	 *            the pdpa to set
	 */
	public void setPdpa(String pdpa) {
		this.pdpa = pdpa;
	}

	/**
	 * @param css
	 *            the css to set
	 */
	public void setCss(String css) {
		this.css = css;
	}

	/**
	 * @param typeOfBusiness
	 *            the typeOfBusiness to set
	 */
	public void setTypeOfBusiness(String typeOfBusiness) {
		this.typeOfBusiness = typeOfBusiness;
	}

	/**
	 * @param oldIcNo
	 *            the oldIcNo to set
	 */
	public void setOldIcNo(long oldIcNo) {
		this.oldIcNo = oldIcNo;
	}

}