/**
 * 
 */
package com.kgisl.nsure.covernote.services;

import java.util.List;

import com.kgisl.nsure.covernote.domain.CovernoteDO;
import com.kgisl.nsure.quotation.domain.QuotationDO;


/**
 * @author mohan
 *
 */

public interface CovernoteService {

	List<CovernoteDO> getCovernoteClass(CovernoteDO covernoteDO);

	List<CovernoteDO> getCovernoteType(CovernoteDO covernoteDO);

	List<CovernoteDO> getCoverageType(CovernoteDO covernoteDO);

	List<CovernoteDO> getClassGroup(CovernoteDO covernoteDO);

	List<CovernoteDO> getHireType(CovernoteDO covernoteDO);

	List<CovernoteDO> getOwnerShipType(CovernoteDO covernoteDO);

	List<CovernoteDO> getLocation(CovernoteDO covernoteDO);

	List<CovernoteDO> getVehicleUsage(CovernoteDO covernoteDO);

	List<CovernoteDO> getAdditionalUsage(CovernoteDO covernoteDO);

	void saveCovernote(CovernoteDO covernoteDO);

	List<CovernoteDO> getCnClass(CovernoteDO covernoteDO);

	List<CovernoteDO> getVehicleBody(CovernoteDO covernoteDO);

	List<CovernoteDO> getVehicleCapacity(CovernoteDO covernoteDO);

	List<CovernoteDO> getPerformanceAesthetic(CovernoteDO covernoteDO);

	List<CovernoteDO> getAntiTheftCode(CovernoteDO covernoteDO);

	List<CovernoteDO> getGaraged(CovernoteDO covernoteDO);

	List<CovernoteDO> getDriverExperience(CovernoteDO covernoteDO);

	List<CovernoteDO> getSafetyCode(CovernoteDO covernoteDO);

	List<CovernoteDO> getFunctionalModification(CovernoteDO covernoteDO);

	List<CovernoteDO> cnoptionGrid(CovernoteDO covernoteDO);

	List<CovernoteDO> cncovernteGrid(CovernoteDO covernoteDO);

	void convertCovernote(CovernoteDO covernoteDO);

	void cancelCovernote(CovernoteDO covernoteDO);

	void savePremium(CovernoteDO covernoteDO); 

	void saveEndorsementDetails(CovernoteDO quotationDO);

	List<CovernoteDO> endorsementfetch(CovernoteDO quotationDO);

}
