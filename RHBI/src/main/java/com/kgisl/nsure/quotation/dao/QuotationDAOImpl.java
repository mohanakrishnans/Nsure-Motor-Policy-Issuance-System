
/**
 * 
 */
package com.kgisl.nsure.quotation.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.kgisl.nsure.quotation.domain.QuotationDO;
import oracle.jdbc.internal.OracleTypes;

/**
 * @author mohan
 *
 */
@Service
@Transactional
public class QuotationDAOImpl implements QuotationDAO {

	@Autowired
	DataSource dataSource;

	private JdbcTemplate jdbcTemplate;

	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
		namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}

	@Override
	public int GetDatabaseTable(String userName) {
		Integer num;
		num = new Integer(10);

		try {
			System.out.println("****test init****");
			String sql = "SELECT * FROM EIS_MST_OTS_CONTACT_TYPE";
			List<Map<String, Object>> customers = jdbcTemplate.queryForList(sql);
		} catch (Exception e) {
			System.out.println(e + "AA");
		}
		return num;
	}
	@Override
	public List<QuotationDO> getreport(QuotationDO quotationDO) {
		List<QuotationDO> covernoteGrid = null;
		try {
			String SQL = null;
			SQL = "SELECT * FROM EIS_TRN_QUOTATION";

			covernoteGrid = jdbcTemplate.query(SQL, new RowMapper<QuotationDO>() {
				@Override
				public QuotationDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					QuotationDO quotationDO = new QuotationDO();

					quotationDO.setQuotationID(rs.getInt("NUM_QUOTATION_ID"));
					quotationDO.setAccountCode(rs.getInt("VCH_ACCOUNT_CODE"));
					quotationDO.setAccountName(rs.getString("VCH_ACCOUNT_NAME"));
					quotationDO.setDateOfBirth(rs.getString("DTT_DATE_OF_BIRTH"));
					quotationDO.setAddress(rs.getString("VCH_ADDRESS"));
					quotationDO.setBranch(rs.getString("VCH_BRANCH"));
					quotationDO.setBusinessRegNo(rs.getInt("VCH_BUSINESS_REGISTRATION_NO"));
					quotationDO.setContactType(rs.getInt("VCH_CONTACT_TYPE"));
					quotationDO.setCountryCode(rs.getString("VCH_COUNTRY_CODE"));
					quotationDO.setCss(rs.getString("VCH_CSS"));
					quotationDO.setGender(rs.getString("VCH_GENDER"));
					quotationDO.setGstRegistered(rs.getString("VCH_GST_REGISTERED"));
					quotationDO.setMaritalStatus(rs.getString("VCH_MARITAL_STATUS"));
					quotationDO.setMobileNo(rs.getString("VCH_MOBILE_NO"));
					quotationDO.setName(rs.getString("VCH_NAME"));
					quotationDO.setNationality(rs.getString("VCH_NATIONALITY"));
					quotationDO.setNewIcNo(rs.getLong("VCH_NEW_IC_NO"));
					quotationDO.setOccupation(rs.getString("VCH_OCCUPATION"));
					quotationDO.setPdpa(rs.getString("VCH_PDPA"));
					quotationDO.setPostCode(rs.getString("VCH_POST_CODE"));
					quotationDO.setRace(rs.getString("VCH_RACE"));
					quotationDO.setSourceType(rs.getInt("VCH_SOURCE_TYPE"));
					quotationDO.setTypeOfBusiness(rs.getString("VCH_TYPE_OF_BUSINESS"));

					return quotationDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteGrid;
	}
	/*** COVERNOTE GRID ***//*
	@Override
	public List<QuotationDO> covernoteGrid(QuotationDO quotationDO) {
		List<QuotationDO> covernoteGrid = null;
		try {
			String SQL = null;
			SQL = "SELECT * FROM EIS_TRN_QUOTATION";

			covernoteGrid = jdbcTemplate.query(SQL, new RowMapper<QuotationDO>() {
				@Override
				public QuotationDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					QuotationDO quotationDO = new QuotationDO();

					quotationDO.setQuotationID(rs.getInt("NUM_QUOTATION_ID"));
					quotationDO.setAccountCode(rs.getInt("VCH_ACCOUNT_CODE"));
					quotationDO.setAccountName(rs.getString("VCH_ACCOUNT_NAME"));
					quotationDO.setDateOfBirth(rs.getString("DTT_DATE_OF_BIRTH"));
					quotationDO.setAddress(rs.getString("VCH_ADDRESS"));
					quotationDO.setBranch(rs.getString("VCH_BRANCH"));
					quotationDO.setBusinessRegNo(rs.getInt("VCH_BUSINESS_REGISTRATION_NO"));
					quotationDO.setContactType(rs.getInt("VCH_CONTACT_TYPE"));
					quotationDO.setCountryCode(rs.getString("VCH_COUNTRY_CODE"));
					quotationDO.setCss(rs.getString("VCH_CSS"));
					quotationDO.setGender(rs.getString("VCH_GENDER"));
					quotationDO.setGstRegistered(rs.getString("VCH_GST_REGISTERED"));
					quotationDO.setMaritalStatus(rs.getString("VCH_MARITAL_STATUS"));
					quotationDO.setMobileNo(rs.getString("VCH_MOBILE_NO"));
					quotationDO.setName(rs.getString("VCH_NAME"));
					quotationDO.setNationality(rs.getString("VCH_NATIONALITY"));
					quotationDO.setNewIcNo(rs.getLong("VCH_NEW_IC_NO"));
					quotationDO.setOccupation(rs.getString("VCH_OCCUPATION"));
					quotationDO.setPdpa(rs.getString("VCH_PDPA"));
					quotationDO.setPostCode(rs.getString("VCH_POST_CODE"));
					quotationDO.setRace(rs.getString("VCH_RACE"));
					quotationDO.setSourceType(rs.getInt("VCH_SOURCE_TYPE"));
					quotationDO.setTypeOfBusiness(rs.getString("VCH_TYPE_OF_BUSINESS"));

					return quotationDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteGrid;
	}*/
	/*** COVERNOTE GRID ***/
	@Override
	public List<QuotationDO> covernoteGrid(QuotationDO quotationDO) {
		List<QuotationDO> covernoteGrid = null;
		try {
			String SQL = null;
			int ID=73;
			SQL = "SELECT * FROM EIS_TRN_QUOTATION WHERE NUM_QUOTATION_ID='"+ID+"'";

			covernoteGrid = jdbcTemplate.query(SQL, new RowMapper<QuotationDO>() {
				@Override
				public QuotationDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					QuotationDO quotationDO = new QuotationDO();

					quotationDO.setQuotationID(rs.getInt("NUM_QUOTATION_ID"));
					quotationDO.setAccountCode(rs.getInt("VCH_ACCOUNT_CODE"));
					quotationDO.setAccountName(rs.getString("VCH_ACCOUNT_NAME"));
					quotationDO.setDateOfBirth(rs.getString("DTT_DATE_OF_BIRTH"));
					quotationDO.setAddress(rs.getString("VCH_ADDRESS"));
					quotationDO.setBranch(rs.getString("VCH_BRANCH"));
					quotationDO.setBusinessRegNo(rs.getInt("VCH_BUSINESS_REGISTRATION_NO"));
					quotationDO.setContactType(rs.getInt("VCH_CONTACT_TYPE"));
					quotationDO.setCountryCode(rs.getString("VCH_COUNTRY_CODE"));
					quotationDO.setCss(rs.getString("VCH_CSS"));
					quotationDO.setGender(rs.getString("VCH_GENDER"));
					quotationDO.setGstRegistered(rs.getString("VCH_GST_REGISTERED"));
					quotationDO.setMaritalStatus(rs.getString("VCH_MARITAL_STATUS"));
					quotationDO.setMobileNo(rs.getString("VCH_MOBILE_NO"));
					quotationDO.setName(rs.getString("VCH_NAME"));
					quotationDO.setNationality(rs.getString("VCH_NATIONALITY"));
					quotationDO.setNewIcNo(rs.getLong("VCH_NEW_IC_NO"));
					quotationDO.setOccupation(rs.getString("VCH_OCCUPATION"));
					quotationDO.setPdpa(rs.getString("VCH_PDPA"));
					quotationDO.setPostCode(rs.getString("VCH_POST_CODE"));
					quotationDO.setRace(rs.getString("VCH_RACE"));
					quotationDO.setSourceType(rs.getInt("VCH_SOURCE_TYPE"));
					quotationDO.setGstregistrationno(rs.getString("NUM_GST_REGISTRATION_NO"));
					quotationDO.setGstregistrationdate(rs.getString("DTT_GST_REGISTRATION_DATE"));
					quotationDO.setGstexpirydate(rs.getString("DTT_GST_EXPIRY_DATE"));
					quotationDO.setWebsite(rs.getString("VCH_WEBSITE"));
					quotationDO.setTrafficviolation(rs.getString("VCH_TRAFFIC_VIOLATION"));
					quotationDO.setEmail(rs.getString("VCH_EMAIL"));
					quotationDO.setVipstatus(rs.getString("VCH_VIP_STATUS"));
					quotationDO.setPermanentaddress(rs.getString("VCH_PERMANENT_ADDRESS"));
					quotationDO.setStatecountry(rs.getString("VCH_STATE_COUNTRY"));
					quotationDO.setTelnohouse(rs.getString("VCH_TEL_NO_HOUSE"));
					quotationDO.setTelnooffice(rs.getString("VCH_TEL_NO_OFFICE"));
					quotationDO.setFaxnohouse(rs.getString("VCH_FAX_NO_HOUSE"));
					quotationDO.setFaxnooffice(rs.getString("VCH_FAX_NO_OFFICE"));
					quotationDO.setRemarks(rs.getString("VCH_REMARKS"));
					quotationDO.setDatasignedcustomer(rs.getString("VCH_DATA_SIGNED_CUSTOMER"));
					quotationDO.setCrosssignedcustomer(rs.getString("VCH_CROSS_SIGNED_CUSTOMER"));
					quotationDO.setOldicpassportno(rs.getString("VCH_OLD_IC_PASSPORT_NO"));
					quotationDO.setSalutation(rs.getString("VCH_SALUTATION"));
					quotationDO.setAge(rs.getString("NUM_AGE"));
					quotationDO.setEmployementstatus(rs.getString("VCH_EMPLOYEMENT_STATUS"));
					quotationDO.setTypeOfBusiness(rs.getString("VCH_TYPE_OF_BUSINESS"));					
					

					return quotationDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteGrid;
	}


	/*** NAMED DRIVERS ***/
	@Override
	public List<QuotationDO> namedDriversGrid(QuotationDO quotationDO) {
		List<QuotationDO> covernoteGrid = null;
		try {
			String SQL = null;
			SQL = "SELECT * FROM EIS_TRN_NAMED_DRIVERS";

			covernoteGrid = jdbcTemplate.query(SQL, new RowMapper<QuotationDO>() {
				@Override
				public QuotationDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					QuotationDO quotationDO = new QuotationDO();

					quotationDO.setNameddriversno(rs.getInt("NUM_S_NO"));
					quotationDO.setNameddrivername(rs.getString("VCH_NAME"));
					quotationDO.setNamednewicno(rs.getString("NUM_NEW_IC_NO"));
					quotationDO.setNamedoldicno(rs.getString("NUM_OLD_IC_NO"));
					quotationDO.setNameddriverrelationship(rs.getString("VCH_RELATIONSHIP"));
					quotationDO.setNamedgender(rs.getString("VCH_GENDER"));
					quotationDO.setNamedage(rs.getInt("NUM_AGE"));
					quotationDO.setNameddriverexperience(rs.getString("VCH_DRIVER_EXPERIENCE"));

					return quotationDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteGrid;
	}
	
	/*** NAMED DRIVERS ***/
	@Override
	public List<QuotationDO> extraCoverageGrid(QuotationDO quotationDO) {
		List<QuotationDO> covernoteGrid = null;
		try {
			String SQL = null;
			SQL = "SELECT * FROM EIS_TRN_EXTRA_COVERAGE";

			covernoteGrid = jdbcTemplate.query(SQL, new RowMapper<QuotationDO>() {
				@Override
				public QuotationDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					QuotationDO quotationDO = new QuotationDO();

					quotationDO.setExtracoverageid(rs.getInt("NUM_EXTRA_COVERAGE_ID"));
					quotationDO.setSuminsured(rs.getString("VCH_SUM_INSURED"));
					quotationDO.setExtracoveragerate(rs.getString("VCH_EXTRA_COVERAGE_RATE"));
					quotationDO.setExtracoveragepremium(rs.getString("VCH_EXTRA_COVERAGE_PREMIUM"));
					quotationDO.setExtracoverageclass(rs.getString("VCH_EXTRA_COVERAGE_CLASS"));
					quotationDO.setCartdays(rs.getString("VCH_CART_DAYS"));
					quotationDO.setCartamount(rs.getString("VCH_CART_AMOUNT"));

					return quotationDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteGrid;
	}

	/*** CONTACT TYPE ***/
	@Override
	public List<QuotationDO> getcontactType(QuotationDO quotationDO) {
		List<QuotationDO> contactType = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_CONTACT_TYPE";
			contactType = jdbcTemplate.query(finalSQL, new RowMapper<QuotationDO>() {
				@Override
				public QuotationDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					QuotationDO quotationDO = new QuotationDO();
					quotationDO.setContactType(rs.getInt("NUM_CONTACT_ID"));
					quotationDO.setContactName(rs.getString("VCH_CONTACT_NAME"));
					return quotationDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return contactType;
	}

	/*** SOURCE TYPE ***/
	@Override
	public List<QuotationDO> getsourceType(QuotationDO sourceTypeDO) {
		List<QuotationDO> contactType = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT NUM_SOURCE_TYPE_ID,VCH_SOURCE_NAME FROM EIS_MST_OTS_SOURCE_TYPE";
			contactType = jdbcTemplate.query(finalSQL, new RowMapper<QuotationDO>() {
				@Override
				public QuotationDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					QuotationDO sourceTypeDO = new QuotationDO();
					sourceTypeDO.setSourceType(rs.getInt("NUM_SOURCE_TYPE_ID"));
					sourceTypeDO.setSourceName(rs.getString("VCH_SOURCE_NAME"));
					return sourceTypeDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return contactType;
	}

	/* Named Drivers Save */
	@Override
	public void saveNamedDrivers(QuotationDO quotationDO) {
		// TODO Auto-generated method stub
		try {
			
			 System.out.println(" 11111");
			

			SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(dataSource);
			simpleJdbcCall.withCatalogName("NAMED_DRIVER_SAVE").withProcedureName("PR_NAMED_DRIVER_SAVE")
					.withoutProcedureColumnMetaDataAccess()
					.declareParameters(new SqlParameter("P_VCH_NAME", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_NEW_IC_NO", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_OLD_IC_NO", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_GENDER", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_RELATIONSHIP", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_AGE", OracleTypes.NUMBER),
							new SqlParameter("P_VCH_DRIVER_EXPERIENCE", OracleTypes.VARCHAR));

			SqlParameterSource inputParams = new MapSqlParameterSource()
					.addValue("P_VCH_NAME", quotationDO.getNameddrivername())
					.addValue("P_NUM_NEW_IC_NO", quotationDO.getNamednewicno())
					.addValue("P_NUM_OLD_IC_NO", quotationDO.getNamedoldicno())
					.addValue("P_VCH_GENDER", quotationDO.getNamedgender())
					.addValue("P_VCH_RELATIONSHIP", quotationDO.getNameddriverrelationship())
					.addValue("P_NUM_AGE", quotationDO.getNamedage())
					.addValue("P_VCH_DRIVER_EXPERIENCE", quotationDO.getNameddriverexperience());
											
			Map<String, Object> transactionStatus = simpleJdbcCall.execute(inputParams);

		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	/* MPA Save */
	@Override
	public void saveMpa(QuotationDO quotationDO) {
		// TODO Auto-generated method stub
		try {
			
			 System.out.println(" 11111");
			

			SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(dataSource);
			simpleJdbcCall.withCatalogName("MPA_SAVE").withProcedureName("PR_MPA_SAVE")
					.withoutProcedureColumnMetaDataAccess()
					.declareParameters(new SqlParameter("VCH_SELECT_PLAN", OracleTypes.VARCHAR),
							new SqlParameter("VCH_NUMBER_OF_PASSENGER", OracleTypes.VARCHAR),
							new SqlParameter("VCH_MPA_PREMIUM", OracleTypes.VARCHAR));

			SqlParameterSource inputParams = new MapSqlParameterSource()
					.addValue("VCH_SELECT_PLAN", quotationDO.getSelectplan())
					.addValue("VCH_NUMBER_OF_PASSENGER", quotationDO.getNoofpassengers())
					.addValue("VCH_MPA_PREMIUM", quotationDO.getMpapremium());
											
			Map<String, Object> transactionStatus = simpleJdbcCall.execute(inputParams);

		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	/* Extra Coverage Save */
	@Override
	public void saveExtraCoverage(QuotationDO quotationDO) {
		// TODO Auto-generated method stub
		try {			
			 System.out.println(" 11111");		

			SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(dataSource);
			simpleJdbcCall.withCatalogName("EXTRA_COVERAGE_SAVE").withProcedureName("PR_EXTRA_COVERAGE_SAVE")
					.withoutProcedureColumnMetaDataAccess()
					.declareParameters(new SqlParameter("P_VCH_CART_AMOUNT", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_SUM_INSURED", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_EXTRA_COVERAGE_RATE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_EXTRA_COVERAGE_PREMIUM", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_EXTRA_COVERAGE_CLASS", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_CART_DAYS", OracleTypes.VARCHAR));

			SqlParameterSource inputParams = new MapSqlParameterSource()
					.addValue("P_VCH_CART_AMOUNT", quotationDO.getCartamount())
					.addValue("P_VCH_SUM_INSURED", quotationDO.getSuminsured())
					.addValue("P_VCH_EXTRA_COVERAGE_RATE", quotationDO.getExtracoveragerate())
					.addValue("P_VCH_EXTRA_COVERAGE_PREMIUM", quotationDO.getExtracoveragepremium())
					.addValue("P_VCH_EXTRA_COVERAGE_CLASS", quotationDO.getExtracoverageclass())
					.addValue("P_VCH_CART_DAYS", quotationDO.getCartdays());
											
			Map<String, Object> transactionStatus = simpleJdbcCall.execute(inputParams);

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	/* Quotation Save */
	@Override
	public void saveQuotation(QuotationDO quotationDO) {

		try {
			 

				/*System.out.println("P_VCH_SOURCE_TYPE"+ quotationDO.getSourceType());
				System.out.println("P_VCH_ACCOUNT_CODE"+ quotationDO.getAccountCode());
				System.out.println("P_VCH_BRANCH"+ quotationDO.getBranch());
				System.out.println("P_VCH_ACCOUNT_NAME"+ quotationDO.getAccountName());
				System.out.println("P_VCH_CONTACT_TYPE"+ quotationDO.getContactType());
				System.out.println("P_VCH_NEW_IC_NO"+ quotationDO.getNewIcNo());
				System.out.println("P_VCH_BUSINESS_REGISTRATION_NO"+ quotationDO.getBusinessRegNo());
				System.out.println("P_VCH_NAME"+ quotationDO.getName());
				System.out.println("P_VCH_NATIONALITY"+ quotationDO.getNationality());
				System.out.println("P_VCH_RACE"+ quotationDO.getRace());
				System.out.println("P_DTT_DATE_OF_BIRTH"+ quotationDO.getDateOfBirth());
				System.out.println("P_VCH_GENDER"+ quotationDO.getGender());
				System.out.println("P_VCH_MARITAL_STATUS"+ quotationDO.getMaritalStatus());
				System.out.println("P_VCH_OCCUPATION"+ quotationDO.getOccupation());
				System.out.println("P_VCH_GST_REGISTERED"+ quotationDO.getGstRegistered());
				System.out.println("P_VCH_ADDRESS"+ quotationDO.getAddress());
				System.out.println("P_VCH_POST_CODE"+ quotationDO.getPostCode());
				System.out.println("P_VCH_COUNTRY_CODE"+ quotationDO.getCountryCode());
				System.out.println("P_VCH_MOBILE_NO"+ quotationDO.getMobileNo());
				System.out.println("P_VCH_PDPA"+ quotationDO.getPdpa());
				System.out.println("P_VCH_CSS"+ quotationDO.getCss());
				System.out.println("P_VCH_TYPE_OF_BUSINESS"+ quotationDO.getTypeOfBusiness());							
				System.out.println("P_NUM_GST_REGISTRATION_NO"+ quotationDO.getGstregistrationno());
				System.out.println("P_DTT_GST_REGISTRATION_DATE"+ quotationDO.getGstregistrationdate());
				System.out.println("P_DTT_GST_EXPIRY_DATE"+ quotationDO.getGstexpirydate());
				System.out.println("P_VCH_WEBSITE"+ quotationDO.getWebsite());
				System.out.println("P_VCH_TRAFFIC_VIOLATION"+ quotationDO.getTrafficviolation());
				System.out.println("P_VCH_EMAIL"+ quotationDO.getEmail());
				System.out.println("P_VCH_VIP_STATUS"+ quotationDO.getVipstatus());
				System.out.println("P_VCH_STATE_COUNTRY"+ quotationDO.getStatecountry());
				System.out.println("P_VCH_TEL_NO_HOUSE"+ quotationDO.getTelnohouse());
				System.out.println("P_VCH_TEL_NO_OFFICE"+ quotationDO.getTelnooffice());
				System.out.println("P_VCH_FAX_NO_HOUSE"+ quotationDO.getFaxnohouse());
				System.out.println("P_VCH_FAX_NO_OFFICE"+ quotationDO.getFaxnooffice());
				System.out.println("P_VCH_REMARKS"+ quotationDO.getRemarks());
				System.out.println("P_VCH_DATA_SIGNED_CUSTOMER"+ quotationDO.getDatasignedcustomer());
				System.out.println("P_VCH_CROSS_SIGNED_CUSTOMER"+ quotationDO.getCrosssignedcustomer());
				System.out.println("P_VCH_OLD_IC_PASSPORT_NO"+ quotationDO.getOldicpassportno());
				System.out.println("P_VCH_SALUTATION"+ quotationDO.getSalutation());
				System.out.println("P_NUM_AGE"+ quotationDO.getAge());
				System.out.println("P_VCH_EMPLOYEMENT_STATUS"+ quotationDO.getEmployementstatus());*/
			// System.out.println("DAO>");

			SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(dataSource);
			simpleJdbcCall.withCatalogName("QUOTATION_SAVE").withProcedureName("PR_QUOTATION_SAVE")
					.withoutProcedureColumnMetaDataAccess()
					.declareParameters(new SqlParameter("P_VCH_SOURCE_TYPE", OracleTypes.NUMBER),
							new SqlParameter("P_VCH_ACCOUNT_CODE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_BRANCH", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_ACCOUNT_NAME", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_CONTACT_TYPE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_NEW_IC_NO", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_BUSINESS_REGISTRATION_NO", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_NAME", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_NATIONALITY", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_RACE", OracleTypes.VARCHAR),
							new SqlParameter("P_DTT_DATE_OF_BIRTH", OracleTypes.DATE),
							new SqlParameter("P_VCH_GENDER", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_MARITAL_STATUS", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_OCCUPATION", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_GST_REGISTERED", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_ADDRESS", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_POST_CODE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_COUNTRY_CODE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_MOBILE_NO", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_PDPA", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_CSS", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_TYPE_OF_BUSINESS", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_GST_REGISTRATION_NO", OracleTypes.NUMBER),
							new SqlParameter("P_DTT_GST_REGISTRATION_DATE", OracleTypes.DATE),
							new SqlParameter("P_DTT_GST_EXPIRY_DATE", OracleTypes.DATE),
							new SqlParameter("P_VCH_WEBSITE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_TRAFFIC_VIOLATION", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_EMAIL", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_VIP_STATUS", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_STATE_COUNTRY", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_TEL_NO_HOUSE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_TEL_NO_OFFICE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_FAX_NO_HOUSE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_FAX_NO_OFFICE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_REMARKS", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_DATA_SIGNED_CUSTOMER", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_CROSS_SIGNED_CUSTOMER", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_OLD_IC_PASSPORT_NO", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_SALUTATION", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_AGE", OracleTypes.NUMBER),
							new SqlParameter("P_VCH_EMPLOYEMENT_STATUS", OracleTypes.VARCHAR)
							
							
							);

			SqlParameterSource inputParams = new MapSqlParameterSource()
					.addValue("P_VCH_SOURCE_TYPE", quotationDO.getSourceType())
					.addValue("P_VCH_ACCOUNT_CODE", quotationDO.getAccountCode())
					.addValue("P_VCH_BRANCH", quotationDO.getBranch())
					.addValue("P_VCH_ACCOUNT_NAME", quotationDO.getAccountName())
					.addValue("P_VCH_CONTACT_TYPE", quotationDO.getContactType())
					.addValue("P_VCH_NEW_IC_NO", quotationDO.getNewIcNo())
					.addValue("P_VCH_BUSINESS_REGISTRATION_NO", quotationDO.getBusinessRegNo())
					.addValue("P_VCH_NAME", quotationDO.getName())
					.addValue("P_VCH_NATIONALITY", quotationDO.getNationality())
					.addValue("P_VCH_RACE", quotationDO.getRace())
					.addValue("P_DTT_DATE_OF_BIRTH", quotationDO.getDateOfBirth())
					.addValue("P_VCH_GENDER", quotationDO.getGender())
					.addValue("P_VCH_MARITAL_STATUS", quotationDO.getMaritalStatus())
					.addValue("P_VCH_OCCUPATION", quotationDO.getOccupation())
					.addValue("P_VCH_GST_REGISTERED", quotationDO.getGstRegistered())
					.addValue("P_VCH_ADDRESS", quotationDO.getAddress())
					.addValue("P_VCH_POST_CODE", quotationDO.getPostCode())
					.addValue("P_VCH_COUNTRY_CODE", quotationDO.getCountryCode())
					.addValue("P_VCH_MOBILE_NO", quotationDO.getMobileNo())
					.addValue("P_VCH_PDPA", quotationDO.getPdpa())
					.addValue("P_VCH_CSS", quotationDO.getCss())
					.addValue("P_VCH_TYPE_OF_BUSINESS", quotationDO.getTypeOfBusiness())							
					.addValue("P_NUM_GST_REGISTRATION_NO", quotationDO.getGstregistrationno())
					.addValue("P_DTT_GST_REGISTRATION_DATE", quotationDO.getGstregistrationdate())
					.addValue("P_DTT_GST_EXPIRY_DATE", quotationDO.getGstexpirydate())
					.addValue("P_VCH_WEBSITE", quotationDO.getWebsite())
					.addValue("P_VCH_TRAFFIC_VIOLATION", quotationDO.getTrafficviolation())
					.addValue("P_VCH_EMAIL", quotationDO.getEmail())
					.addValue("P_VCH_VIP_STATUS", quotationDO.getVipstatus())
					.addValue("P_VCH_STATE_COUNTRY", quotationDO.getStatecountry())
					.addValue("P_VCH_TEL_NO_HOUSE", quotationDO.getTelnohouse())
					.addValue("P_VCH_TEL_NO_OFFICE", quotationDO.getTelnooffice())
					.addValue("P_VCH_FAX_NO_HOUSE", quotationDO.getFaxnohouse())
					.addValue("P_VCH_FAX_NO_OFFICE", quotationDO.getFaxnooffice())
					.addValue("P_VCH_REMARKS", quotationDO.getRemarks())
					.addValue("P_VCH_DATA_SIGNED_CUSTOMER", quotationDO.getDatasignedcustomer())
					.addValue("P_VCH_CROSS_SIGNED_CUSTOMER", quotationDO.getCrosssignedcustomer())
					.addValue("P_VCH_OLD_IC_PASSPORT_NO", quotationDO.getOldicpassportno())
					.addValue("P_VCH_SALUTATION", quotationDO.getSalutation())
					.addValue("P_NUM_AGE", quotationDO.getAge())
					.addValue("P_VCH_EMPLOYEMENT_STATUS", quotationDO.getEmployementstatus()
							);

			Map<String, Object> transactionStatus = simpleJdbcCall.execute(inputParams);

		} catch (Exception e) {
			System.out.println(e);
		}
		// System.out.println("DAO<");
	}

	@Override
	public void insert(QuotationDO quotationDO) {
		// TODO Auto-generated method stub
		// System.out.println(quotationDO.getName()+" mohn");

		// System.out.println(" 11111"+quotationDO.getContactName());
		// quotationDO.getContactName();
		try {
			System.out.println(quotationDO.getName() + "1222");
			// System.out.println("DAO>");

			SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(dataSource);
			simpleJdbcCall.withCatalogName("PKG_MOTOR_SAVE").withProcedureName("PRSAVECOVERNOTE")
					.withoutProcedureColumnMetaDataAccess()
					.declareParameters(new SqlParameter("P_NUM_ID", OracleTypes.NUMBER),
							new SqlParameter("P_VCH_NAME", OracleTypes.VARCHAR));

			SqlParameterSource inputParams = new MapSqlParameterSource()
					.addValue("P_NUM_ID", quotationDO.getContactType()).addValue("P_VCH_NAME", quotationDO.getName());

			// System.out.println(quotationDO.getName()+" 11111");
			Map<String, Object> transactionStatus = simpleJdbcCall.execute(inputParams);

		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println("DAO<");
	}

	@Override
	public void GetDatabaseTable(QuotationDO quotationDO) {
		// TODO Auto-generated method stub

	}

	@Override
	public void CheckUserName(String userName) {
		// TODO Auto-generated method stub

	}

}
