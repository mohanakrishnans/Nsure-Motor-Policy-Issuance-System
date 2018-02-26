package com.kgisl.nsure.authenticate.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kgisl.nsure.authenticate.domain.AccountLockDO;
import com.kgisl.nsure.authenticate.domain.AgentDO;
import com.kgisl.nsure.authenticate.domain.LoginDO;
import com.kgisl.nsure.quotation.domain.QuotationDO;
//import com.kgisl.nsure.commonutils.domain.BranchDO;
//import com.kgisl.nsure.commonutils.domain.CommonutilsDO;
import com.kgisl.nsure.commonutils.domain.GlobalNames;
import com.kgisl.nsure.dbconstants.AuthSQL;
/*import com.kgisl.nsure.dbconstants.MasterSQL;
import com.kgisl.nsure.dbconstants.MotorSQL;
import com.kgisl.nsure.transaction.domain.MotorTransactionDO;
import com.kgisl.nsure.web.logging.NsureException;*/


import net.sf.json.JSONArray;
import oracle.jdbc.OracleTypes;

@Service
@Transactional
@SuppressWarnings("unchecked")
public class AuthenticateDAOImpl implements AuthenticateDAO{
	
	@Autowired
	DataSource dataSource;

	private JdbcTemplate jdbcTemplate;

	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		jdbcTemplate = new JdbcTemplate(dataSource);
		namedParameterJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
	}
	
	@Override
	public LoginDO authenticateUser(LoginDO login) throws Exception{
		LoginDO loginFromDb = null;
		try{
			List<LoginDO> loginReturnVOList = new ArrayList<LoginDO>();
			SimpleJdbcCall simpleJdbcCall = new SimpleJdbcCall(dataSource);
			simpleJdbcCall.withCatalogName("PKG_AUTHENTICATE")
					.withProcedureName("PRGETLOGINACCESSDETAILS")
					.withoutProcedureColumnMetaDataAccess()
					.declareParameters(
							new SqlOutParameter("P_CUR", OracleTypes.CURSOR),
							new SqlParameter("P_VCH_LOGIN_NAME",OracleTypes.VARCHAR))
					.returningResultSet("P_CUR", new RowMapper<LoginDO>() {
						@Override
						public LoginDO mapRow(ResultSet rs, int rownum)
								throws SQLException {
							LoginDO loginDO = new LoginDO();
							loginDO.setUserName(rs.getString("VCH_LOGIN_NAME"));
							loginDO.setPassword(rs.getString("VCH_PASSWORD"));
							loginDO.setPasswordKey(rs.getString("VCH_PASSWORD_KEY"));
							loginDO.setLoginId(rs.getInt("NUM_LOGIN_ID"));
							loginDO.setMobilePrefix(rs.getString("V_MOBILE_PERFIX"));
							loginDO.setPostCodeLength(rs.getString("V_POST_CODE_LEN"));
							loginDO.setSubUserId(rs.getInt("NUM_SUB_USER_ID"));
							loginDO.setAgentId(rs.getInt("NUM_AGENT_ID"));
							loginDO.setAgencyName(rs.getString("VCH_AGENCY_NAME"));
							loginDO.setStaffId(rs.getInt("NUM_STAFF_ID"));
							loginDO.setRoleId(rs.getInt("NUM_ROLE_ID"));
							loginDO.setBranchId(rs.getInt("NUM_BRANCH_ID"));
							loginDO.setBranchName(rs.getString("VCH_BRANCH_NAME"));
							loginDO.setStateId(rs.getInt("NUM_STATE_ID"));
							loginDO.setLockStatus(rs.getString("CHR_LOCKED"));
							loginDO.setMultiLoginInd(rs.getString("CHR_ALLOW_MULTIPLE_SESSION"));
							loginDO.setLastLoginDate(rs.getString("V_LAST_LOGIN_DATE"));
							loginDO.setDormantInd(rs.getString("V_VCH_DORMANT_IND"));
							loginDO.setSuspendedInd(rs.getString("CHR_SUSPEND_TERMINATE_IND")); 
							loginDO.setJobGradeId(rs.getInt("NUM_JOB_GRADE_ID"));
							loginDO.setMultiLoginInd(rs.getString("CHR_ALLOW_MULTIPLE_SESSION"));
							loginDO.setAccessTimingsInd(rs.getString("V_VCH_ACCESS_TIME_IND"));
							loginDO.setEffectiveDateInd(rs.getString("V_VCH_EFFECTIVE_DATE_IND"));
							loginDO.setIsHolidayInd(rs.getString("V_VCH_HOLIDAY_IND"));
							loginDO.setLoginRoleInd(rs.getString("CHR_ROLE_IND"));
							loginDO.setChannelId(rs.getInt("NUM_SOURCE_TYPE_ID"));
							loginDO.setChannelCode(rs.getString("VCH_SOURCE_TYPE_GROUP_CODE"));
							loginDO.setAccountCode(rs.getString("VCH_ACCOUNT_CODE"));
							if ((rs.getString("V_LOGIN_Failed"))!=null && (rs.getString("V_LOGIN_Failed")).equals("Y")) {
								return new LoginDO();
							} else {
								return loginDO;
							}
						}
					});
			SqlParameterSource in = new MapSqlParameterSource().addValue("P_VCH_LOGIN_NAME", login.getUserName());
			loginReturnVOList = (List<LoginDO>) simpleJdbcCall.execute(in).get("P_CUR");
			if(loginReturnVOList!=null && loginReturnVOList.size()>0){
				loginFromDb = loginReturnVOList.get(0);
			}
		} catch(Exception e) {
			//throw new NsureException(e);
		}
		return loginFromDb;
	}

	
	public int CheckUserName(String userName) {
		int count = 0;
		String moha=null;
		
		try {
			System.out.println("****test init****");
			//count = jdbcTemplate.queryForObject("SELECT COUNT(*) FROM employee where NAME = ?",new Object[] {userName},Integer.class);
			
			
			String sql = "SELECT * FROM EIS_MST_OTS_CONTACT_TYPE";			
			List<Map<String, Object>> customers  = jdbcTemplate.queryForList(sql);			
			System.out.println(customers+"MOHAN");
			
			
			//System.out.println("SELECT COUNT(*) FROM employee "+count);			
		} catch (Exception e) {
			System.out.println(e);
		}
		return count;
	}

	@Override
	public AccountLockDO fnLoadLoginId(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AccountLockDO getUserDetails(int loginId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getLockStatus(AccountLockDO accountLockDO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getRandomPassword() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public LoginDO fnGetPasswordExpiryDetails(int loginId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AgentDO getAgentInfo(int agentId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateInvaildAccessCount(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateInvalidCount(String userName) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void saveLoginHistory(int loginId, String sessionId, String loginType) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateLoginHistory(int loginId, String sessionId) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<String> getSessionId(int loginId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void inValidAttempt(LoginDO loginDO) {
		// TODO Auto-generated method stub
		
	}
		
}
