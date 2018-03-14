/**
 * 
 */
package com.kgisl.nsure.quotation.controller;

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
import com.kgisl.nsure.quotation.Service.QuotationService;
import com.kgisl.nsure.quotation.domain.QuotationDO; 

/**
 * @author mohan
 *
 *//*
	 * @RequestMapping(value = "/QuotationController")
	 */
@Controller
public class QuotationController {

	@Autowired
	QuotationService quotationService;

	/** Quotation */
	@RequestMapping(value = "/quotation", method = RequestMethod.GET)
	public ModelAndView CRCInitialPage(@ModelAttribute("loginDO") LoginDO login, HttpServletRequest request)
			throws Exception {
		request.getSession().setAttribute("SESSION_COUNT", request.getSession().getId());

		// System.out.println("quotation");
		// return new ModelAndView("auth/crclogin");
		return new ModelAndView("quot/quotation");
	}

	/** CoverNote */
	@RequestMapping(value = "/covernote", method = RequestMethod.GET)
	public ModelAndView cn(@ModelAttribute("quotationFormData") QuotationDO quotationdo, BindingResult result,
			HttpServletRequest request, HttpSession session) {

		/*
		 * String jsonString = null; Gson gson = new Gson(); jsonString =
		 * gson.toJson(quotationdo); System.out.println(jsonString);
		 */

		return new ModelAndView("cn/covernote");
	}

	/** Premium */
	@RequestMapping(value = "/premium", method = RequestMethod.GET)
	public ModelAndView endorsement(@ModelAttribute("login") QuotationDO quotationdo) {

		return new ModelAndView("premium/premium");
	}
	/**Named Drivers**/
	@RequestMapping(value = "/nameddrivers", method = RequestMethod.GET)
	public ModelAndView namedDrivers(@ModelAttribute("login") QuotationDO quotationdo) {

		return new ModelAndView("endor/nameddrivers");
	}

	@RequestMapping(value = "/endorsementdetails", method = RequestMethod.GET)
	public ModelAndView endorsementDetails(@ModelAttribute("login") QuotationDO quotationdo) {

		return new ModelAndView("endor/endorsementdetails");
	}

	@RequestMapping(value = "/mohan", method = RequestMethod.GET)
	public ModelAndView test(@ModelAttribute("login") QuotationDO quotationdo, HttpServletRequest request)
			throws Exception {
		request.getSession().setAttribute("QuotationDO", request.getSession().getId());

		return new ModelAndView("testt/newfile");
	}

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView addCustomer(@ModelAttribute("userFormData") QuotationDO quotationDO, BindingResult result,
			HttpServletRequest request, HttpSession session) {
		quotationService.insert(quotationDO);
		// System.out.println(userFormData.getName());
		return new ModelAndView("quot/quotation");
	}

	@RequestMapping(value = "/save_quotation_form", method = RequestMethod.POST)
	public ModelAndView saveQuotation(@ModelAttribute("quotationFormData") QuotationDO quotationDO,
			BindingResult result, HttpServletRequest request, HttpSession session) {
		
		session.setAttribute("sourceType", quotationDO.getSourceType());
		session.setAttribute("accountCode", quotationDO.getAccountCode());
		session.setAttribute("branch", quotationDO.getBranch());
		session.setAttribute("accountName",quotationDO.getAccountName());
		session.setAttribute("newIcNo", quotationDO.getNewIcNo());
		session.setAttribute("name", quotationDO.getName());
		session.setAttribute("nationality", quotationDO.getNationality());
		session.setAttribute("race", quotationDO.getRace());
		session.setAttribute("dateOfBirth", quotationDO.getDateOfBirth());
		session.setAttribute("gender", quotationDO.getGender());
		session.setAttribute("maritalStatus", quotationDO.getMaritalStatus());
		session.setAttribute("occupation", quotationDO.getOccupation());
		session.setAttribute("gstRegistered", quotationDO.getGstRegistered());
		session.setAttribute("address", quotationDO.getAddress());
		session.setAttribute("postCode", quotationDO.getPostCode());
		session.setAttribute("countryCode", quotationDO.getCountryCode());
		session.setAttribute("mobileNo", quotationDO.getMobileNo());
		session.setAttribute("pdpa", quotationDO.getPdpa());
		session.setAttribute("css", quotationDO.getCss());
		session.setAttribute("businessRegNo", quotationDO.getBusinessRegNo());
		session.setAttribute("typeOfBusiness", quotationDO.getTypeOfBusiness());
		session.setAttribute("oldIcNo", quotationDO.getOldIcNo());
		/*
		session.setAttribute("newIcNo", quotationDO.get);
		session.setAttribute("newIcNo", quotationDO.get);
		session.setAttribute("newIcNo", quotationDO.get);*/
		
		quotationService.saveQuotation(quotationDO);
		System.out.println(session.getAttribute("sourceType"));
		System.out.println(session.getAttribute("accountCode"));
		
		return new ModelAndView("redirect:covernote");
	}
	
	@RequestMapping(value = "/quotationDrop", method = RequestMethod.GET)
	public @ResponseBody String getEndorCategory(HttpServletRequest request) {

		List<QuotationDO> contactType = null;
		List<QuotationDO> sourceType = null;
		
		ArrayList<QuotationDO> mainList = new ArrayList<QuotationDO>();

		String jsonString = null;
		Gson gson = new Gson();
		try {
			contactType = quotationService.getcontactType(null);
			sourceType = quotationService.getsourceType(null);

			mainList.addAll(0, contactType);
			mainList.addAll(1, sourceType);
			jsonString = gson.toJson(mainList);
			//System.out.println("dummy\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}
	
	/* UI Grid */
	@RequestMapping(value = "/covernoteGrid", method = RequestMethod.GET)
	public @ResponseBody String covernoteGrid(QuotationDO quotationDO, HttpServletRequest request) {

		List<QuotationDO> covernotegrid = null;
		ArrayList<QuotationDO> mainList = new ArrayList<QuotationDO>();
		System.out.println("covernoteGrid");
		String jsonString = null;
		Gson gson = new Gson();
		try {
			covernotegrid = quotationService.getcnGrid(quotationDO);

			mainList.addAll(0, covernotegrid);
			jsonString = gson.toJson(mainList);
			System.out.println("covernotegrid\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}

	
	/* Covernote Drop */
	/*@RequestMapping(value = "/covernoteDrop", method = RequestMethod.GET)
	public @ResponseBody String covernoteDrop(HttpServletRequest request) {

		List<QuotationDO> covernotegrid = null;
		ArrayList<QuotationDO> mainList = new ArrayList<QuotationDO>();

		String jsonString = null;
		Gson gson = new Gson();
		try {
			covernotegrid = quotationService.getcontactType(null);

			mainList.addAll(0, covernotegrid);
			
			jsonString = gson.toJson(mainList);
			System.out.println("covernotegrid\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}*/

}
