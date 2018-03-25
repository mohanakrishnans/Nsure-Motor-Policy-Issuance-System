/**
 * 
 */
package com.kgisl.nsure.covernote.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kgisl.nsure.authenticate.domain.LoginDO;
import com.kgisl.nsure.covernote.domain.CovernoteDO;
import com.kgisl.nsure.covernote.services.CovernoteService;
import com.kgisl.nsure.quotation.domain.QuotationDO;

/**
 * @author mohan
 *
 */
@Controller
public class CovernoteController {
	@Autowired
	CovernoteService covernoteService;
	

	/** Quotation */
	@RequestMapping(value = "/coverclass", method = RequestMethod.GET)
	public ModelAndView covernoteClass(@ModelAttribute("loginDO") LoginDO login, HttpServletRequest request)
			throws Exception {
		//request.getSession().setAttribute("SESSION_COUNT", request.getSession().getId());

		return new ModelAndView("cn/covernote");
	}
	@RequestMapping(value = "/save_covernote_form", method = RequestMethod.POST)
	public ModelAndView saveQuotation(@ModelAttribute("covernoteFormData") CovernoteDO covernoteDO,
			BindingResult result, HttpServletRequest request, HttpSession session) {
		
		session.setAttribute("covernoteclass", covernoteDO.getCovernoteclass());
		session.setAttribute("masterpolicynumber", covernoteDO.getMasterpolicynumber());
		session.setAttribute("covernotetype", covernoteDO.getCoveragetype());
		session.setAttribute("issueddate", covernoteDO.getIssueddate());
		session.setAttribute("inceptiondate", covernoteDO.getInceptiondate());
		session.setAttribute("expirydate", covernoteDO.getExpirydate());
		session.setAttribute("geographicallocation", covernoteDO.getGeographicallocation());
		session.setAttribute("classgroup", covernoteDO.getClassgroup());
		session.setAttribute("vehicleusage", covernoteDO.getVehicleusage());
		session.setAttribute("highrisk", covernoteDO.getHighrisk());
		session.setAttribute("typeofhirepurchase", covernoteDO.getTypeofhirepurchase());
		session.setAttribute("ownershiptype", covernoteDO.getOwnershiptype());
		session.setAttribute("safetycode", covernoteDO.getSafetycode());
		session.setAttribute("allriderdriver", covernoteDO.getAllriderdriver());
		session.setAttribute("youngseniordriver", covernoteDO.getYoungseniordriver());
		session.setAttribute("driverexperience", covernoteDO.getDriverexperience());
		session.setAttribute("functionalmodification", covernoteDO.getFunctionalmodification());
		session.setAttribute("region", covernoteDO.getRegion());
		session.setAttribute("vehicletype", covernoteDO.getVehicletype());
		session.setAttribute("coveragetype", covernoteDO.getCoveragetype());
		session.setAttribute("hirepurchase", covernoteDO.getHirepurchase());
		session.setAttribute("additionalusage", covernoteDO.getAdditionalusage());
		session.setAttribute("garaged", covernoteDO.getGaraged());
		session.setAttribute("antitheftcode", covernoteDO.getAntitheftcode());
		session.setAttribute("drivinglicensenumber", covernoteDO.getDrivinglicensenumber());
		session.setAttribute("performanceaesthetic", covernoteDO.getPerformanceaesthetic());	
		session.setAttribute("vehiclenumber", covernoteDO.getVehiclenumber());
		session.setAttribute("makemodel", covernoteDO.getMakemodel());
		session.setAttribute("vehiclebody", covernoteDO.getVehiclebody());
		session.setAttribute("numberofseats", covernoteDO.getNumberofseats());
		session.setAttribute("capacity", covernoteDO.getCapacity());
		session.setAttribute("chassisnumber", covernoteDO.getChassisnumber());
		session.setAttribute("trailernumber", covernoteDO.getTrailernumber());
		session.setAttribute("tcapacity", covernoteDO.getTcapacity());
		session.setAttribute("purchaseprice", covernoteDO.getPurchaseprice());
		session.setAttribute("vehicleapprovalcode", covernoteDO.getVehicleapprovalcode());
		session.setAttribute("modeldescription", covernoteDO.getModeldescription());
		session.setAttribute("yearsofmanufacturing", covernoteDO.getYearsofmanufacturing());
		session.setAttribute("bdm", covernoteDO.getBdm());
		session.setAttribute("btm", covernoteDO.getBtm());
		session.setAttribute("enginemotornumber", covernoteDO.getEnginemotornumber());
		session.setAttribute("logbooknumber", covernoteDO.getLogbooknumber());
		session.setAttribute("variantseries", covernoteDO.getVariantseries());
		session.setAttribute("vehiclepurchasedate", covernoteDO.getVehiclepurchasedate());
		session.setAttribute("numberofclaims", covernoteDO.getNumberofclaims());
		session.setAttribute("vehiclemarketvalue", covernoteDO.getVehiclemarketvalue());
		session.setAttribute("suminsured", covernoteDO.getSuminsured());
		session.setAttribute("trailersuminsured", covernoteDO.getTrailersuminsured());
		
		covernoteService.saveCovernote(covernoteDO);
		//System.out.println(session.getAttribute("sourceType"));
		//System.out.println(session.getAttribute("accountCode"));
		
		return new ModelAndView("redirect:nameddrivers");
	}
	
	/* CN options Grid */
	@RequestMapping(value = "/cnoptionGrid", method = RequestMethod.GET)
	public @ResponseBody String cnoptionGrid(CovernoteDO covernoteDO, HttpServletRequest request) {

		List<CovernoteDO> cnoptiongrid = null;
		ArrayList<CovernoteDO> mainList = new ArrayList<CovernoteDO>();
		//System.out.println("cnoptionGrid");
		String jsonString = null;
		Gson gson = new Gson();
		try {
			cnoptiongrid = covernoteService.cnoptionGrid(covernoteDO);

			mainList.addAll(0, cnoptiongrid);
			jsonString = gson.toJson(mainList);
		//	System.out.println("cnoptiongrid\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}
	
	/**Covernote DROP **/
	@RequestMapping(value = "/covernoteDrop", method = RequestMethod.GET)
	public @ResponseBody String covernoteDrop(HttpServletRequest request) {
		//System.out.println("x");
		List<CovernoteDO> covernoteclass = null;
		List<CovernoteDO> covernotetype = null;
		List<CovernoteDO> coveragetype = null;
		List<CovernoteDO> classgroup = null;
		List<CovernoteDO> hiretype = null;
		List<CovernoteDO> ownershiptype = null;
		List<CovernoteDO> getlocation = null;
		List<CovernoteDO> getvehicleusage =null;
		List<CovernoteDO> getadditionalusage =null;
		List<CovernoteDO> getcnclass =null;
		List<CovernoteDO> getvehiclebody =null;
		List<CovernoteDO> getsafetycode =null;
		List<CovernoteDO> getdriverexperience =null;
		List<CovernoteDO> getgaraged =null;
		List<CovernoteDO> getantitheftcode =null;
		List<CovernoteDO> getperformanceaesthetic =null;
		List<CovernoteDO> getvehiclecapacity =null;
		List<CovernoteDO> getfunctionalmodification =null;
		
		
		
		ArrayList<CovernoteDO> mainList = new ArrayList<CovernoteDO>();

		String jsonString = null;
		Gson gson = new Gson();
		try {
			covernoteclass = covernoteService.getCovernoteClass(null);
			covernotetype = covernoteService.getCovernoteType(null);
			coveragetype = covernoteService.getCoverageType(null);
			classgroup = covernoteService.getClassGroup(null);
			hiretype = covernoteService.getHireType(null);
			ownershiptype = covernoteService.getOwnerShipType(null);
			getlocation = covernoteService.getLocation(null);
			getvehicleusage= covernoteService.getVehicleUsage(null);
			getadditionalusage = covernoteService.getAdditionalUsage(null);
			getcnclass = covernoteService.getCnClass(null);
			getvehiclebody = covernoteService.getVehicleBody(null);
			getsafetycode = covernoteService.getSafetyCode(null);
			getdriverexperience = covernoteService.getDriverExperience(null);
			getantitheftcode = covernoteService.getAntiTheftCode(null);
			getgaraged = covernoteService.getGaraged(null);
			getperformanceaesthetic = covernoteService.getPerformanceAesthetic(null);
			getvehiclecapacity = covernoteService.getVehicleCapacity(null);
			getfunctionalmodification=covernoteService.getFunctionalModification(null);
		
			
			mainList.addAll(0, covernoteclass);
			mainList.addAll(1, covernotetype);
			mainList.addAll(2, coveragetype);
			mainList.addAll(3, classgroup);
			mainList.addAll(4, hiretype);
			mainList.addAll(5, ownershiptype);
			mainList.addAll(6, getlocation);
			mainList.addAll(7, getvehicleusage);
			mainList.addAll(8, getadditionalusage);
			mainList.addAll(9, getcnclass);
			mainList.addAll(10, getvehiclebody);
			mainList.addAll(11, getsafetycode);
			mainList.addAll(12, getdriverexperience);
			mainList.addAll(13, getgaraged);
			mainList.addAll(14, getantitheftcode);
			mainList.addAll(15, getperformanceaesthetic);
			mainList.addAll(16, getvehiclecapacity);
			mainList.addAll(17, getfunctionalmodification);
			

			jsonString = gson.toJson(mainList);
			//System.out.println("coverdrop\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}
}
