/**
 * 
 */
package com.kgisl.nsure.covernote.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kgisl.nsure.authenticate.domain.LoginDO;
import com.kgisl.nsure.covernote.domain.CovernoteDO;
import com.kgisl.nsure.covernote.services.CovernoteService;

/**
 * @author mohan
 *
 */
@Controller
public class CovernoteController {
	@Autowired
	CovernoteService covernoteservice;

	/** Quotation */
	@RequestMapping(value = "/coverclass", method = RequestMethod.GET)
	public ModelAndView covernoteClass(@ModelAttribute("loginDO") LoginDO login, HttpServletRequest request)
			throws Exception {
		//request.getSession().setAttribute("SESSION_COUNT", request.getSession().getId());

		return new ModelAndView("cn/covernote");
	}
	
	@RequestMapping(value = "/covernoteDrop", method = RequestMethod.GET)
	public @ResponseBody String covernoteDrop(HttpServletRequest request) {
		System.out.println("x");
		List<CovernoteDO> covernoteclass = null;
		List<CovernoteDO> covernotetype = null;
		List<CovernoteDO> coveragetype = null;
		List<CovernoteDO> classgroup = null;
		List<CovernoteDO> hiretype = null;
		List<CovernoteDO> ownershiptype = null;
		List<CovernoteDO> getlocation = null;
		List<CovernoteDO> getvehicleusage =null;
		
		ArrayList<CovernoteDO> mainList = new ArrayList<CovernoteDO>();

		String jsonString = null;
		Gson gson = new Gson();
		try {
			covernoteclass = covernoteservice.getCovernoteClass(null);
			covernotetype = covernoteservice.getCovernoteType(null);
			coveragetype = covernoteservice.getCoverageType(null);
			classgroup = covernoteservice.getClassGroup(null);
			hiretype = covernoteservice.getHireType(null);
			ownershiptype = covernoteservice.getOwnerShipType(null);
			getlocation = covernoteservice.getLocation(null);
			getvehicleusage= covernoteservice.getVehicleUsage(null);
			
			mainList.addAll(0, covernoteclass);
			mainList.addAll(1, covernotetype);
			mainList.addAll(2, coveragetype);
			mainList.addAll(3, classgroup);
			mainList.addAll(4, hiretype);
			mainList.addAll(5, ownershiptype);
			mainList.addAll(6, getlocation);
			mainList.addAll(7, getvehicleusage);
			
			jsonString = gson.toJson(mainList);
			System.out.println("coverdrop\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}
}
