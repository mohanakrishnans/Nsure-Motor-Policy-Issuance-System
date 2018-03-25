/**
 * 
 */
package com.kgisl.nsure.report.controller;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.kgisl.nsure.covernote.domain.CovernoteDO;
import com.kgisl.nsure.covernote.services.CovernoteService;
import com.kgisl.nsure.quotation.Service.QuotationService;
import com.kgisl.nsure.quotation.domain.QuotationDO;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 * @author mohan
 *
 */
@Controller
public class ReportController {
	@Autowired
	QuotationService quotationService;
	
	@Autowired
	CovernoteService covernoteService;
	
	/*@SuppressWarnings({ "unchecked", "rawtypes" })
	*/
	@SuppressWarnings({ "rawtypes", "unchecked", "deprecation" })
	@RequestMapping(value = "/mohanreport", method = RequestMethod.GET)
	public void PrintDet(QuotationDO quotationDO,HttpServletRequest request, HttpServletResponse response,HttpSession session) throws IOException {  
		
		Collection quotationScheduleList = new ArrayList();
		   // Quotation NB and Quotation Renewal
		 /*  if (motorTransactionDO.getCoverNoteTypeId() == GlobalNames.QUOTATION_NEW || motorTransactionDO.getCoverNoteTypeId() == GlobalNames.QUOTATION_RENEW) {
		    CommonPrintDO quotationMotorDO = new CommonPrintDO();
		    quotationId = motorTransactionDO.getQuotationId();*/

		    quotationScheduleList = (ArrayList < QuotationDO > ) quotationService.namedDriversGrid(quotationDO);
		
		
		
		
		
		//System.out.println(request.getContextPath()+"MohaNNNNNNNNNNNNNNN");
		//ArrayList < QuotationDO > schedulePrintList = null;
		//List<QuotationDO> contactType = quotationService.getcontactType(quotationDO);
		//System.out.println(JSON.stringify(contactType));
		//schedulePrintList.addAll(0,contactType);
	      
		
		try {					
			String realPath = request.getContextPath();
			System.out.println(realPath+" MohaN");
			//JasperDesign jd  = JRXmlLoader.load(getClass().getResourceAsStream("/Jrxml/reportdummy.jasper"));
			String report ="http://localhost/nsure/resources/reportdummy.jasper";
			
			
			///InputStream reportStream = QuotationService.class.getResourceAsStream(report);
			
			//InputStream input = this.getClass().getResourceAsStream("/reportdummy.jasper");
            //JasperDesign design = JRXmlLoader.load(input);
            //JasperReport report = JasperCompileManager.compileReport(report1);
			
			//InputStream jasperStream = this.getClass().getResourceAsStream("E:/Nsure/Nsure-Motor-Policy-Issuance-System/RHBI/Jrxml/reportdummy.jasper");
		   // JasperReport report = (JasperReport) JRLoader.loadObject(jasperStream);
			//InputStream is=this.getClass().getResourceAsStream("/Jrxml/Cherry.jrxml");
					//JasperReport jasperReport = JasperCompileManager.compileReport(is);
			
					String path = session.getServletContext().getRealPath("/Jrxml/Cherry.jrxml");
					//InputStream input = new FileInputStream(new File(path));
					InputStream input = new FileInputStream(new File("E:/Nsure/Nsure-Motor-Policy-Issuance-System/RHBI/src/main/java/com/kgisl/nsure/report/controller/reportdummy.jasper"));
					JasperDesign jasperDesign = JRXmlLoader.load(input);
					JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
					
					
			Map parameter = new HashMap();
			/*QuotationDO quotationMotorDO;
			String nameDriverName ="";
			if (quotationScheduleList.size() != 0) {
				Iterator it = quotationScheduleList.iterator();
				while (it.hasNext()) {
					quotationMotorDO = (QuotationDO) it.next();
					nameDriverName = quotationMotorDO.getNameddrivername();
					ArrayList<QuotationDO> QuotArray = new ArrayList<QuotationDO>(); 
					QuotArray.add(quotationMotorDO);
					parameter.put("QuotationScheduleList",new JRBeanCollectionDataSource(QuotArray));
				}
			}*/
			
			
			parameter.put("classid","mohan");
			parameter.put("gstPremiumAmt",quotationDO.getAccountName());
			parameter.put("QuotationScheduleList",new JRBeanCollectionDataSource(quotationScheduleList));
			parameter.put("BaseDir",new File(realPath));											
			JRBeanCollectionDataSource dataSource = new JRBeanCollectionDataSource(quotationScheduleList);
			if(report==null || dataSource==null || parameter== null) {
				System.out.println("X");
			}
			JasperPrint jp = JasperFillManager.fillReport(jasperReport,parameter, dataSource);
			JasperExportManager.exportReportToPdfFile(jp, "test.pdf");
			byte[] pdf = JasperExportManager.exportReportToPdf(jp);	
			System.out.println(""+pdf);
			ArrayList list = new ArrayList();
			list.add(new ByteArrayInputStream(pdf));
			session.setAttribute("net.sf.jasperreports.j2ee.jasper_print_list",list);
			//
			response.setContentType("application/pdf");
			response.addHeader("Content-disposition", "attachment; filename=Schedule Print.pdf");
			OutputStream out = response.getOutputStream();
			JasperExportManager.exportReportToPdfStream(jp,out);
			out.flush();
			out.close();
			/*JRExporter exporter = new JRPdfExporter();
	        exporter.setParameter(JRExporterParameter.JASPER_PRINT, print);
	        exporter.setParameter(JRExporterParameter.OUTPUT_STREAM, baos);
	        exporter.exportReport();
	        setRawData(baos.toByteArray());*/
			 
		//System.out.println(request.getContextPath()+ "/letters/printpdf");
		 //String realPath = session.getServletContext().getRealPath("/");

		 /* File file = new File(realPath+"/reports/saida/output/");
		  file.mkdirs();
		  JasperExportManager.exportReportToPdfFile(jp, file.getAbsolutePath() +"reportName.pdf");		*/
		 // response.sendRedirect(request.getContextPath()+ "/letters/printpdf");
			
 
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		
        /*ttpSession session = request.getSession();        
        ArrayList list = new ArrayList();
        ArrayList printDetails=new ArrayList();
        ArrayList subDetails = new ArrayList();
        String realPath = request.getSession().getServletContext().getRealPath("/");
        Map reportparameter = new HashMap();

        String report ="E:/Nsure/Nsure-Motor-Policy-Issuance-System/RHBI/Jrxml/";
        reportparameter.put("BaseDir", new File(report));
        realPath + 
        report = report+"reportdummy.jasper";
        try{
        	
            List reportFormDO=covernoteService.getCovernoteClass(null),covernotetype ;

            subDetails.addAll(covernoteService.getCovernoteType(null));
            printDetails.add(reportFormDO);
            reportparameter.put("SubDetails", new JRBeanCollectionDataSource(subDetails));
            JasperPrint    jasperPrint = JasperFillManager.fillReport(report, reportparameter, new JRBeanCollectionDataSource(printDetails));            
            if (jasperPrint != null) {
                byte[] pdf = JasperExportManager.exportReportToPdf(jasperPrint);
                list.add(new ByteArrayInputStream(pdf));
            }
            session.setAttribute("net.sf.jasperreports.j2ee.jasper_print_list", list);
            response.sendRedirect(request.getContextPath() + "/filter/printpdf");
            report = "";
            reportparameter.clear();            
        }catch(Exception e){
            System.out.println(e);
        }*/
    }
	
	
	
}
