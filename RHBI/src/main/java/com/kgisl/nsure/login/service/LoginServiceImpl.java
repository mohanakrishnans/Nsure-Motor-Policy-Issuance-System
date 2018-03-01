/**
 * 
 */
package com.kgisl.nsure.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kgisl.nsure.login.dao.LoginDAO;
import com.kgisl.nsure.login.domain.LoginDO;

/**
 * @author mohan
 *
 */
@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	LoginDAO loginDAO;
	@Override
	public boolean validate(LoginDO loginDO) {
		return loginDAO.validate(loginDO);
	}
	
}
