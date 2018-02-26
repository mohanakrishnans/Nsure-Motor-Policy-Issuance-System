package com.kgisl.nsure.web.helper;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import org.apache.poi.ss.usermodel.Cell;

public class Utilities {
	public static Utilities util;
	
	public Utilities() {
	      // Exists only to defeat instantiation.
	}
	
	public static Utilities getInstance() {
		if(util == null) {
			util = new Utilities();
		}
		return util;
	}
	
	public static Date getSqlDateFromString(String date) {
		java.sql.Date sDate = null;
		try {
			if(date != null && date.trim().length() == 10){
				SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy");
				java.util.Date udate = sdf1.parse(date);
				sDate = new java.sql.Date(udate.getTime());
			}
		}catch (Exception e) {
			sDate = null;
		}
		return sDate;
	}
	
	public static java.util.Date getUtilDateFromString(String date) {
		java.util.Date udate = null;
		try {
			if(date != null && date.trim().length() == 10){
				SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy");
				udate = sdf1.parse(date);
			}
		} catch (Exception e) {
			udate = null;
		}
		return udate;
	}
	
	
	public static java.util.Date getUtilForISM(String date) {
		java.util.Date udate = null;
		try {
			if(date != null && date.trim().length() == 8){
				SimpleDateFormat sdf1 = new SimpleDateFormat("ddMMyyyy");
				udate = sdf1.parse(date);
			}
		} catch (Exception e) {
			udate = null;
		}
		return udate;
	}
	
	
	/**
	 * To Get SQL DateTime - By Ranjith
	 * @param date
	 * @return
	 */
	public static Timestamp getSqlDateTimeFromString(String date) {
		Timestamp timestamp=null;
		try {
			if(date != null){
				SimpleDateFormat sdf1 = new SimpleDateFormat("dd-MM-yyyy hh:mm:ss aa");
				java.util.Date udate = sdf1.parse(date);
				 timestamp=new Timestamp(udate.getTime());
			}
		}catch (Exception e) {
			timestamp = null;
		}
		return timestamp;
	}
	
	public static boolean checkLeapYear(String strDate) {
		boolean status = false;
		int year = 0;
		String[] array = strDate.split("-");

		if ((array != null) && (array.length != 0)) {
			year = Integer.parseInt(array[2]);
		}

		if ((year % 4) == 0) {
			status = true;
		}

		return status;
	}
	//To check whether String is parse to Number
	public static boolean isNumberString(String data) {
		boolean status = true;
		try{
			Double.parseDouble(data);
		}catch(Exception e){
			status = false;
		}
		return status;
	}
	
	//read Dynamic cell value and Convert to String From  Excel Cell 
	@SuppressWarnings("deprecation")
	public static String getExcelCellStringValue(Cell excelCell) {
		String cellValue = "";
		try{
			
			switch(excelCell.getCellType()) {
			   case Cell.CELL_TYPE_NUMERIC :
				  cellValue = Integer.toString((int)excelCell.getNumericCellValue());
			      break; 
			   case Cell.CELL_TYPE_STRING :
					  cellValue = excelCell.getStringCellValue();
				      break; 
			   case Cell.CELL_TYPE_BLANK :
					  cellValue = "";
				      break; 
			   case Cell.CELL_TYPE_FORMULA :
				   try{
					   cellValue = excelCell.getStringCellValue();
				   }catch(Exception e){
					   cellValue = Integer.toString((int)excelCell.getNumericCellValue());
				   }
				   break; 
			   default :
				   cellValue = "";
			}
		}catch(Exception e){
		}
		return cellValue;
	}
	//read Dynamic cell value and Convert Double value to String From  Excel Cell 
	@SuppressWarnings("deprecation")
	public static String getExcelCellStringDoubleValue(Cell excelCell) {
		String cellValue = "0.0";
		try{
			
			switch(excelCell.getCellType()) {
			   case Cell.CELL_TYPE_NUMERIC :
				  cellValue = Double.toString((double)excelCell.getNumericCellValue());
			      break; 
			   case Cell.CELL_TYPE_STRING :
					  cellValue = isNumberString(excelCell.getStringCellValue())?excelCell.getStringCellValue():"0.0";
				      break; 
			   case Cell.CELL_TYPE_BLANK :
					  cellValue = "0.0";
				      break; 
			   case Cell.CELL_TYPE_FORMULA :
				   try{
					   cellValue = isNumberString(excelCell.getStringCellValue())?excelCell.getStringCellValue():"0.0";
				   }catch(Exception e){
					   cellValue = Integer.toString((int)excelCell.getNumericCellValue());
				   }
				   break; 
			   default :
				   cellValue = "0.0";
			}
		}catch(Exception e){
		}
		return cellValue;
	}
	//read Dynamic cell value and Convert Integer value to String From  Excel Cell 
		@SuppressWarnings("deprecation")
		public static String getExcelCellStringIntValue(Cell excelCell) {
			String cellValue = "0";
			try{
				switch(excelCell.getCellType()) {
				   case Cell.CELL_TYPE_NUMERIC :
					  cellValue = Integer.toString((int)excelCell.getNumericCellValue());
				      break; 
				   case Cell.CELL_TYPE_STRING :
						  cellValue = isNumberString(excelCell.getStringCellValue())?excelCell.getStringCellValue():"0";
					      break; 
				   case Cell.CELL_TYPE_BLANK :
						  cellValue = "0";
					      break; 
				   case Cell.CELL_TYPE_FORMULA :
					   try{
						   cellValue = isNumberString(excelCell.getStringCellValue())?excelCell.getStringCellValue():"0";
					   }catch(Exception e){
						   cellValue = Integer.toString((int)excelCell.getNumericCellValue());
					   }
					   break; 
				   default :
					   cellValue = "0";
				}
			}catch(Exception e){
			}
			return cellValue;
		}
	//read Dynamic cell value and Convert  Date value to String From  Excel Cell 
	@SuppressWarnings("deprecation")
	public static String getExcelCellStringDateValue(Cell excelCell) {
		SimpleDateFormat df =new  SimpleDateFormat("dd-MM-yyyy");
		String cellValue = "";
		try{
			if(excelCell!=null){
				if(excelCell.getCellType()!=Cell.CELL_TYPE_BLANK && excelCell.getCellType()!=Cell.CELL_TYPE_STRING){
					cellValue =df.format(excelCell.getDateCellValue());
				}else if(excelCell.getCellType()==Cell.CELL_TYPE_STRING){
					cellValue =df.format(excelCell.getStringCellValue());
				}else{
					cellValue ="";
				}
			}
		}catch(Exception e){
		}
		return cellValue;
	}
	
	@SuppressWarnings("deprecation")
	public static String getExcelCellStringDateSpecialValue(Cell excelCell) {
		SimpleDateFormat df =new  SimpleDateFormat("dd-MM-yyyy");
		String cellValue = "";
		try{
			if(excelCell!=null){
				if(excelCell.getCellType()!=Cell.CELL_TYPE_BLANK && excelCell.getCellType()!=Cell.CELL_TYPE_STRING){
					cellValue =df.format(excelCell.getDateCellValue());
				}else if(excelCell.getCellType()==Cell.CELL_TYPE_STRING){
					cellValue =excelCell.getStringCellValue();
				}else{
					cellValue =excelCell.getStringCellValue();
				}
			}
		}catch(Exception e){
		}
		return cellValue;
	}

	public static String nullCheck(String input) {
		if (input == null) {
			return "";
		}
		return input;
	}
	
	//Vehicle Number Validation
	//Allows Only Alphanumeric or Alphanumeric with hyphen and slash
	public static Boolean isValidVehicleNo(String data) {
		boolean status=false;
		try{
			if(data!=null){
				String regExp = "((^[0-9]+[a-zA-Z]+)|(^[a-zA-Z]+[0-9]+))+[0-9a-zA-Z]*$" ;
				String regExp2 = "[a-zA-Z/-]+" ;
				String regExp3 = "^[\\w]{1}[\\w-//]*$" ;
			    if(data.matches(regExp) || (!data.matches(regExp2) && data.matches(regExp3)))
			    	  status=true;
			}
		}catch(Exception e){
		}
		return status;
	}
	
	public static String sqlDateToStringDate(java.sql.Date inputDate, String format) {
		String strDate = null;
		try {
			if(inputDate!=null){
				SimpleDateFormat df = new SimpleDateFormat(format);
				strDate = df.format(inputDate);
			}else{
				strDate = "";
			}
		} catch (Exception e) {
			throw e;
		}
		return strDate;
	}
	
	@SuppressWarnings("deprecation")
	public static double getExcelCellDoubleValue(Cell excelCell) {
		double cellValue = 0;
		try{
			
			switch(excelCell.getCellType()) {
			   case Cell.CELL_TYPE_NUMERIC :
				  cellValue = (double)excelCell.getNumericCellValue();
			      break; 
			   case Cell.CELL_TYPE_STRING :
					  cellValue = isNumberString(excelCell.getStringCellValue())?Double.parseDouble(excelCell.getStringCellValue()):0.0;
				      break; 
			   case Cell.CELL_TYPE_BLANK :
					  cellValue = 0;
				      break; 
			   case Cell.CELL_TYPE_FORMULA :
				   try{
					   cellValue = isNumberString(excelCell.getStringCellValue())?Double.parseDouble(excelCell.getStringCellValue()):0.0;
				   }catch(Exception e){
					   cellValue = (double)excelCell.getNumericCellValue();
				   }
				   break; 
			   default :
				   cellValue = 0;
			}
		}catch(Exception e){
		}
		return cellValue;
	}
}
