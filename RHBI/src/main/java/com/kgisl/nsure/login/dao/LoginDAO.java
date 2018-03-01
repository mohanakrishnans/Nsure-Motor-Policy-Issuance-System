/**
 * 
 */
package com.kgisl.nsure.login.dao;

import com.kgisl.nsure.login.domain.LoginDO;

/**
 * @author mohan
 *
 */
public interface LoginDAO {
	
	boolean  validate(LoginDO loginDO);
	

}
