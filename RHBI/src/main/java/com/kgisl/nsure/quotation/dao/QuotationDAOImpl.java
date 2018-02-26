
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

	/*** COVERNOTE GRID ***/
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
					quotationDO.setBusinessRegNo(rs.getLong("VCH_BUSINESS_REGISTRATION_NO"));
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

	@Override
	public void saveQuotation(QuotationDO quotationDO) {
		// TODO Auto-generated method stub
		// System.out.println(quotationDO.getName()+" mohn");

		// System.out.println(" 11111"+quotationDO.getContactName());
		// quotationDO.getContactName();

		try {
			Date DateOfBirth = null;

			if (quotationDO.getDateOfBirth() != null) {
				String dob = quotationDO.getDateOfBirth();
				DateOfBirth = new SimpleDateFormat("dd-MM-yyyy").parse(dob);
			}

			System.out.println(quotationDO.getSourceType() + " " + quotationDO.getAccountCode() + " "
					+ quotationDO.getBranch() + " " + quotationDO.getAccountName() + " " + quotationDO.getContactType()
					+ " " + quotationDO.getNewIcNo() + " " + quotationDO.getBusinessRegNo() + " "
					+ quotationDO.getName() + " " + quotationDO.getNationality() + " " + quotationDO.getRace() + " "
					+ DateOfBirth + " " + quotationDO.getGender() + " " + quotationDO.getMaritalStatus() + " "
					+ quotationDO.getOccupation() + " " + quotationDO.getGstRegistered() + " "
					+ quotationDO.getAddress() + " " + quotationDO.getPostCode() + " " + quotationDO.getCountryCode()
					+ " " + quotationDO.getMobileNo() + " " + quotationDO.getPdpa() + " " + quotationDO.getCss() + " "
					+ quotationDO.getTypeOfBusiness() + " ");
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
							new SqlParameter("P_VCH_TYPE_OF_BUSINESS", OracleTypes.VARCHAR));

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
					.addValue("P_VCH_RACE", quotationDO.getRace()).addValue("P_DTT_DATE_OF_BIRTH", DateOfBirth)
					.addValue("P_VCH_GENDER", quotationDO.getGender())
					.addValue("P_VCH_MARITAL_STATUS", quotationDO.getMaritalStatus())
					.addValue("P_VCH_OCCUPATION", quotationDO.getOccupation())
					.addValue("P_VCH_GST_REGISTERED", quotationDO.getGstRegistered())
					.addValue("P_VCH_ADDRESS", quotationDO.getAddress())
					.addValue("P_VCH_POST_CODE", quotationDO.getPostCode())
					.addValue("P_VCH_COUNTRY_CODE", quotationDO.getCountryCode())
					.addValue("P_VCH_MOBILE_NO", quotationDO.getMobileNo())
					.addValue("P_VCH_PDPA", quotationDO.getPdpa()).addValue("P_VCH_CSS", quotationDO.getCss())
					.addValue("P_VCH_TYPE_OF_BUSINESS", quotationDO.getTypeOfBusiness());

			Map<String, Object> transactionStatus = simpleJdbcCall.execute(inputParams);

		} catch (Exception e) {
			System.out.println(e);
		}
		System.out.println("DAO<");
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
			System.out.println();
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
