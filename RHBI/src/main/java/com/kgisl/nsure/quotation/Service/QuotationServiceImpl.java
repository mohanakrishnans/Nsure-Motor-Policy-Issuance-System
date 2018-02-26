/**
 * 
 */
package com.kgisl.nsure.quotation.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgisl.nsure.quotation.dao.QuotationDAO;
import com.kgisl.nsure.quotation.domain.QuotationDO;

/**
 * @author mohan
 *
 */
@Service
public class QuotationServiceImpl implements QuotationService {
	
	@Autowired
	QuotationDAO quotationdao; 	
	
	@Override
	public int checkUserName(String userName) {
			System.out.println("Name");
		 return quotationdao.GetDatabaseTable(userName);
	}
	
	//
	@Override
	public List<QuotationDO> getcontactType(QuotationDO quotationDO){
		List<QuotationDO> contactType = null;
		try{
			contactType = quotationdao.getcontactType(quotationDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return contactType;
	}
	
	@Override
	public List<QuotationDO> getcnGrid(QuotationDO quotationDO){
		List<QuotationDO> covernoteGrid = null;
		try{
			covernoteGrid = quotationdao.covernoteGrid(quotationDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return covernoteGrid;
	}
	
	@Override
	public void insert(QuotationDO quotationDO) {
		// TODO Auto-generated method stub
		System.out.println("Serv>");
		//System.out.println(quotationDO.getSourceName().toString());		
		//System.out.println(quotationDO.getContactName().toString());
		quotationdao.insert(quotationDO);
		
		System.out.println("Serv>");
		
	}
	
	@Override
	public void saveQuotation(QuotationDO quotationDO) {
		// TODO Auto-generated method stub
		System.out.println("S>");
		quotationdao.saveQuotation(quotationDO);
		
		System.out.println("S<");
		
	}

	@Override
	public List<QuotationDO> getsourceType(QuotationDO sourceTypeDO) {
		// TODO Auto-generated method stub
		List<QuotationDO> sourceType = null;
		try{
			sourceType = quotationdao.getsourceType(sourceTypeDO);

			//System.out.println(endorCategoryList);
		}catch(Exception e){
			//throw new NsureException(e);
			System.out.println(e);
		}
		return sourceType;
	}

}
