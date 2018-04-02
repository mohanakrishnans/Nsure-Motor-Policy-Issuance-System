/**
 * 
 */
package com.kgisl.nsure.quotation.dao;

import java.util.List;

import com.kgisl.nsure.quotation.domain.QuotationDO;

/**
 * @author mohan
 *
 */
public interface QuotationDAO {
	public void GetDatabaseTable(QuotationDO quotationDO);

	int GetDatabaseTable(String userName);

	public void CheckUserName(String userName);

	public List<QuotationDO> getcontactType(QuotationDO quotationDO);

	void insert(QuotationDO quotationDO);

	public List<QuotationDO> getsourceType(QuotationDO sourceTypeDO);

	void saveQuotation(QuotationDO quotationDO);

	List<QuotationDO> covernoteGrid(QuotationDO quotationDO);

	List<QuotationDO> namedDriversGrid(QuotationDO quotationDO);

	void saveNamedDrivers(QuotationDO quotationDO);

	List<QuotationDO> extraCoverageGrid(QuotationDO quotationDO);

	void saveExtraCoverage(QuotationDO quotationDO);

	void saveMpa(QuotationDO quotationDO);

}
