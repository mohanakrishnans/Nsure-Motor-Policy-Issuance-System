/**
 * 
 */
package com.kgisl.nsure.quotation.Service;

import java.util.List;

import com.kgisl.nsure.quotation.domain.*;

/**
 * @author mohan
 *
 */
public interface QuotationService {
	int checkUserName(String userName);

	public List<QuotationDO> getcontactType(QuotationDO quotationDO);

	void insert(QuotationDO quotationDO);

	public List<QuotationDO> getsourceType(QuotationDO sourceTypeDO);

	void saveQuotation(QuotationDO quotationDO);

	List<QuotationDO> getcnGrid(QuotationDO quotationDO);

}
