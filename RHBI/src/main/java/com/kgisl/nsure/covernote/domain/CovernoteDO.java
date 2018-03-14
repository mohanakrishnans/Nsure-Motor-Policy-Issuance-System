/**
 * 
 */
package com.kgisl.nsure.covernote.domain;

import org.springframework.stereotype.Component;

/**
 * @author mohan
 *
 */
@Component
public class CovernoteDO {
	private int classid;
	private String classname;
	private int covernotetypeid;
	private String covernotetypename;
	private int coveragetypeid;
	private String coveragetypename;
	private int classgroupid;
	private String classgroupname;
	private int hiretypeid;
	private String hiretypename;
	private int ownershipid;
	private String ownershipname;
	private int locid;
	private String locname;
	private int vehicleusageid;
	private String vehicleusagename;
	private int additionalusageid;
	private String additionalusagename;
	
	private int cnclassid;
	private String cnclassname;
	private int vehiclebodyid;
	private String vehiclebodyname;
	private int functionalmodificationid;
	private String functionalmodificationname;	
	private int safetycodeid;
	private String safetycodename;
	private int driverexperienceid;
	private String driverexperiencename;
	private int garagedid;
	private String garagedname;
	private int antitheftcodeid;
	private String antitheftcodename;
	private int performanceaestheticid;
	private String performanceaestheticname;
	private int vehiclecapacityid;
	private String vehiclecapacityname;
	
	
	
	
	
	
	
	private String covernoteclass;
	private String masterpolicynumber;
	private String covernotetype;
	private String issueddate;
	private String inceptiondate;
	private String expirydate;
	/*generalvehicle*/
	private String geographicallocation;
	private String classgroup;
	private String vehicleusage;
	private String highrisk;
	private String typeofhirepurchase;
	private String ownershiptype;
	private String safetycode;
 
	private String allriderdriver;
	private String youngseniordriver;

	private String driverexperience;
	private String functionalmodification;
	private String region;
	private String vehicletype;
	private String coveragetype;
	private String hirepurchase;
	private String additionalusage;
	private String garaged;
	private String antitheftcode;
	private String drivinglicensenumber;
	private String performanceaesthetic;

	/*vehicledetails*/
	private String vehiclenumber;
	private String makemodel;
	private String vehiclebody;
	private String numberofseats;
	private String capacity;
	private String chassisnumber;
	private String trailernumber;
	private String tcapacity;
	private String purchaseprice;
	private String vehicleapprovalcode;
	private String modeldescription;
	private String yearsofmanufacturing;
	private String bdm;
	private String btm;
	private String enginemotornumber;
	private String logbooknumber;
	private String variantseries;
	private String vehiclepurchasedate;
	private String numberofclaims;
	/*suminsureddetails*/
	private String vehiclemarketvalue;
	private String suminsured;
	private String trailersuminsured;

		
	/**
	 * @return the functionalmodificationid
	 */
	public int getFunctionalmodificationid() {
		return functionalmodificationid;
	}
	/**
	 * @param functionalmodificationid the functionalmodificationid to set
	 */
	public void setFunctionalmodificationid(int functionalmodificationid) {
		this.functionalmodificationid = functionalmodificationid;
	}
	/**
	 * @return the functionalmodificationname
	 */
	public String getFunctionalmodificationname() {
		return functionalmodificationname;
	}
	/**
	 * @param functionalmodificationname the functionalmodificationname to set
	 */
	public void setFunctionalmodificationname(String functionalmodificationname) {
		this.functionalmodificationname = functionalmodificationname;
	}
	/**
	 * @return the vehiclecapacityid
	 */
	public int getVehiclecapacityid() {
		return vehiclecapacityid;
	}
	/**
	 * @param vehiclecapacityid the vehiclecapacityid to set
	 */
	public void setVehiclecapacityid(int vehiclecapacityid) {
		this.vehiclecapacityid = vehiclecapacityid;
	}
	/**
	 * @return the vehiclecapacityname
	 */
	public String getVehiclecapacityname() {
		return vehiclecapacityname;
	}
	/**
	 * @param vehiclecapacityname the vehiclecapacityname to set
	 */
	public void setVehiclecapacityname(String vehiclecapacityname) {
		this.vehiclecapacityname = vehiclecapacityname;
	}
	/**
	 * @return the safetycodeid
	 */
	public int getSafetycodeid() {
		return safetycodeid;
	}
	/**
	 * @param safetycodeid the safetycodeid to set
	 */
	public void setSafetycodeid(int safetycodeid) {
		this.safetycodeid = safetycodeid;
	}
	/**
	 * @return the safetycodename
	 */
	public String getSafetycodename() {
		return safetycodename;
	}
	/**
	 * @param safetycodename the safetycodename to set
	 */
	public void setSafetycodename(String safetycodename) {
		this.safetycodename = safetycodename;
	}
	/**
	 * @return the driverexperienceid
	 */
	public int getDriverexperienceid() {
		return driverexperienceid;
	}
	/**
	 * @param driverexperienceid the driverexperienceid to set
	 */
	public void setDriverexperienceid(int driverexperienceid) {
		this.driverexperienceid = driverexperienceid;
	}
	/**
	 * @return the driverexperiencename
	 */
	public String getDriverexperiencename() {
		return driverexperiencename;
	}
	/**
	 * @param driverexperiencename the driverexperiencename to set
	 */
	public void setDriverexperiencename(String driverexperiencename) {
		this.driverexperiencename = driverexperiencename;
	}
	/**
	 * @return the garagedid
	 */
	public int getGaragedid() {
		return garagedid;
	}
	/**
	 * @param garagedid the garagedid to set
	 */
	public void setGaragedid(int garagedid) {
		this.garagedid = garagedid;
	}
	/**
	 * @return the garagedname
	 */
	public String getGaragedname() {
		return garagedname;
	}
	/**
	 * @param garagedname the garagedname to set
	 */
	public void setGaragedname(String garagedname) {
		this.garagedname = garagedname;
	}
	/**
	 * @return the antitheftcodeid
	 */
	public int getAntitheftcodeid() {
		return antitheftcodeid;
	}
	/**
	 * @param antitheftcodeid the antitheftcodeid to set
	 */
	public void setAntitheftcodeid(int antitheftcodeid) {
		this.antitheftcodeid = antitheftcodeid;
	}
	/**
	 * @return the antitheftcodename
	 */
	public String getAntitheftcodename() {
		return antitheftcodename;
	}
	/**
	 * @param antitheftcodename the antitheftcodename to set
	 */
	public void setAntitheftcodename(String antitheftcodename) {
		this.antitheftcodename = antitheftcodename;
	}
	/**
	 * @return the performanceaestheticid
	 */
	public int getPerformanceaestheticid() {
		return performanceaestheticid;
	}
	/**
	 * @param performanceaestheticid the performanceaestheticid to set
	 */
	public void setPerformanceaestheticid(int performanceaestheticid) {
		this.performanceaestheticid = performanceaestheticid;
	}
	/**
	 * @return the performanceaestheticname
	 */
	public String getPerformanceaestheticname() {
		return performanceaestheticname;
	}
	/**
	 * @param performanceaestheticname the performanceaestheticname to set
	 */
	public void setPerformanceaestheticname(String performanceaestheticname) {
		this.performanceaestheticname = performanceaestheticname;
	}
	/**
	 * @return the vehiclebodyid
	 */
	public int getVehiclebodyid() {
		return vehiclebodyid;
	}
	/**
	 * @param vehiclebodyid the vehiclebodyid to set
	 */
	public void setVehiclebodyid(int vehiclebodyid) {
		this.vehiclebodyid = vehiclebodyid;
	}
	/**
	 * @return the vehiclebodyname
	 */
	public String getVehiclebodyname() {
		return vehiclebodyname;
	}
	/**
	 * @param vehiclebodyname the vehiclebodyname to set
	 */
	public void setVehiclebodyname(String vehiclebodyname) {
		this.vehiclebodyname = vehiclebodyname;
	}
	/**
	 * @return the cnclassid
	 */
	public int getCnclassid() {
		return cnclassid;
	}
	/**
	 * @param cnclassid the cnclassid to set
	 */
	public void setCnclassid(int cnclassid) {
		this.cnclassid = cnclassid;
	}
	/**
	 * @return the cnclassname
	 */
	public String getCnclassname() {
		return cnclassname;
	}
	/**
	 * @param cnclassname the cnclassname to set
	 */
	public void setCnclassname(String cnclassname) {
		this.cnclassname = cnclassname;
	}
	/**
	 * @return the tcapacity
	 */
	public String getTcapacity() {
		return tcapacity;
	}
	/**
	 * @param tcapacity the tcapacity to set
	 */
	public void setTcapacity(String tcapacity) {
		this.tcapacity = tcapacity;
	}
	/**
	 * @return the modeldescription
	 */
	public String getModeldescription() {
		return modeldescription;
	}
	/**
	 * @param modeldescription the modeldescription to set
	 */
	public void setModeldescription(String modeldescription) {
		this.modeldescription = modeldescription;
	}
	/**
	 * @return the bdm
	 */
	public String getBdm() {
		return bdm;
	}
	/**
	 * @param bdm the bdm to set
	 */
	public void setBdm(String bdm) {
		this.bdm = bdm;
	}
	/**
	 * @return the btm
	 */
	public String getBtm() {
		return btm;
	}
	/**
	 * @param btm the btm to set
	 */
	public void setBtm(String btm) {
		this.btm = btm;
	}
	/**
	 * @return the numberofclaims
	 */
	public String getNumberofclaims() {
		return numberofclaims;
	}
	/**
	 * @param numberofclaims the numberofclaims to set
	 */
	public void setNumberofclaims(String numberofclaims) {
		this.numberofclaims = numberofclaims;
	}
	/**
	 * @return the covernoteclass
	 */
	public String getCovernoteclass() {
		return covernoteclass;
	}
	/**
	 * @param covernoteclass the covernoteclass to set
	 */
	public void setCovernoteclass(String covernoteclass) {
		this.covernoteclass = covernoteclass;
	}
	/**
	 * @return the masterpolicynumber
	 */
	public String getMasterpolicynumber() {
		return masterpolicynumber;
	}
	/**
	 * @param masterpolicynumber the masterpolicynumber to set
	 */
	public void setMasterpolicynumber(String masterpolicynumber) {
		this.masterpolicynumber = masterpolicynumber;
	}
	/**
	 * @return the covernotetype
	 */
	public String getCovernotetype() {
		return covernotetype;
	}
	/**
	 * @param covernotetype the covernotetype to set
	 */
	public void setCovernotetype(String covernotetype) {
		this.covernotetype = covernotetype;
	}
	/**
	 * @return the issueddate
	 */
	public String getIssueddate() {
		return issueddate;
	}
	/**
	 * @param issueddate the issueddate to set
	 */
	public void setIssueddate(String issueddate) {
		this.issueddate = issueddate;
	}
	/**
	 * @return the inceptiondate
	 */
	public String getInceptiondate() {
		return inceptiondate;
	}
	/**
	 * @param inceptiondate the inceptiondate to set
	 */
	public void setInceptiondate(String inceptiondate) {
		this.inceptiondate = inceptiondate;
	}
	/**
	 * @return the expirydate
	 */
	public String getExpirydate() {
		return expirydate;
	}
	/**
	 * @param expirydate the expirydate to set
	 */
	public void setExpirydate(String expirydate) {
		this.expirydate = expirydate;
	}
	/**
	 * @return the geographicallocation
	 */
	public String getGeographicallocation() {
		return geographicallocation;
	}
	/**
	 * @param geographicallocation the geographicallocation to set
	 */
	public void setGeographicallocation(String geographicallocation) {
		this.geographicallocation = geographicallocation;
	}
	/**
	 * @return the classgroup
	 */
	public String getClassgroup() {
		return classgroup;
	}
	/**
	 * @param classgroup the classgroup to set
	 */
	public void setClassgroup(String classgroup) {
		this.classgroup = classgroup;
	}
	/**
	 * @return the vehicleusage
	 */
	public String getVehicleusage() {
		return vehicleusage;
	}
	/**
	 * @param vehicleusage the vehicleusage to set
	 */
	public void setVehicleusage(String vehicleusage) {
		this.vehicleusage = vehicleusage;
	}
	/**
	 * @return the highrisk
	 */
	public String getHighrisk() {
		return highrisk;
	}
	/**
	 * @param highrisk the highrisk to set
	 */
	public void setHighrisk(String highrisk) {
		this.highrisk = highrisk;
	}
	/**
	 * @return the typeofhirepurchase
	 */
	public String getTypeofhirepurchase() {
		return typeofhirepurchase;
	}
	/**
	 * @param typeofhirepurchase the typeofhirepurchase to set
	 */
	public void setTypeofhirepurchase(String typeofhirepurchase) {
		this.typeofhirepurchase = typeofhirepurchase;
	}
	/**
	 * @return the ownershiptype
	 */
	public String getOwnershiptype() {
		return ownershiptype;
	}
	/**
	 * @param ownershiptype the ownershiptype to set
	 */
	public void setOwnershiptype(String ownershiptype) {
		this.ownershiptype = ownershiptype;
	}
	/**
	 * @return the safetycode
	 */
	public String getSafetycode() {
		return safetycode;
	}
	/**
	 * @param safetycode the safetycode to set
	 */
	public void setSafetycode(String safetycode) {
		this.safetycode = safetycode;
	}
	/**
	 * @return the allriderdriver
	 */
	public String getAllriderdriver() {
		return allriderdriver;
	}
	/**
	 * @param allriderdriver the allriderdriver to set
	 */
	public void setAllriderdriver(String allriderdriver) {
		this.allriderdriver = allriderdriver;
	}
	/**
	 * @return the youngseniordriver
	 */
	public String getYoungseniordriver() {
		return youngseniordriver;
	}
	/**
	 * @param youngseniordriver the youngseniordriver to set
	 */
	public void setYoungseniordriver(String youngseniordriver) {
		this.youngseniordriver = youngseniordriver;
	}
	/**
	 * @return the driverexperience
	 */
	public String getDriverexperience() {
		return driverexperience;
	}
	/**
	 * @param driverexperience the driverexperience to set
	 */
	public void setDriverexperience(String driverexperience) {
		this.driverexperience = driverexperience;
	}
	/**
	 * @return the functionalmodification
	 */
	public String getFunctionalmodification() {
		return functionalmodification;
	}
	/**
	 * @param functionalmodification the functionalmodification to set
	 */
	public void setFunctionalmodification(String functionalmodification) {
		this.functionalmodification = functionalmodification;
	}
	/**
	 * @return the region
	 */
	public String getRegion() {
		return region;
	}
	/**
	 * @param region the region to set
	 */
	public void setRegion(String region) {
		this.region = region;
	}
	/**
	 * @return the vehicletype
	 */
	public String getVehicletype() {
		return vehicletype;
	}
	/**
	 * @param vehicletype the vehicletype to set
	 */
	public void setVehicletype(String vehicletype) {
		this.vehicletype = vehicletype;
	}
	/**
	 * @return the coveragetype
	 */
	public String getCoveragetype() {
		return coveragetype;
	}
	/**
	 * @param coveragetype the coveragetype to set
	 */
	public void setCoveragetype(String coveragetype) {
		this.coveragetype = coveragetype;
	}
	/**
	 * @return the hirepurchase
	 */
	public String getHirepurchase() {
		return hirepurchase;
	}
	/**
	 * @param hirepurchase the hirepurchase to set
	 */
	public void setHirepurchase(String hirepurchase) {
		this.hirepurchase = hirepurchase;
	}
	/**
	 * @return the additionalusage
	 */
	public String getAdditionalusage() {
		return additionalusage;
	}
	/**
	 * @param additionalusage the additionalusage to set
	 */
	public void setAdditionalusage(String additionalusage) {
		this.additionalusage = additionalusage;
	}
	/**
	 * @return the garaged
	 */
	public String getGaraged() {
		return garaged;
	}
	/**
	 * @param garaged the garaged to set
	 */
	public void setGaraged(String garaged) {
		this.garaged = garaged;
	}
	/**
	 * @return the antitheftcode
	 */
	public String getAntitheftcode() {
		return antitheftcode;
	}
	/**
	 * @param antitheftcode the antitheftcode to set
	 */
	public void setAntitheftcode(String antitheftcode) {
		this.antitheftcode = antitheftcode;
	}
	/**
	 * @return the drivinglicensenumber
	 */
	public String getDrivinglicensenumber() {
		return drivinglicensenumber;
	}
	/**
	 * @param drivinglicensenumber the drivinglicensenumber to set
	 */
	public void setDrivinglicensenumber(String drivinglicensenumber) {
		this.drivinglicensenumber = drivinglicensenumber;
	}
	/**
	 * @return the performanceaesthetic
	 */
	public String getPerformanceaesthetic() {
		return performanceaesthetic;
	}
	/**
	 * @param performanceaesthetic the performanceaesthetic to set
	 */
	public void setPerformanceaesthetic(String performanceaesthetic) {
		this.performanceaesthetic = performanceaesthetic;
	}
	/**
	 * @return the vehiclenumber
	 */
	public String getVehiclenumber() {
		return vehiclenumber;
	}
	/**
	 * @param vehiclenumber the vehiclenumber to set
	 */
	public void setVehiclenumber(String vehiclenumber) {
		this.vehiclenumber = vehiclenumber;
	}
	/**
	 * @return the makemodel
	 */
	public String getMakemodel() {
		return makemodel;
	}
	/**
	 * @param makemodel the makemodel to set
	 */
	public void setMakemodel(String makemodel) {
		this.makemodel = makemodel;
	}
	/**
	 * @return the vehiclebody
	 */
	public String getVehiclebody() {
		return vehiclebody;
	}
	/**
	 * @param vehiclebody the vehiclebody to set
	 */
	public void setVehiclebody(String vehiclebody) {
		this.vehiclebody = vehiclebody;
	}
	/**
	 * @return the numberofseats
	 */
	public String getNumberofseats() {
		return numberofseats;
	}
	/**
	 * @param numberofseats the numberofseats to set
	 */
	public void setNumberofseats(String numberofseats) {
		this.numberofseats = numberofseats;
	}
	/**
	 * @return the capacity
	 */
	public String getCapacity() {
		return capacity;
	}
	/**
	 * @param capacity the capacity to set
	 */
	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}
	/**
	 * @return the chassisnumber
	 */
	public String getChassisnumber() {
		return chassisnumber;
	}
	/**
	 * @param chassisnumber the chassisnumber to set
	 */
	public void setChassisnumber(String chassisnumber) {
		this.chassisnumber = chassisnumber;
	}
	/**
	 * @return the trailernumber
	 */
	public String getTrailernumber() {
		return trailernumber;
	}
	/**
	 * @param trailernumber the trailernumber to set
	 */
	public void setTrailernumber(String trailernumber) {
		this.trailernumber = trailernumber;
	}
	/**
	 * @return the purchaseprice
	 */
	public String getPurchaseprice() {
		return purchaseprice;
	}
	/**
	 * @param purchaseprice the purchaseprice to set
	 */
	public void setPurchaseprice(String purchaseprice) {
		this.purchaseprice = purchaseprice;
	}
	/**
	 * @return the vehicleapprovalcode
	 */
	public String getVehicleapprovalcode() {
		return vehicleapprovalcode;
	}
	/**
	 * @param vehicleapprovalcode the vehicleapprovalcode to set
	 */
	public void setVehicleapprovalcode(String vehicleapprovalcode) {
		this.vehicleapprovalcode = vehicleapprovalcode;
	}
	/**
	 * @return the yearsofmanufacturing
	 */
	public String getYearsofmanufacturing() {
		return yearsofmanufacturing;
	}
	/**
	 * @param yearsofmanufacturing the yearsofmanufacturing to set
	 */
	public void setYearsofmanufacturing(String yearsofmanufacturing) {
		this.yearsofmanufacturing = yearsofmanufacturing;
	}
	/**
	 * @return the enginemotornumber
	 */
	public String getEnginemotornumber() {
		return enginemotornumber;
	}
	/**
	 * @param enginemotornumber the enginemotornumber to set
	 */
	public void setEnginemotornumber(String enginemotornumber) {
		this.enginemotornumber = enginemotornumber;
	}
	/**
	 * @return the logbooknumber
	 */
	public String getLogbooknumber() {
		return logbooknumber;
	}
	/**
	 * @param logbooknumber the logbooknumber to set
	 */
	public void setLogbooknumber(String logbooknumber) {
		this.logbooknumber = logbooknumber;
	}
	/**
	 * @return the variantseries
	 */
	public String getVariantseries() {
		return variantseries;
	}
	/**
	 * @param variantseries the variantseries to set
	 */
	public void setVariantseries(String variantseries) {
		this.variantseries = variantseries;
	}
	/**
	 * @return the vehiclepurchasedate
	 */
	public String getVehiclepurchasedate() {
		return vehiclepurchasedate;
	}
	/**
	 * @param vehiclepurchasedate the vehiclepurchasedate to set
	 */
	public void setVehiclepurchasedate(String vehiclepurchasedate) {
		this.vehiclepurchasedate = vehiclepurchasedate;
	}
	/**
	 * @return the vehiclemarketvalue
	 */
	public String getVehiclemarketvalue() {
		return vehiclemarketvalue;
	}
	/**
	 * @param vehiclemarketvalue the vehiclemarketvalue to set
	 */
	public void setVehiclemarketvalue(String vehiclemarketvalue) {
		this.vehiclemarketvalue = vehiclemarketvalue;
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
	 * @return the trailersuminsured
	 */
	public String getTrailersuminsured() {
		return trailersuminsured;
	}
	/**
	 * @param trailersuminsured the trailersuminsured to set
	 */
	public void setTrailersuminsured(String trailersuminsured) {
		this.trailersuminsured = trailersuminsured;
	}
	/**
	 * @return the additionalusageid
	 */
	public int getAdditionalusageid() {
		return additionalusageid;
	}
	/**
	 * @param additionalusageid the additionalusageid to set
	 */
	public void setAdditionalusageid(int additionalusageid) {
		this.additionalusageid = additionalusageid;
	}
	/**
	 * @return the additionalusagename
	 */
	public String getAdditionalusagename() {
		return additionalusagename;
	}
	/**
	 * @param additionalusagename the additionalusagename to set
	 */
	public void setAdditionalusagename(String additionalusagename) {
		this.additionalusagename = additionalusagename;
	}
	/**
	 * @return the vehicleusageid
	 */
	public int getVehicleusageid() {
		return vehicleusageid;
	}
	/**
	 * @param vehicleusageid the vehicleusageid to set
	 */
	public void setVehicleusageid(int vehicleusageid) {
		this.vehicleusageid = vehicleusageid;
	}
	/**
	 * @return the vehicleusagename
	 */
	public String getVehicleusagename() {
		return vehicleusagename;
	}
	/**
	 * @param vehicleusagename the vehicleusagename to set
	 */
	public void setVehicleusagename(String vehicleusagename) {
		this.vehicleusagename = vehicleusagename;
	}
	/**
	 * @return the locid
	 */
	public int getLocid() {
		return locid;
	}
	/**
	 * @param locid the locid to set
	 */
	public void setLocid(int locid) {
		this.locid = locid;
	}
	/**
	 * @return the locname
	 */
	public String getLocname() {
		return locname;
	}
	/**
	 * @param locname the locname to set
	 */
	public void setLocname(String locname) {
		this.locname = locname;
	}
	/**
	 * @return the ownershipid
	 */
	public int getOwnershipid() {
		return ownershipid;
	}
	/**
	 * @param ownershipid the ownershipid to set
	 */
	public void setOwnershipid(int ownershipid) {
		this.ownershipid = ownershipid;
	}
	/**
	 * @return the ownershipname
	 */
	public String getOwnershipname() {
		return ownershipname;
	}
	/**
	 * @param ownershipname the ownershipname to set
	 */
	public void setOwnershipname(String ownershipname) {
		this.ownershipname = ownershipname;
	}
	/**
	 * @return the hiretypeid
	 */
	public int getHiretypeid() {
		return hiretypeid;
	}
	/**
	 * @param hiretypeid the hiretypeid to set
	 */
	public void setHiretypeid(int hiretypeid) {
		this.hiretypeid = hiretypeid;
	}
	/**
	 * @return the hiretypename
	 */
	public String getHiretypename() {
		return hiretypename;
	}
	/**
	 * @param hiretypename the hiretypename to set
	 */
	public void setHiretypename(String hiretypename) {
		this.hiretypename = hiretypename;
	}
	/**
	 * @return the classgroupid
	 */
	public int getClassgroupid() {
		return classgroupid;
	}
	/**
	 * @param classgroupid the classgroupid to set
	 */
	public void setClassgroupid(int classgroupid) {
		this.classgroupid = classgroupid;
	}
	/**
	 * @return the classgroupname
	 */
	public String getClassgroupname() {
		return classgroupname;
	}
	/**
	 * @param classgroupname the classgroupname to set
	 */
	public void setClassgroupname(String classgroupname) {
		this.classgroupname = classgroupname;
	}
	/**
	 * @return the coveragetypeid
	 */
	public int getCoveragetypeid() {
		return coveragetypeid;
	}
	/**
	 * @param coveragetypeid the coveragetypeid to set
	 */
	public void setCoveragetypeid(int coveragetypeid) {
		this.coveragetypeid = coveragetypeid;
	}
	/**
	 * @return the coveragetypename
	 */
	public String getCoveragetypename() {
		return coveragetypename;
	}
	/**
	 * @param coveragetypename the coveragetypename to set
	 */
	public void setCoveragetypename(String coveragetypename) {
		this.coveragetypename = coveragetypename;
	}
	/**
	 * @return the covernotetypeid
	 */
	public int getCovernotetypeid() {
		return covernotetypeid;
	}
	/**
	 * @param covernotetypeid the covernotetypeid to set
	 */
	public void setCovernotetypeid(int covernotetypeid) {
		this.covernotetypeid = covernotetypeid;
	}
	/**
	 * @return the covernotetypename
	 */
	public String getCovernotetypename() {
		return covernotetypename;
	}
	/**
	 * @param covernotetypename the covernotetypename to set
	 */
	public void setCovernotetypename(String covernotetypename) {
		this.covernotetypename = covernotetypename;
	}
	/**
	 * @return the classid
	 */
	public int getClassid() {
		return classid;
	}
	/**
	 * @param classid the classid to set
	 */
	public void setClassid(int classid) {
		this.classid = classid;
	}
	/**
	 * @return the classname
	 */
	public String getClassname() {
		return classname;
	}
	/**
	 * @param classname the classname to set
	 */
	public void setClassname(String classname) {
		this.classname = classname;
	}
	
	
	
}
