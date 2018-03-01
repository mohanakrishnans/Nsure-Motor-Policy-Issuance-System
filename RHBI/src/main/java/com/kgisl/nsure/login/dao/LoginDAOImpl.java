/**
 * 
 */
package com.kgisl.nsure.login.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kgisl.nsure.login.domain.LoginDO;
import com.kgisl.nsure.quotation.domain.QuotationDO;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JSONSerializer;

/**
 * @author mohan
 *
 */
@Service
@Transactional
public class LoginDAOImpl implements LoginDAO {

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
	public boolean validate(LoginDO loginDO) {

		List<LoginDO> LOGIN = null;
		ArrayList<LoginDO> mainList = new ArrayList<LoginDO>();
		String LOGINUSER = loginDO.getUserName();
		String LOGINPASSWORD = loginDO.getPassword();
		String jsonString = null;
		Gson gson = new Gson();
		try {

			try {
				String finalSQL = null;
				finalSQL = "SELECT * FROM EIS_MST_OTS_USERS";
				LOGIN = jdbcTemplate.query(finalSQL, new RowMapper<LoginDO>() {
					@Override
					public LoginDO mapRow(ResultSet rs, int rowNum) throws SQLException {
						LoginDO loginDO = new LoginDO();
						loginDO.setUserName(rs.getString("VCH_USER_NAME"));
						loginDO.setPassword(rs.getString("VCH_USER_PASSWORD"));
						//System.out.println(loginDO);
						return loginDO;
					}
				});

			} catch (Exception e) {
				System.out.println(e);
			}
			mainList.addAll(0, LOGIN);
			jsonString = gson.toJson(mainList);
			JSONArray json = (JSONArray) JSONSerializer.toJSON(jsonString);
			for (Object o : json) {
				JSONObject employee = (JSONObject) o;

				String name = (String) employee.get("userName");
				String password = (String) employee.get("password");
				if (name.equals(LOGINUSER) && password.equals(LOGINPASSWORD)) {
					return true;
				}

			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;

	}

}
