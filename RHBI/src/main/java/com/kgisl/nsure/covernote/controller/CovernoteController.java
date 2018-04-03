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
import org.springframework.web.bind.annotation.RequestBody;
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

	@Autowired
	QuotationDO quotationDO;

	/** Premium */
	@RequestMapping(value = "/premium", method = RequestMethod.GET)
	public ModelAndView endorsement(@ModelAttribute("login") CovernoteDO covernotedo, HttpSession session) {

		/*
		 * int number = 20000; String numberAsString = Integer.toString(number);
		 * covernotedo.setVehiclepurchasedate(numberAsString);
		 * covernotedo.setSuminsured(Integer.toString(5000));
		 */

		int suminsured1 = 1000;// =(Integer)session.getAttribute("suminsured");
		int trailersuminsured1 = 2000;// =(Integer)session.getAttribute("trailersuminsured");
		int basic_premium = 10500;
		int trailer_premium=0;
		if (session.getAttribute("trailersuminsured")!=null) {

			 trailer_premium = 1000;
		} 
		int extracoverage=0;
		if(session.getAttribute("extracoverage")!=null) {
			extracoverage=1000;
		}
		int allriderpercentage = 10;
		int tb = ((basic_premium + trailer_premium) + ((basic_premium + trailer_premium) / 10));
		System.out.println(tb);
		int  anual_premium=tb;
		
		session.setAttribute("suminsured1", suminsured1);
		session.setAttribute("trailersuminsured1", trailersuminsured1);
		session.setAttribute("allrideramount", allriderpercentage);
		session.setAttribute("basicpremium", basic_premium);
		session.setAttribute("totalbasic", tb);
		session.setAttribute("trailerpremium", trailer_premium);
		int afterloading=0;
		int stampduty=10;
		int gross_premium = anual_premium+afterloading+extracoverage+stampduty;
		
		// session.setAttribute("vehiclenumber1", "TN 47 AZ 1");
		// session.setAttribute("policynumber", 1450314);
		int gst=6;
		int gstoncommission=2;
		float gstrm = (anual_premium/100)*gst;
		float gstoncommissionrm= (anual_premium/100)*gstoncommission;
		int commission=15;
		float commissionrm=(anual_premium/100)*commission;
		session.setAttribute("annualpremium", anual_premium);
		session.setAttribute("ncdamount", 0);
		session.setAttribute("grosspremium", gross_premium);
		session.setAttribute("gst", gst);
		session.setAttribute("gstrm", gstrm);
		
		
		float amountpayableclient=gstoncommissionrm+commissionrm+gross_premium;
		float amountpayableagent=(amountpayableclient-commissionrm);
		session.setAttribute("gstoncommission", gstoncommission);
		session.setAttribute("gstoncommissionrm", gstoncommissionrm);
		session.setAttribute("amountpayableagent", amountpayableagent);
		float actpremium=amountpayableagent;
		session.setAttribute("actpremium", actpremium);
		session.setAttribute("afterloading", afterloading);
		session.setAttribute("extracoverage", extracoverage);
		session.setAttribute("stampduty", stampduty);
		session.setAttribute("fleetdiscount", 1450314);
		session.setAttribute("commission", commission);
		session.setAttribute("commissionrm", commissionrm);
		session.setAttribute("amountpayableclient", amountpayableclient);
		session.setAttribute("excessdamageclaim", 0);
		session.setAttribute("voluntryexcess", 0);
		session.setAttribute("voluntryexcessrm", 0);
		
		
		
		

		int suminsured = 5000;
		int trailersuminsured = 3000;

		// int
		return new ModelAndView("premium/premium");
	}

	/* Quotation Save */
	@RequestMapping(value = "/save_premium_form", method = RequestMethod.POST)
	public ModelAndView savePremium(@ModelAttribute("premiumFormData") CovernoteDO covernoteDO, BindingResult result,
			HttpServletRequest request, HttpSession session) {
		// @RequestMapping(value = "/saveQuotationForm", method = RequestMethod.POST)
		// public @ResponseBody QuotationDO saveQuotation(@RequestBody QuotationDO
		// quotationDO) {

		covernoteService.savePremium(covernoteDO);
		return new ModelAndView("redirect:covernote");
		// return quotationDO;
	}

	/** Quotation */
	@RequestMapping(value = "/coverclass", method = RequestMethod.GET)
	public ModelAndView covernoteClass(@ModelAttribute("loginDO") LoginDO login, HttpServletRequest request)
			throws Exception {
		// request.getSession().setAttribute("SESSION_COUNT",
		// request.getSession().getId());

		return new ModelAndView("cn/covernote");
	}

	@RequestMapping(value = "/cnOptions", method = RequestMethod.GET)
	public ModelAndView cnClient(@ModelAttribute("quotationFormData") QuotationDO quotationDO, BindingResult result,
			HttpServletRequest request, HttpSession session) {

		return new ModelAndView("cn/cnclient");
	}

	/*
	 * saveEndorsementDetails using Angular post call
	 * 
	 * @RequestMapping(value = "/saveEndorsementDetails", method =
	 * RequestMethod.POST) public @ResponseBody CovernoteDO
	 * saveEndorsementDetails(@RequestBody CovernoteDO quotationDO) {
	 * //quotationService.saveNamedDrivers(quotationDO);
	 * System.out.println(quotationDO.getPreviouspolicyno());
	 * System.out.println(quotationDO.getCovernoteno());
	 * System.out.println(quotationDO.getPocdate());
	 * System.out.println(quotationDO.getEffectivedate());
	 * System.out.println(quotationDO.getIssueddate());
	 * System.out.println(quotationDO.getEndorsementtype());
	 * System.out.println(quotationDO.getExpiredate());
	 * 
	 * 
	 * return quotationDO; }
	 */
	/* saveEndorsementDetails using Angular post call */
	@RequestMapping(value = "/saveEndorsementDetails", method = RequestMethod.POST)
	public @ResponseBody CovernoteDO saveEndorsementDetails(@RequestBody CovernoteDO quotationDO) {
		// quotationService.saveNamedDrivers(quotationDO);
		/*System.out.println("11111111\n" + quotationDO.getPreviouspolicyno());
		System.out.println(quotationDO.getCovernoteno());
		System.out.println(quotationDO.getPocdate());
		System.out.println(quotationDO.getEffectivedate());
		System.out.println(quotationDO.getIssueddate());
		System.out.println(quotationDO.getEndorsementtype());
		System.out.println(quotationDO.getExpiredate() + "\n1111111111111111");*/

		covernoteService.saveEndorsementDetails(quotationDO);

		return quotationDO;
	}
	/* Named Drivers Grid */
	@RequestMapping(value = "/endorsementfetch", method = RequestMethod.GET)
	public @ResponseBody String endorsementfetch(CovernoteDO quotationDO, HttpServletRequest request) {

		List<CovernoteDO> covernotegrid = null;
		ArrayList<CovernoteDO> mainList = new ArrayList<CovernoteDO>();
		// System.out.println("covernoteGrid");
		String jsonString = null;
		Gson gson = new Gson();
		try {
			covernotegrid = covernoteService.endorsementfetch(quotationDO);

			mainList.addAll(0, covernotegrid);
			jsonString = gson.toJson(mainList);
			// System.out.println("covernotegrid\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}

	/* Convert to Covernote using Angular post call */
	@RequestMapping(value = "/convertCovernote", method = RequestMethod.POST)
	public @ResponseBody CovernoteDO convertCovernote(@RequestBody CovernoteDO quotationDO) {
		covernoteService.convertCovernote(quotationDO);
		System.out.println(quotationDO.getCovernoteid());

		return quotationDO;
	}

	/* Cancel to Covernote using Angular post call */
	@RequestMapping(value = "/cancelCovernote", method = RequestMethod.POST)
	public @ResponseBody CovernoteDO cancelCovernote(@RequestBody CovernoteDO quotationDO) {
		covernoteService.cancelCovernote(quotationDO);
		System.out.println(quotationDO.getCovernoteid());

		return quotationDO;
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
		// System.out.println(session.getAttribute("sourceType"));
		// System.out.println(session.getAttribute("accountCode"));

		return new ModelAndView("redirect:nameddrivers");
	}

	/* CN options Grid */
	@RequestMapping(value = "/cnoptionGrid", method = RequestMethod.GET)
	public @ResponseBody String cnoptionGrid(CovernoteDO covernoteDO, HttpServletRequest request) {

		List<CovernoteDO> cnoptiongrid = null;
		ArrayList<CovernoteDO> mainList = new ArrayList<CovernoteDO>();
		// System.out.println("cnoptionGrid");
		String jsonString = null;
		Gson gson = new Gson();
		try {
			cnoptiongrid = covernoteService.cnoptionGrid(covernoteDO);

			mainList.addAll(0, cnoptiongrid);
			jsonString = gson.toJson(mainList);
			// System.out.println("cnoptiongrid\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}

	/* CN options Grid */
	@RequestMapping(value = "/cncovernteGrid", method = RequestMethod.GET)
	public @ResponseBody String cncovernteGrid(CovernoteDO covernoteDO, HttpServletRequest request) {

		List<CovernoteDO> cnoptiongrid = null;
		ArrayList<CovernoteDO> mainList = new ArrayList<CovernoteDO>();
		// System.out.println("cnoptionGrid");
		String jsonString = null;
		Gson gson = new Gson();
		try {
			cnoptiongrid = covernoteService.cncovernteGrid(covernoteDO);

			mainList.addAll(0, cnoptiongrid);
			jsonString = gson.toJson(mainList);
			// System.out.println("cnoptiongrid\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}

	/** Covernote DROP **/
	@RequestMapping(value = "/covernoteDrop", method = RequestMethod.GET)
	public @ResponseBody String covernoteDrop(HttpServletRequest request) {
		// System.out.println("x");
		List<CovernoteDO> covernoteclass = null;
		List<CovernoteDO> covernotetype = null;
		List<CovernoteDO> coveragetype = null;
		List<CovernoteDO> classgroup = null;
		List<CovernoteDO> hiretype = null;
		List<CovernoteDO> ownershiptype = null;
		List<CovernoteDO> getlocation = null;
		List<CovernoteDO> getvehicleusage = null;
		List<CovernoteDO> getadditionalusage = null;
		List<CovernoteDO> getcnclass = null;
		List<CovernoteDO> getvehiclebody = null;
		List<CovernoteDO> getsafetycode = null;
		List<CovernoteDO> getdriverexperience = null;
		List<CovernoteDO> getgaraged = null;
		List<CovernoteDO> getantitheftcode = null;
		List<CovernoteDO> getperformanceaesthetic = null;
		List<CovernoteDO> getvehiclecapacity = null;
		List<CovernoteDO> getfunctionalmodification = null;

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
			getvehicleusage = covernoteService.getVehicleUsage(null);
			getadditionalusage = covernoteService.getAdditionalUsage(null);
			getcnclass = covernoteService.getCnClass(null);
			getvehiclebody = covernoteService.getVehicleBody(null);
			getsafetycode = covernoteService.getSafetyCode(null);
			getdriverexperience = covernoteService.getDriverExperience(null);
			getantitheftcode = covernoteService.getAntiTheftCode(null);
			getgaraged = covernoteService.getGaraged(null);
			getperformanceaesthetic = covernoteService.getPerformanceAesthetic(null);
			getvehiclecapacity = covernoteService.getVehicleCapacity(null);
			getfunctionalmodification = covernoteService.getFunctionalModification(null);

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
			// System.out.println("coverdrop\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}
}
