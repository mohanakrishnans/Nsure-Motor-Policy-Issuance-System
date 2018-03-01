/**
 * 
 */
package com.kgisl.nsure.login.service;

import com.kgisl.nsure.login.domain.LoginDO;

/**
 * @author mohan
 *
 */
public interface LoginService {

	boolean validate(LoginDO loginDO);

}
