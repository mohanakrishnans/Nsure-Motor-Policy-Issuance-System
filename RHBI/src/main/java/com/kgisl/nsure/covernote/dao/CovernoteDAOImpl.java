/**
 * 
 */
package com.kgisl.nsure.covernote.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.kgisl.nsure.covernote.domain.CovernoteDO;
import com.kgisl.nsure.quotation.domain.QuotationDO;

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
	/*COVERNOTE TYPE*/
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
	
	/*COVERAGE TYPE*/
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
	/*CLASS GROUP*/
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
	/*COVERNOTE TYPE*/
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
	/*COVERNOTE TYPE*/
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
	/*LOCATION*/
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
	/*LOCATION*/
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
	/*ADDITIONAL USAGE*/
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
					covernoteDO.setVehicleusageid(rs.getInt("NUM_ADD_USAGE_ID"));
					covernoteDO.setVehicleusagename(rs.getString("VCH_ADD_USAGE_NAME"));
					return covernoteDO;
				}
			});
		} catch (Exception e) {
			System.out.println(e);
		}
		return covernoteclass;
	}
	
}
