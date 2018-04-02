/**
 * 
 */
package com.kgisl.nsure.quotation.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
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
import com.kgisl.nsure.quotation.Service.QuotationService;
import com.kgisl.nsure.quotation.domain.QuotationDO;

import net.sf.json.JSON;

/**
 * @author mohan
 *
 */
@Controller
public class QuotationController {

	@Autowired
	QuotationService quotationService;
	@RequestMapping(value = "/file", method = RequestMethod.GET)
	public ModelAndView Page(@ModelAttribute("loginDO") LoginDO login, HttpServletRequest request)
			throws Exception {
		
		return new ModelAndView("testt/newfile");
	}

	/** Quotation */
	@RequestMapping(value = "/quotation", method = RequestMethod.GET)
	public ModelAndView CRCInitialPage(@ModelAttribute("loginDO") LoginDO login, HttpServletRequest request)
			throws Exception {
		
		return new ModelAndView("quot/quotation");
	}
	/** Quotation */
	@RequestMapping(value = "/nbquotation", method = RequestMethod.GET)
	public ModelAndView nbquotation(@ModelAttribute("loginDO") LoginDO login, HttpServletRequest request)
			throws Exception {
		
		return new ModelAndView("quot/nbquotation");
	}
	
	@RequestMapping(value="/savemohanNamedDrivers", method = RequestMethod.POST)  
    public ResponseEntity<QuotationDO> registerStudent(@RequestBody List<QuotationDO> stdList) {    


        /*if (registerService.isStudentExist(stdList)) {
            return new ResponseEntity<RegisterDTO>(HttpStatus.CREATED);
        }*/
		System.out.println("MMM");
        return new ResponseEntity<QuotationDO>(HttpStatus.CREATED);

    }
	
	
	
	
	
	/** CoverNote */
	@RequestMapping(value = "/covernote", method = RequestMethod.GET)
	public ModelAndView cn(@ModelAttribute("quotationFormData") QuotationDO quotationdo, BindingResult result,
			HttpServletRequest request, HttpSession session) {
		return new ModelAndView("cn/covernote");
	}
	/** CoverNote */
	@RequestMapping(value = "/nbcovernote", method = RequestMethod.GET)
	public ModelAndView nbcn(@ModelAttribute("quotationFormData") QuotationDO quotationdo, BindingResult result,
			HttpServletRequest request, HttpSession session) {
		return new ModelAndView("cn/nbcovernote");
	}

	/** Premium */
	@RequestMapping(value = "/premium", method = RequestMethod.GET)
	public ModelAndView endorsement(@ModelAttribute("login") QuotationDO quotationdo) {

		return new ModelAndView("premium/premium");
	}

	/** Named Drivers **/
	@RequestMapping(value = "/nameddrivers", method = RequestMethod.GET)
	public ModelAndView namedDrivers(@ModelAttribute("login") QuotationDO quotationdo) {

		return new ModelAndView("endor/nameddrivers");
	}
	/** Premium */
	@RequestMapping(value = "/nbpremium", method = RequestMethod.GET)
	public ModelAndView nbendorsement(@ModelAttribute("login") QuotationDO quotationdo) {

		return new ModelAndView("premium/nbpremium");
	}

	/** Named Drivers **/
	@RequestMapping(value = "/nbnameddrivers", method = RequestMethod.GET)
	public ModelAndView nbnamedDrivers(@ModelAttribute("login") QuotationDO quotationdo) {

		return new ModelAndView("endor/nbnameddrivers");
	}

	@RequestMapping(value = "/endorsementdetails", method = RequestMethod.GET)
	public ModelAndView endorsementDetails(@ModelAttribute("login") QuotationDO quotationdo) {

		return new ModelAndView("endor/endorsementdetails");
	}

	@RequestMapping(value = "/mohan", method = RequestMethod.GET)
	public ModelAndView test(@ModelAttribute("login") QuotationDO quotationdo, HttpServletRequest request)
			throws Exception {
		request.getSession().setAttribute("QuotationDO", request.getSession().getId());

		return new ModelAndView("testt/nameddrivers");
	}

	/** Named Driver Save **/
	

	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public ModelAndView addCustomer(@ModelAttribute("userFormData") QuotationDO quotationDO, BindingResult result,
			HttpServletRequest request, HttpSession session) {
		quotationService.insert(quotationDO);
		// System.out.println(userFormData.getName());
		return new ModelAndView("quot/user");
	}

	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public ModelAndView details(@ModelAttribute("userFormData") QuotationDO quotationDO, BindingResult result,
			HttpServletRequest request, HttpSession session) {
		// quotationService.insert(quotationDO);
		// System.out.println(userFormData.getName());
		return new ModelAndView("quot/user");
	}

	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public ModelAndView payment(@ModelAttribute("userFormData") QuotationDO quotationDO, BindingResult result,
			HttpServletRequest request, HttpSession session) {
		// quotationService.insert(quotationDO);
		// System.out.println(userFormData.getName());
		return new ModelAndView("payment/payment");
	}
	/*----------------------------------------------------------------------------------*/
	
	@RequestMapping(value = "/AngularJSFormSubmit", method = RequestMethod.GET)
	public ModelAndView AngularJSFormSubmit(@ModelAttribute("userFormData") QuotationDO quotationDO, BindingResult result,
			HttpServletRequest request, HttpSession session) {
		return new ModelAndView("testt/AngularJSFormSubmit");
	}
	
	/*Save Named Drivers using Angular post call*/
	@RequestMapping(value = "/saveNamedDrivers", method = RequestMethod.POST)
	public @ResponseBody QuotationDO saveNamedDrivers(@RequestBody QuotationDO quotationDO) {
		quotationService.saveNamedDrivers(quotationDO);
		return quotationDO;
	}
	
	/*saveEndorsementDetails using Angular post call
	@RequestMapping(value = "/saveEndorsementDetails", method = RequestMethod.POST)
	public @ResponseBody QuotationDO saveEndorsementDetails(@RequestBody QuotationDO quotationDO) {
		//quotationService.saveNamedDrivers(quotationDO);
		
		return quotationDO;
	}*/
	
	
	/*==================================================================================*/

	@RequestMapping(value = "/mpa", method = RequestMethod.POST)
	public ModelAndView saveMpa(@ModelAttribute("mpadata") QuotationDO quotationDO,
			BindingResult result, HttpServletRequest request, HttpSession session) {

		//System.out.println(quotationDO.getNameddrivername());
		quotationService.saveMpa(quotationDO);
		return new ModelAndView("redirect:premium");
	}
	
	@RequestMapping(value = "/extraCoverageSave", method = RequestMethod.POST)
	public ModelAndView saveExtraCoverage(@ModelAttribute("extraCoverage") QuotationDO quotationDO,
			BindingResult result, HttpServletRequest request, HttpSession session) {
		
		quotationService.saveExtraCoverage(quotationDO);
		return new ModelAndView("redirect:nameddrivers");
	}
	
	/* Quotation Save */
	/*@RequestMapping(value = "/save_quotation_form", method = RequestMethod.POST)
	public ModelAndView saveQuotation(@ModelAttribute("quotationFormData") QuotationDO quotationDO,
			BindingResult result, HttpServletRequest request, HttpSession session) {*/
	@RequestMapping(value = "/saveQuotationForm", method = RequestMethod.POST)
	public @ResponseBody QuotationDO saveQuotation(@RequestBody QuotationDO quotationDO) {

		/*session.setAttribute("sourceType", quotationDO.getSourceType());
		session.setAttribute("accountCode", quotationDO.getAccountCode());
		session.setAttribute("branch", quotationDO.getBranch());
		session.setAttribute("accountName", quotationDO.getAccountName());
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
		session.setAttribute("email", quotationDO.getEmail());

		session.setAttribute("gstregistrationdate", quotationDO.getGstregistrationdate());
		session.setAttribute("gstexpirydate", quotationDO.getGstexpirydate());
		session.setAttribute("website", quotationDO.getWebsite());
		session.setAttribute("trafficviolation", quotationDO.getTrafficviolation());
		session.setAttribute("vipstatus", quotationDO.getVipstatus());
		session.setAttribute("permanentaddress", quotationDO.getPermanentaddress());
		session.setAttribute("statecountry", quotationDO.getStatecountry());
		session.setAttribute("telnohouse", quotationDO.getTelnohouse());
		session.setAttribute("telnooffice", quotationDO.getTelnooffice());
		session.setAttribute("faxnohouse", quotationDO.getFaxnohouse());
		session.setAttribute("faxnooffice", quotationDO.getFaxnooffice());
		session.setAttribute("remarks", quotationDO.getRemarks());
		session.setAttribute("datasignedcustomer", quotationDO.getDatasignedcustomer());
		session.setAttribute("crosssignedcustomer", quotationDO.getCrosssignedcustomer());
		session.setAttribute("oldicpassportno", quotationDO.getOldicpassportno());
		session.setAttribute("salutation", quotationDO.getSalutation());
		session.setAttribute("age", quotationDO.getAge());
		session.setAttribute("employementstatus", quotationDO.getEmployementstatus());
		session.setAttribute("gstregistrationno", quotationDO.getGstregistrationno());

		*/
		System.out.println("sourceType" + quotationDO.getSourceType());
		System.out.println("accountCode" + quotationDO.getAccountCode());
		System.out.println("branch" + quotationDO.getBranch());
		System.out.println("accountName" + quotationDO.getAccountName());
		System.out.println("newIcNo" + quotationDO.getNewIcNo());
		System.out.println("name" + quotationDO.getName());
		System.out.println("nationality" + quotationDO.getNationality());
		System.out.println("race" + quotationDO.getRace());

		System.out.println("dateOfBirth" + quotationDO.getDateOfBirth());
		System.out.println("gender" + quotationDO.getGender());
		System.out.println("maritalStatus" + quotationDO.getMaritalStatus());
		System.out.println("occupation" + quotationDO.getOccupation());
		System.out.println("gstRegistered" + quotationDO.getGstRegistered());
		System.out.println("address" + quotationDO.getAddress());
		System.out.println("postCode" + quotationDO.getPostCode());
		System.out.println("countryCode" + quotationDO.getCountryCode());
		System.out.println("mobileNo" + quotationDO.getMobileNo());
		System.out.println("pdpa" + quotationDO.getPdpa());
		System.out.println("css" + quotationDO.getCss());
		System.out.println("businessRegNo" + quotationDO.getBusinessRegNo());
		System.out.println("typeOfBusiness" + quotationDO.getTypeOfBusiness());
		System.out.println("oldIcNo" + quotationDO.getOldIcNo());

		System.out.println("gstregistrationdate" + quotationDO.getGstregistrationdate());
		System.out.println("gstexpirydate" + quotationDO.getGstexpirydate());
		System.out.println("website" + quotationDO.getWebsite());
		System.out.println("trafficviolation" + quotationDO.getTrafficviolation());
		System.out.println("vipstatus" + quotationDO.getVipstatus());
		System.out.println("permanentaddress" + quotationDO.getPermanentaddress());
		System.out.println("statecountry" + quotationDO.getStatecountry());
		System.out.println("telnohouse" + quotationDO.getTelnohouse());
		System.out.println("telnooffice" + quotationDO.getTelnooffice());
		System.out.println("faxnohouse" + quotationDO.getFaxnohouse());
		System.out.println("faxnooffice" + quotationDO.getFaxnooffice());
		System.out.println("remarks" + quotationDO.getRemarks());
		System.out.println("datasignedcustomer" + quotationDO.getDatasignedcustomer());
		System.out.println("crosssignedcustomer" + quotationDO.getCrosssignedcustomer());
		System.out.println("oldicpassportno" + quotationDO.getOldicpassportno());
		System.out.println("salutation" + quotationDO.getSalutation());
		System.out.println("age" + quotationDO.getAge());
		System.out.println("employementstatus" + quotationDO.getEmployementstatus());
		System.out.println("gstregistrationno" + quotationDO.getGstregistrationno());

		//quotationService.saveQuotation(quotationDO);
		//return new ModelAndView("redirect:covernote");
		return quotationDO;
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

	@RequestMapping(value = "/quotationSave", method = RequestMethod.POST)
	public @ResponseBody String getQuotSave(@RequestBody QuotationDO QuotDO, HttpServletRequest request) {

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
			// System.out.println("dummy\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}

	/* UI Grid */
	@RequestMapping(value = "/covernoteGrid", method = RequestMethod.GET)
	public @ResponseBody String covernoteGrid(HttpServletRequest request, HttpServletResponse response,
			QuotationDO quotationDO) {

		List<QuotationDO> covernotegrid = null;
		ArrayList<QuotationDO> mainList = new ArrayList<QuotationDO>();
		// System.out.println("covernoteGrid");
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

	/* Named Drivers Grid */
	@RequestMapping(value = "/namedDrivers", method = RequestMethod.GET)
	public @ResponseBody String namedDriversGrid(QuotationDO quotationDO, HttpServletRequest request) {

		List<QuotationDO> covernotegrid = null;
		ArrayList<QuotationDO> mainList = new ArrayList<QuotationDO>();
		// System.out.println("covernoteGrid");
		String jsonString = null;
		Gson gson = new Gson();
		try {
			covernotegrid = quotationService.namedDriversGrid(quotationDO);

			mainList.addAll(0, covernotegrid);
			jsonString = gson.toJson(mainList);
			// System.out.println("covernotegrid\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}
	
	/* Named Drivers Grid */
	@RequestMapping(value = "/extraCoverageGrid", method = RequestMethod.GET)
	public @ResponseBody String extraCoverage(QuotationDO quotationDO, HttpServletRequest request) {

		List<QuotationDO> covernotegrid = null;
		ArrayList<QuotationDO> mainList = new ArrayList<QuotationDO>();
		// System.out.println("covernoteGrid");
		String jsonString = null;
		Gson gson = new Gson();
		try {
			covernotegrid = quotationService.extraCoverageGrid(quotationDO);

			mainList.addAll(0, covernotegrid);
			jsonString = gson.toJson(mainList);
			// System.out.println("covernotegrid\n" + jsonString);
		} catch (Exception e) {
			System.out.println(e);
		}
		return jsonString;
	}

	/* Covernote Drop */
	/*
	 * @RequestMapping(value = "/covernoteDrop", method = RequestMethod.GET)
	 * public @ResponseBody String covernoteDrop(HttpServletRequest request) {
	 * 
	 * List<QuotationDO> covernotegrid = null; ArrayList<QuotationDO> mainList = new
	 * ArrayList<QuotationDO>();
	 * 
	 * String jsonString = null; Gson gson = new Gson(); try { covernotegrid =
	 * quotationService.getcontactType(null);
	 * 
	 * mainList.addAll(0, covernotegrid);
	 * 
	 * jsonString = gson.toJson(mainList); System.out.println("covernotegrid\n" +
	 * jsonString); } catch (Exception e) { System.out.println(e); } return
	 * jsonString; }
	 */

}
