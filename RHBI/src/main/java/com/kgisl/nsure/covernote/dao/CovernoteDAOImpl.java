/**
 * 
 */
package com.kgisl.nsure.covernote.dao;

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
import com.kgisl.nsure.covernote.domain.CovernoteDO;
import com.kgisl.nsure.quotation.domain.QuotationDO;

import oracle.jdbc.internal.OracleTypes;

/**
 * @author mohan
 *
 */
@Service
@Transactional
public class CovernoteDAOImpl implements CovernoteDAO {
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
	public void savePremium(CovernoteDO covernoteDO) {

		try {
			System.out.println("P_NUM_SUM_INSURED "+ covernoteDO.getSuminsured1());
			System.out.println("P_NUM_TRAILER_SUM_INSURED "+ covernoteDO.getTrailersuminsured1());
			System.out.println("P_NUM_ALL_RIDER_AMOUNT "+ covernoteDO.getAllrideramount());
			System.out.println("P_NUM_BASIC_PREMIUM "+ covernoteDO.getBasicpremium());
			System.out.println("P_NUM_TRAILER_PREMIUM "+ covernoteDO.getTrailerpremium());
			System.out.println("P_NUM_TOTAL_BASIC "+ covernoteDO.getTotalbasic());
			System.out.println("P_VCH_VEHICLE_NUMBER "+ covernoteDO.getVehiclenumber1());
			System.out.println("P_VCH_POLICY_NUMBER "+ covernoteDO.getPolicynumber());
			System.out.println("P_DTT_POLICY_EXPIRY_DATE "+ covernoteDO.getPolicyexpirydate());
			System.out.println("P_DTT_NCD_EFFECTIVE_DATE "+ covernoteDO.getNcdeffectivedate());
			System.out.println("P_VCH_NCD_FROM "+ covernoteDO.getNcdfrom());
			System.out.println("P_DTT_POLICY_EFFECTIVE_DATE "+ covernoteDO.getPolicyeffectivedate());
			System.out.println("P_VCH_NCD_ALLOWED_PERCENT "+ covernoteDO.getNcdallowedpercent());
			System.out.println("P_VCH_ANNUAL_PREMIUM "+ covernoteDO.getAnnualpremium());
			System.out.println("P_VCH_NCD_AMOUNT "+ covernoteDO.getNcdamount());
			System.out.println("P_VCH_GROSS_PREMIUM "+ covernoteDO.getGrosspremium());
			System.out.println("P_VCH_EXCESS_DISCOUNT "+ covernoteDO.getVoluntryexcessdiscount());
			System.out.println("P_VCH_GST "+ covernoteDO.getGst());
			System.out.println("P_VCH_GST_COMMISSION "+ covernoteDO.getGstoncommission());
			System.out.println("P_VCH_AMOUNT_AGENT "+ covernoteDO.getAmountpayableagent());
			System.out.println("P_VCH_ACT_PREMIUM "+ covernoteDO.getActpremium());
			System.out.println("P_VCH_AFTER_LOADING "+ covernoteDO.getAfterloading());
			System.out.println("P_VCH_EXTR_COVERAGE "+ covernoteDO.getExtracoverage());
			System.out.println("P_VCH_STAMP_DUTY "+ covernoteDO.getStampduty());
			System.out.println("P_VCH_FLEET_DISCOUNT "+ covernoteDO.getFleetdiscount());
			System.out.println("P_VCH_COMMISSION "+ covernoteDO.getCommission());
			System.out.println("P_VCH_AMOUNT_CLIENT "+ covernoteDO.getAmountpayableclient());
			System.out.println("P_VCH_EXCESS_DAMAGE "+ covernoteDO.getExcessdamageclaim());
			System.out.println("P_VCH_EXCESS_PERCENT "+ covernoteDO.getVoluntryexcess());;
			
			SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(dataSource);
			simpleJdbcCall.withCatalogName("PREMIUM_SAVE").withProcedureName("PR_PREMIUM_SAVE")
					.withoutProcedureColumnMetaDataAccess()
					.declareParameters(new SqlParameter("P_NUM_SUM_INSURED", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_TRAILER_SUM_INSURED", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_ALL_RIDER_AMOUNT", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_BASIC_PREMIUM", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_TRAILER_PREMIUM", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_TOTAL_BASIC", OracleTypes.NUMBER),
							new SqlParameter("P_VCH_VEHICLE_NUMBER", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_POLICY_NUMBER", OracleTypes.VARCHAR),
							new SqlParameter("P_DTT_POLICY_EXPIRY_DATE", OracleTypes.DATE),
							new SqlParameter("P_DTT_NCD_EFFECTIVE_DATE", OracleTypes.DATE),
							new SqlParameter("P_VCH_NCD_FROM", OracleTypes.VARCHAR),
							new SqlParameter("P_DTT_POLICY_EFFECTIVE_DATE", OracleTypes.DATE),
							new SqlParameter("P_VCH_NCD_ALLOWED_PERCENT", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_ANNUAL_PREMIUM", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_NCD_AMOUNT", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_GROSS_PREMIUM", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_EXCESS_DISCOUNT", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_GST", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_GST_COMMISSION", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_AMOUNT_AGENT", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_ACT_PREMIUM", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_AFTER_LOADING", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_EXTR_COVERAGE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_STAMP_DUTY", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_FLEET_DISCOUNT", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_COMMISSION", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_AMOUNT_CLIENT", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_EXCESS_DAMAGE", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_EXCESS_PERCENT", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_QUOTATION_ID", OracleTypes.VARCHAR)

			);

			SqlParameterSource inputParams = new MapSqlParameterSource()
					.addValue("P_NUM_SUM_INSURED", covernoteDO.getSuminsured1())
					.addValue("P_NUM_TRAILER_SUM_INSURED", covernoteDO.getTrailersuminsured1())
					.addValue("P_NUM_ALL_RIDER_AMOUNT", covernoteDO.getAllrideramount())
					.addValue("P_NUM_BASIC_PREMIUM", covernoteDO.getBasicpremium())
					.addValue("P_NUM_TRAILER_PREMIUM", covernoteDO.getTrailerpremium())
					.addValue("P_NUM_TOTAL_BASIC", covernoteDO.getTotalbasic())
					.addValue("P_VCH_VEHICLE_NUMBER", null)
					.addValue("P_VCH_POLICY_NUMBER", null)
					.addValue("P_DTT_POLICY_EXPIRY_DATE", null)
					.addValue("P_DTT_NCD_EFFECTIVE_DATE", null)
					.addValue("P_VCH_NCD_FROM", null)
					.addValue("P_DTT_POLICY_EFFECTIVE_DATE", null)
					.addValue("P_VCH_NCD_ALLOWED_PERCENT", covernoteDO.getNcdallowedpercent())
					.addValue("P_VCH_ANNUAL_PREMIUM", covernoteDO.getAnnualpremium())
					.addValue("P_VCH_NCD_AMOUNT", covernoteDO.getNcdamount())
					.addValue("P_VCH_GROSS_PREMIUM", covernoteDO.getGrosspremium())
					.addValue("P_VCH_EXCESS_DISCOUNT", covernoteDO.getVoluntryexcessdiscount())
					.addValue("P_VCH_GST", covernoteDO.getGst())
					.addValue("P_VCH_GST_COMMISSION", covernoteDO.getGstoncommission())
					.addValue("P_VCH_AMOUNT_AGENT", covernoteDO.getAmountpayableagent())
					.addValue("P_VCH_ACT_PREMIUM", covernoteDO.getActpremium())
					.addValue("P_VCH_AFTER_LOADING", covernoteDO.getAfterloading())
					.addValue("P_VCH_EXTR_COVERAGE", covernoteDO.getExtracoverage())
					.addValue("P_VCH_STAMP_DUTY", covernoteDO.getStampduty())
					.addValue("P_VCH_FLEET_DISCOUNT", covernoteDO.getFleetdiscount())
					.addValue("P_VCH_COMMISSION", covernoteDO.getCommission())
					.addValue("P_VCH_AMOUNT_CLIENT", covernoteDO.getAmountpayableclient())
					.addValue("P_VCH_EXCESS_DAMAGE", covernoteDO.getExcessdamageclaim())
					.addValue("P_VCH_EXCESS_PERCENT", null)
					.addValue("P_VCH_QUOTATION_ID", null );

			Map<String, Object> transactionStatus = simpleJdbcCall.execute(inputParams);

		} catch (Exception e) {
			System.out.println(e);
		}
		// System.out.println("DAO<");
	}
	
	/*** CN OPTIONS ***/
	@Override
	public List<CovernoteDO> cnoptionGrid(CovernoteDO covernoteDO) {
		List<CovernoteDO> cnoption = null;
		try {
			String finalSQL = null;
			int quotation = 1;
			//finalSQL = "SELECT * FROM EIS_TRN_COVER_NOTE WHERE NUM_COVER_NOTE_ID='"+quotation+"'";
			finalSQL = "SELECT * FROM EIS_TRN_COVER_NOTE";
			cnoption = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					//covernoteDO.setClassId(rs.getInt("NUM_COVER_NOTE_ID"));
					//covernoteDO.setIssueDate(rs.getDate("DTT_ISSUE_DATE"));
					covernoteDO.setPolicyno(rs.getLong("VCH_POLICY_NO"));
					covernoteDO.setCnno(rs.getString("VCH_COVER_NOTE_NO"));
					//quotationDO.setPocdate(rs.getDate("DTT_JPJ_PROCESSED_DATE"));
					covernoteDO.setEffectivedate(rs.getString("DTT_EFFECTIVE_DATE"));
					covernoteDO.setExpiredate(rs.getString("DTT_EXPIRY_DATE"));
					covernoteDO.setIssueDate(rs.getString("DTT_ISSUE_DATE"));
					covernoteDO.setCovernoteid(rs.getInt("NUM_COVER_NOTE_ID"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return cnoption;
	}
	
	/*** CN OPTIONS ***/
	/*@Override
	public List<CovernoteDO> premiunfetch(CovernoteDO covernoteDO) {
		List<CovernoteDO> cnoption = null;
		try {
			String finalSQL = null;
			int quotation = 1;
			//finalSQL = "SELECT * FROM EIS_TRN_COVER_NOTE WHERE NUM_COVER_NOTE_ID='"+quotation+"'";
			finalSQL = "SELECT * FROM EIS_TRN_QUT_PREMIUM";
			cnoption = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.set
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return cnoption;
	}*/
	
	
	/*** CN OPTIONS ***/
	@Override
	public List<CovernoteDO> cncovernteGrid(CovernoteDO covernoteDO) {
		List<CovernoteDO> cnoption = null;
		try {
			String finalSQL = null;
			//int quotation=3;
			//finalSQL = "SELECT * FROM EIS_TRN_COVER_NOTE WHERE NUM_COVER_NOTE_ID='"+3+"'";
			finalSQL = "SELECT * FROM EIS_TRN_COVER_NOTE";
			cnoption = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					//covernoteDO.setClassId(rs.getInt("NUM_COVER_NOTE_ID"));
					//covernoteDO.setIssueDate(rs.getDate("DTT_ISSUE_DATE"));
					covernoteDO.setPolicyno(rs.getLong("VCH_POLICY_NO"));
					covernoteDO.setCnno(rs.getString("VCH_COVER_NOTE_NO"));
					//quotationDO.setPocdate(rs.getDate("DTT_JPJ_PROCESSED_DATE"));
					covernoteDO.setEffectivedate(rs.getString("DTT_EFFECTIVE_DATE"));
					covernoteDO.setExpiredate(rs.getString("DTT_EXPIRY_DATE"));
					covernoteDO.setIssueDate(rs.getString("DTT_ISSUE_DATE"));
					covernoteDO.setCovernoteid(rs.getInt("NUM_COVER_NOTE_ID"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return cnoption;
	}
	
	
	
	@Override
	public void saveEndorsementDetails(CovernoteDO quotationDO) {
		// TODO Auto-generated method stub
		try {

			//QuotationDO quotationDO = null;
			/*System.out.println(quotationDO.getPreviouspolicyno()   + quotationDO.getCovernoteno()
					+ quotationDO.getPocdate()  + quotationDO.getEffectivedate() 
					+ quotationDO.getEndorsementtype() + quotationDO.getIssueddate() 
					+ quotationDO.getExpiredate());*/
			// System.out.println("DAO>");
			Date date1,date2,date3,date4 = null;

			
				String dob1 = quotationDO.getPocdate();
				String dob2 = quotationDO.getEffectivedate();
				String dob3 = quotationDO.getIssueddate();
				String dob4 = quotationDO.getExpiredate();
				
				date1 = new SimpleDateFormat("dd-MM-yyyy").parse(dob1);
				date2 = new SimpleDateFormat("dd-MM-yyyy").parse(dob2);
				date3 = new SimpleDateFormat("dd-MM-yyyy").parse(dob3);
				date4 = new SimpleDateFormat("dd-MM-yyyy").parse(dob4);
			 

			SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(dataSource);
			simpleJdbcCall.withCatalogName("ENDOR_SAVE").withProcedureName("PR_ENDOR_SAVE")
					.withoutProcedureColumnMetaDataAccess()
					.declareParameters(new SqlParameter("P_NUM_POLICY_NO", OracleTypes.NUMBER),
							new SqlParameter("P_VCH_COVER_NOTE_NO", OracleTypes.VARCHAR),
							new SqlParameter("P_DTT_EFFECTIVE_DATE", OracleTypes.DATE),
							new SqlParameter("P_DTT_ISSUE_DATE", OracleTypes.DATE),
							new SqlParameter("P_DTT_EXPIRY_DATE", OracleTypes.DATE),
							new SqlParameter("P_DTT_POC_DATE", OracleTypes.DATE),
							new SqlParameter("P_VCH_ENDORSEMENT_TYPE", OracleTypes.VARCHAR));

			SqlParameterSource inputParams = new MapSqlParameterSource()
					.addValue("P_NUM_POLICY_NO", quotationDO.getPreviouspolicyno())
					.addValue("P_VCH_COVER_NOTE_NO", quotationDO.getCovernoteno())
					.addValue("P_DTT_EFFECTIVE_DATE", date2)
					.addValue("P_DTT_ISSUE_DATE", date3)
					.addValue("P_DTT_EXPIRY_DATE", date4)
					.addValue("P_DTT_POC_DATE", date1)
					.addValue("P_VCH_ENDORSEMENT_TYPE", quotationDO.getEndorsementtype());

			Map<String, Object> transactionStatus = simpleJdbcCall.execute(inputParams);

		} catch (Exception e) {
			System.out.println(e);
		}
		// System.out.println("DAO<");
		
	}
	
	@Override
	public List<CovernoteDO> endorsementfetch(CovernoteDO quotationDO) {
		List<CovernoteDO> endorsementfetch = null;
		try {
			String SQL = null;
			SQL = "SELECT * FROM EIS_TRN_ENDORSEMENT";

			endorsementfetch = jdbcTemplate.query(SQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO quotationDO = new CovernoteDO();

					quotationDO.setPreviouspolicyno(rs.getLong("NUM_POLICY_NO"));
					quotationDO.setCovernoteno(rs.getString("VCH_COVER_NOTE_NO"));
					quotationDO.setEffectivedate(rs.getString("DTT_EFFECTIVE_DATE"));
					quotationDO.setIssueDate(rs.getString("DTT_ISSUE_DATE"));
					quotationDO.setExpiredate(rs.getString("DTT_EXPIRY_DATE"));
					quotationDO.setPocdate(rs.getString("DTT_POC_DATE"));
					quotationDO.setEndorsementtype(rs.getString("VCH_ENDORSEMENT_TYPE"));
					

					return quotationDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return endorsementfetch;
	}

	
	@Override
	public void convertCovernote(CovernoteDO covernoteDO) {
		// TODO Auto-generated method stub
		
		try {
			 String sql="UPDATE EIS_TRN_COVER_NOTE SET NUM_COVER_NOTE_STATUS_ID='"+3+"'where NUM_COVER_NOTE_ID='"+covernoteDO.getCovernoteid()+"'";  
			    jdbcTemplate.update(sql);  

		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	@Override
	public void cancelCovernote(CovernoteDO covernoteDO) {
		// TODO Auto-generated method stub
		
		try {
			 String sql="UPDATE EIS_TRN_COVER_NOTE SET NUM_COVER_NOTE_STATUS_ID='"+ 2 +"'where NUM_COVER_NOTE_ID='"+covernoteDO.getCovernoteid()+"'";  
			    jdbcTemplate.update(sql);  

		} catch (Exception e) {
			System.out.println(e);
		}
	}
	
	/*@Overrideaw4cxhi9
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
	}*/
	
	@Override
	public void saveCovernote(CovernoteDO covernoteDO) {
		// TODO Auto-generated method stub
		// System.out.println(quotationDO.getName()+" mohn");

		// System.out.println(" 11111"+quotationDO.getContactName());
		// quotationDO.getContactName();

		try {
			Date Issueddate,Inceptiondate,Expirydate,Vehiclepurchasedate = null;

			
				String issueddate = covernoteDO.getIssueddate();
				String inceptiondate = covernoteDO.getInceptiondate();
				String expirydate = covernoteDO.getExpirydate();
				String vehiclepurchasedate = covernoteDO.getVehiclepurchasedate();
				
				Issueddate = new SimpleDateFormat("dd-MM-yyyy").parse(issueddate);
				Inceptiondate = new SimpleDateFormat("dd-MM-yyyy").parse(inceptiondate);
				Expirydate = new SimpleDateFormat("dd-MM-yyyy").parse(expirydate);
				Vehiclepurchasedate = new SimpleDateFormat("dd-MM-yyyy").parse(vehiclepurchasedate);

			
			// System.out.println("DAO>");

			/*
			 * new SqlParameter("//P_NUM_COVERNOTE_ID", OracleTypes.VARCHAR),
			 * .addValue("//P_NUM_COVERNOTE_ID,
			 * 
			 */
			/*
			 * new SqlParameter( "P_NUM_HIRE_PURCHASE", OracleTypes.VARCHAR),
			 *//*
				 * .addValue("P_NUM_HIRE_PURCHASE", covernoteDO.getHirepurchase())
				 */
			SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(dataSource);
			simpleJdbcCall.withCatalogName("COVER_NOTE_SAVE").withProcedureName("PR_COVER_NOTE_SAVE")
					.withoutProcedureColumnMetaDataAccess()
					.declareParameters(new SqlParameter("P_DTT_ISSUE_DATE ", OracleTypes.DATE),
							new SqlParameter("P_NUM_CLASS_ID", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_COVER_NOTE_TYPE_ID", OracleTypes.NUMBER),
							new SqlParameter("P_DTT_EXPIRY_DATE ", OracleTypes.DATE),
							new SqlParameter("P_NUM_VEH_ADD_USAGE_CLASS_ID ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_VEHICLE_USAGE_ID ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_SUB_CLASS_COVER_ID ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_ANTI_THEFT_ID ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_SAFETY_ID ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_GARAGE_ID ", OracleTypes.NUMBER),
							new SqlParameter("P_DTT_INCEPTION_DATE ", OracleTypes.DATE),
							new SqlParameter("P_NUM_OWNERSHIP_TYPE_ID ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_BTM ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_BDM ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_CAPACITY ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_NO_OF_SEATS ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_MANUFACTURE_YEAR ", OracleTypes.NUMBER),
							new SqlParameter("P_VCH_ENGINE_NO ", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_CHASSIS_NO ", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_LOG_BOOK_NO ", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_VEHICLE_NO ", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_VEHICLE_PURCHASE_PRICE ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_MODEL_ID ", OracleTypes.NUMBER),
							new SqlParameter("P_VCH_VEH_BODY_CODE ", OracleTypes.VARCHAR),
							new SqlParameter("P_CHR_MASTER_POLICY_IND ", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_GEO_LOC_ID ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_CLASS_GROUP_ID ", OracleTypes.NUMBER),
							new SqlParameter("P_CHR_HIGH_RISK ", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_ALL_RIDER_AMOUNT ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_HIRE_PURCHASE_TYPE ", OracleTypes.NUMBER),
							new SqlParameter("P_CHR_YOUNG_SENIOR_DRIVER ", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_TRAILER_NO ", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_DRIVER_EXPERIENCE ", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_MODIFIED_BY ", OracleTypes.NUMBER),
							new SqlParameter("P_CHR_TARIFF_REGION ", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_VEHICLE_MODEL_CODE ", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_HIRE_PURCHASE ", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_PERFORMANCE_AESTHETIC ", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_VEH_APPROVAL_CODE ", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_VARIANT_SERIES ", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_VEHICLE_PUR_MRT_VALUE ", OracleTypes.NUMBER),
							new SqlParameter("P_VCH_DRIVING_LICENSE_NO", OracleTypes.VARCHAR),
							new SqlParameter("P_VCH_VEHICLE_MODEL_DESC", OracleTypes.VARCHAR),
							new SqlParameter("P_DTT_VEHICLE_PURCHASE_DATE", OracleTypes.DATE),
							new SqlParameter("P_NUM_CLIAM_COUNT_NO", OracleTypes.VARCHAR),
							new SqlParameter("P_NUM_SUM_INSURED", OracleTypes.NUMBER),
							new SqlParameter("P_NUM_TRAILER_SUM", OracleTypes.NUMBER),
							new SqlParameter("P_VCH_CAPACITY_S", OracleTypes.VARCHAR));

			SqlParameterSource inputParams = new MapSqlParameterSource()
					.addValue("P_DTT_ISSUE_DATE ", Issueddate)
					.addValue("P_NUM_CLASS_ID", covernoteDO.getCovernoteclass())
					.addValue("P_NUM_COVER_NOTE_TYPE_ID", covernoteDO.getCovernotetype())
					.addValue("P_DTT_EXPIRY_DATE ", Expirydate)
					.addValue("P_NUM_VEH_ADD_USAGE_CLASS_ID ", covernoteDO.getAdditionalusage())
					.addValue("P_NUM_VEHICLE_USAGE_ID ", covernoteDO.getVehicleusage())
					.addValue("P_NUM_SUB_CLASS_COVER_ID ", covernoteDO.getCoveragetype())
					.addValue("P_NUM_ANTI_THEFT_ID ", covernoteDO.getAntitheftcode())
					.addValue("P_NUM_SAFETY_ID ", covernoteDO.getSafetycode())
					.addValue("P_NUM_GARAGE_ID ", covernoteDO.getGaraged())
					.addValue("P_DTT_INCEPTION_DATE ", Inceptiondate)
					.addValue("P_NUM_OWNERSHIP_TYPE_ID ", covernoteDO.getOwnershiptype())
					.addValue("P_NUM_BTM ", covernoteDO.getBtm()).addValue("P_NUM_BDM ", covernoteDO.getBdm())
					.addValue("P_NUM_CAPACITY ", covernoteDO.getCapacity())
					.addValue("P_NUM_NO_OF_SEATS ", covernoteDO.getNumberofseats())
					.addValue("P_NUM_MANUFACTURE_YEAR ", covernoteDO.getYearsofmanufacturing())
					.addValue("P_VCH_ENGINE_NO ", covernoteDO.getEnginemotornumber())
					.addValue("P_VCH_CHASSIS_NO ", covernoteDO.getChassisnumber())
					.addValue("P_VCH_LOG_BOOK_NO ", covernoteDO.getLogbooknumber())
					.addValue("P_VCH_VEHICLE_NO ", covernoteDO.getVehiclenumber())
					.addValue("P_NUM_VEHICLE_PURCHASE_PRICE ", covernoteDO.getPurchaseprice())
					.addValue("P_NUM_MODEL_ID ", covernoteDO.getMakemodel())
					.addValue("P_VCH_VEH_BODY_CODE ", covernoteDO.getVehiclebody())
					.addValue("P_CHR_MASTER_POLICY_IND ", covernoteDO.getMasterpolicynumber())
					.addValue("P_NUM_GEO_LOC_ID ", covernoteDO.getGeographicallocation())
					.addValue("P_NUM_CLASS_GROUP_ID ", covernoteDO.getClassgroup())
					.addValue("P_CHR_HIGH_RISK ", covernoteDO.getHighrisk())
					.addValue("P_NUM_ALL_RIDER_AMOUNT ", covernoteDO.getAllriderdriver())
					.addValue("P_NUM_HIRE_PURCHASE_TYPE ", covernoteDO.getTypeofhirepurchase())
					.addValue("P_CHR_YOUNG_SENIOR_DRIVER ", covernoteDO.getYoungseniordriver())
					.addValue("P_VCH_TRAILER_NO ", covernoteDO.getTrailernumber())
					.addValue("P_NUM_DRIVER_EXPERIENCE ", covernoteDO.getDriverexperience())
					.addValue("P_NUM_MODIFIED_BY ", covernoteDO.getFunctionalmodification())
					.addValue("P_CHR_TARIFF_REGION ", covernoteDO.getRegion())
					.addValue("P_VCH_VEHICLE_MODEL_CODE ", covernoteDO.getVehicletype())
					.addValue("P_VCH_HIRE_PURCHASE ", covernoteDO.getHirepurchase())
					.addValue("P_VCH_PERFORMANCE_AESTHETIC ", covernoteDO.getPerformanceaesthetic())
					.addValue("P_VCH_VEH_APPROVAL_CODE ", covernoteDO.getVehicleapprovalcode())
					.addValue("P_VCH_VARIANT_SERIES ", covernoteDO.getVariantseries())
					.addValue("P_NUM_VEHICLE_PUR_MRT_VALUE ", covernoteDO.getVehiclemarketvalue())
					.addValue("P_VCH_DRIVING_LICENSE_NO", covernoteDO.getDrivinglicensenumber())
					.addValue("P_VCH_VEHICLE_MODEL_DESC", covernoteDO.getModeldescription())
					.addValue("P_DTT_VEHICLE_PURCHASE_DATE", Vehiclepurchasedate)
					.addValue("P_NUM_CLIAM_COUNT_NO", covernoteDO.getNumberofclaims())
					.addValue("P_NUM_SUM_INSURED", covernoteDO.getSuminsured())
					.addValue("P_NUM_TRAILER_SUM", covernoteDO.getTrailernumber())
					.addValue("P_VCH_CAPACITY_S", covernoteDO.getTcapacity());

			 Map<String, Object> transactionStatus = simpleJdbcCall.execute(inputParams);

		} catch (Exception e) {
			System.out.println(e);
		}
	}

	/*** COVERNOTE CLASS ***/
	@Override
	public List<CovernoteDO> getCovernoteClass(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_CLASS";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setClassid(rs.getInt("NUM_CLASS_ID"));
					covernoteDO.setClassname(rs.getString("VCH_CLASS_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}

	/* COVERNOTE TYPE */
	@Override
	public List<CovernoteDO> getCovernoteType(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_COVERNOTE_TYPE";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setCovernotetypeid(rs.getInt("NUM_COVERNOTETYPE_ID"));
					covernoteDO.setCovernotetypename(rs.getString("VCH_COVERNOTETYPE_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	
	
	/* CN TYPE */
	@Override
	public List<CovernoteDO> getCNclass(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_COVER_NOTE_CLASS";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setCnclassid(rs.getInt("NUM_COVER_NOTE_CLASS_ID"));
					covernoteDO.setCnclassname(rs.getString("VCH_COVER_NOTE_CLASS_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	
	

	/* VEHICLE BODY TYPE */
	@Override
	public List<CovernoteDO> getVehicleBody(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_VEHICLE_BODY";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setVehiclebodyid(rs.getInt("NUM_VEHICLE_BODY_ID"));
					covernoteDO.setVehiclebodyname(rs.getString("VCH_VEHICLE_BODY_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	/* SAFETY CODE*/
	@Override
	public List<CovernoteDO> getSafetyCode(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_SAFETY_CODE";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setSafetycodeid(rs.getInt("NUM_SAFETY_CODE_ID"));
					covernoteDO.setSafetycodename(rs.getString("VCH_SAFETY_CODE_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	/* Driver Experience*/
	@Override
	public List<CovernoteDO> getDriverExperience(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_DRIVER_EXPERIENCE";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setDriverexperienceid(rs.getInt("NUM_DRIVER_EXPERIENCE_ID"));
					covernoteDO.setDriverexperiencename(rs.getString("VCH_DRIVER_EXPERIENCE_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	/* Garaged*/
	@Override
	public List<CovernoteDO> getGaraged(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_GARAGE";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setGaragedid(rs.getInt("NUM_GARAGE_ID"));
					covernoteDO.setGaragedname(rs.getString("VCH_GARAGE_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	/* Functional Modification*/
	@Override
	public List<CovernoteDO> getFunctionalModification(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_FUNC_MODIFICATION";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setFunctionalmodificationid(rs.getInt("NUM_FUNC_MODIFICATION_ID"));
					covernoteDO.setFunctionalmodificationname(rs.getString("VCH_FUNC_MODIFICATION_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	/* Anti Theft Code*/
	@Override
	public List<CovernoteDO> getAntiTheftCode(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_ANTI_THEFT_CODE";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setAntitheftcodeid(rs.getInt("NUM_ANTI_THEFT_CODE_ID"));
					covernoteDO.setAntitheftcodename(rs.getString("VCH_ANTI_THEFT_CODE_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	/* Performance Aesthetic*/
	@Override
	public List<CovernoteDO> getPerformanceAesthetic(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_PERF_AESTHETIC";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setPerformanceaestheticid(rs.getInt("NUM_PERF_AESTHETIC_ID"));
					covernoteDO.setPerformanceaestheticname(rs.getString("VCH_PERF_AESTHETIC_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	
	/* Vehicle Capacity*/
	@Override
	public List<CovernoteDO> getVehicleCapacity(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_VEHICLE_CAPACITY";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setVehiclecapacityid(rs.getInt("NUM_VEHICLE_CAPACITY_ID"));
					covernoteDO.setVehiclecapacityname(rs.getString("VCH_VEHICLE_CAPACITY_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	
	/* COVERAGE TYPE */
	@Override
	public List<CovernoteDO> getCoverageType(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_SUB_CLASS";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setCoveragetypeid(rs.getInt("NUM_SUB_CLASS_ID"));
					covernoteDO.setCoveragetypename(rs.getString("VCH_SUB_CLASS_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}

	/* CLASS GROUP */
	@Override
	public List<CovernoteDO> getClassGroup(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_CLASS_GROUP";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setClassgroupid(rs.getInt("NUM_CLASS_GROUP_ID"));
					covernoteDO.setClassgroupname(rs.getString("VCH_CLASS_GROUP_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}

	/* COVERNOTE TYPE */
	@Override
	public List<CovernoteDO> getHireType(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_HIRE";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setHiretypeid(rs.getInt("NUM_HIRE_ID"));
					covernoteDO.setHiretypename(rs.getString("VCH_HIRE_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}

	/* COVERNOTE TYPE */
	@Override
	public List<CovernoteDO> getOwnershipType(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_OWNERSHIP";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setOwnershipid(rs.getInt("NUM_OWNERSHIP_ID"));
					covernoteDO.setOwnershipname(rs.getString("VCH_OWNERSHIP_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}

	/* LOCATION */
	@Override
	public List<CovernoteDO> getLocation(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_LOCATION";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setLocid(rs.getInt("NUM_LOC_ID"));
					covernoteDO.setLocname(rs.getString("VCH_LOC_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}

	/* LOCATION */
	@Override
	public List<CovernoteDO> getVehicleUsage(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_VEHICLE_USAGE";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setVehicleusageid(rs.getInt("NUM_VEHICLE_USAGE_ID"));
					covernoteDO.setVehicleusagename(rs.getString("VCH_VEHICLE_USAGE_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}

	/* ADDITIONAL USAGE */
	@Override
	public List<CovernoteDO> getAdditionalUsage(CovernoteDO covernoteDO) {
		List<CovernoteDO> covernoteclass = null;
		try {
			String finalSQL = null;
			finalSQL = "SELECT * FROM EIS_MST_OTS_ADDITIONAL_USAGE";
			covernoteclass = jdbcTemplate.query(finalSQL, new RowMapper<CovernoteDO>() {
				@Override
				public CovernoteDO mapRow(ResultSet rs, int rowNum) throws SQLException {
					CovernoteDO covernoteDO = new CovernoteDO();
					covernoteDO.setAdditionalusageid(rs.getInt("NUM_ADD_USAGE_ID"));
					covernoteDO.setAdditionalusagename(rs.getString("VCH_ADD_USAGE_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}

}
