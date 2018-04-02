/**
 * 
 */
package com.kgisl.nsure.covernote.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kgisl.nsure.covernote.dao.CovernoteDAO;
import com.kgisl.nsure.covernote.domain.CovernoteDO;
import com.kgisl.nsure.quotation.domain.QuotationDO;

/**
 * @author mohan
 *
 */
@Service
public class CovernoteServiceImpl implements CovernoteService {
	@Autowired
	CovernoteDAO covernotedao;
	
	@Override
	public List<CovernoteDO> cncovernteGrid(CovernoteDO covernoteDO) {
		// TODO Auto-generated method stub
		List<CovernoteDO> cnoption = null;
		try{
			cnoption = covernotedao.cncovernteGrid(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return cnoption;
	}
	@Override
	public List<CovernoteDO> cnoptionGrid(CovernoteDO covernoteDO) {
		// TODO Auto-generated method stub
		List<CovernoteDO> cnoption = null;
		try{
			cnoption = covernotedao.cnoptionGrid(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return cnoption;
	}
	@Override
	public void saveCovernote(CovernoteDO covernoteDO) {
		// TODO Auto-generated method stub
		//System.out.println("S>");
		covernotedao.saveCovernote(covernoteDO);
		
		//System.out.println("S<");
		
	}
	@Override
	public void convertCovernote(CovernoteDO covernoteDO) {
		// TODO Auto-generated method stub
		//System.out.println("S>");
		covernotedao.convertCovernote(covernoteDO);
		
		//System.out.println("S<");
		
	}
	@Override
	public void cancelCovernote(CovernoteDO covernoteDO) {
		// TODO Auto-generated method stub
		//System.out.println("S>");
		covernotedao.cancelCovernote(covernoteDO);
		
		//System.out.println("S<");
		
	}
	/*COVERNOTE CLASS*/
	@Override
	public List<CovernoteDO> getCovernoteClass(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getCovernoteClass(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*VEHICLEBODY CLASS*/
	@Override
	public List<CovernoteDO> getVehicleBody(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getVehicleBody(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	
	/*CN CLASS*/
	@Override
	public List<CovernoteDO> getCnClass(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getCNclass(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*CN CLASS*/
	@Override
	public List<CovernoteDO> getSafetyCode(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getSafetyCode(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*Functional Modification*/
	@Override
	public List<CovernoteDO> getFunctionalModification(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getFunctionalModification(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*CN CLASS*/
	@Override
	public List<CovernoteDO> getDriverExperience(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getDriverExperience(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*CN CLASS*/
	@Override
	public List<CovernoteDO> getGaraged(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getGaraged(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*CN CLASS*/
	@Override
	public List<CovernoteDO> getAntiTheftCode(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getAntiTheftCode(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*CN CLASS*/
	@Override
	public List<CovernoteDO> getPerformanceAesthetic(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getPerformanceAesthetic(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*CN CLASS*/
	@Override
	public List<CovernoteDO> getVehicleCapacity(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getVehicleCapacity(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	
	/*COVERNOTE TYPE*/
	@Override
	public List<CovernoteDO> getCovernoteType(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getCovernoteType(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*COVERAGE TYPE*/
	@Override
	public List<CovernoteDO> getCoverageType(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getCoverageType(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);getClassGroup
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*CLASS GROUP*/ 
	@Override
	public List<CovernoteDO> getClassGroup(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getClassGroup(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	
	/*HIRE TYPE*/
	@Override
	public List<CovernoteDO> getHireType(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getHireType(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*OWNERSHIP TYPE*/
	@Override
	public List<CovernoteDO> getOwnerShipType(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getOwnershipType(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*GEOGRAPHICAL LOCATION*/
	@Override
	public List<CovernoteDO> getLocation(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getLocation(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*VEHICLE USAGE*/
	@Override
	public List<CovernoteDO> getVehicleUsage(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getVehicleUsage(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}
	/*ADDITIONAL USAGE*/
	@Override
	public List<CovernoteDO> getAdditionalUsage(CovernoteDO covernoteDO){
		List<CovernoteDO> covernoteclass = null;
		try{
			covernoteclass = covernotedao.getAdditionalUsage(covernoteDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteclass;
	}

	 
}
