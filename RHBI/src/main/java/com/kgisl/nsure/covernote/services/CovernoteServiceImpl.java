/**
 * 
 */
package com.kgisl.nsure.covernote.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.kgisl.nsure.covernote.dao.CovernoteDAO;
import com.kgisl.nsure.covernote.domain.CovernoteDO;

/**
 * @author mohan
 *
 */
@Service
public class CovernoteServiceImpl implements CovernoteService {
	@Autowired
	CovernoteDAO covernotedao;
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
}
