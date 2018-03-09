/**
 * 
 */
package com.kgisl.nsure.covernote.dao;

import java.util.List;

import com.kgisl.nsure.covernote.domain.CovernoteDO;
import com.kgisl.nsure.quotation.domain.QuotationDO;

/**
 * @author mohan
 *
 */

public interface CovernoteDAO {

	List<CovernoteDO> getCovernoteClass(CovernoteDO covernoteDO);

	List<CovernoteDO> getCovernoteType(CovernoteDO covernoteDO);

	List<CovernoteDO> getCoverageType(CovernoteDO covernoteDO);

	List<CovernoteDO> getClassGroup(CovernoteDO covernoteDO);

	List<CovernoteDO> getHireType(CovernoteDO covernoteDO);

	List<CovernoteDO> getOwnershipType(CovernoteDO covernoteDO);

	List<CovernoteDO> getLocation(CovernoteDO covernoteDO);

	List<CovernoteDO> getVehicleUsage(CovernoteDO covernoteDO);

	List<CovernoteDO> getAdditionalUsage(CovernoteDO covernoteDO);

	
	
}
