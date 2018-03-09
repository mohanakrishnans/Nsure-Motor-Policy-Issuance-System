/**
 * 
 */
package com.kgisl.nsure.covernote.services;

import java.util.List;

import com.kgisl.nsure.covernote.domain.CovernoteDO;

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

}
