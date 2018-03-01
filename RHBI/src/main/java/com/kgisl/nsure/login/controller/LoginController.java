/**
 * 
 */
package com.kgisl.nsure.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.kgisl.nsure.login.domain.LoginDO;
import com.kgisl.nsure.login.service.LoginService;

/**
 * @author mohan
 *
 */
@Controller
public class LoginController {
	@Autowired
	LoginService loginService;

	/** Index **/
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView CRCInitialPage(@ModelAttribute("loginDO") LoginDO login, HttpServletRequest request)
			throws Exception {
		return new ModelAndView("/");
	}

	/** Login **/
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView cn(@ModelAttribute("loginData") LoginDO loginDO, BindingResult result,
			HttpServletRequest request, HttpSession session) {
		//System.out.println(loginDO.getUserName());
		boolean value;
		value = loginService.validate(loginDO);
		//System.out.print(value);
		if (value) {			
			return new ModelAndView("redirect:quotation");
		} else {			
			return new ModelAndView("redirect:/");
		}
	}
}
