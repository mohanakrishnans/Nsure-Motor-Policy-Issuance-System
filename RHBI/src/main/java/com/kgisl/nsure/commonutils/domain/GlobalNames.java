package com.kgisl.nsure.commonutils.domain;
 
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class GlobalNames {

	public static double roundOff2Dec(double value){
		return Math.round(value * 100.0) / 100.0;
	}

	// MIGS Related Constants
	public static String MIGS_URL = "";
	public static String ACCESS_CODE = "";
	public static String MERCHANT_CODE = "";
	public static String SECURE_HASH = "";
	public static String SMS_URL = "";
	public static String PROXY_HOST = "";
	public static String PROXY_PORT = "";
	public final static String USER_AGENT = "Mozilla/5.0";

	//Payment void messages
	public final static String PAYMENT_VOID_SUCCESS_MESSAGE = "Payment void successfully";

	//Malaysian Country Code
	public final static int MLY_COUNTRY_ID = 119;
	
	public final static int MLY_NATION_ID = 131;

	public final static int POL_EXP_GRACE_MONTHS_MTCYCLE = -9; // AFTER POLICY EXPIRY
	public final static int POL_EXP_GRACE_MONTHS_OTHERS = -2; //AFTER POLICY EXPIRY
	public final static int POL_RENEW_ALLOWED_MONTHS = 2; // BEFORE POLICY EXPIRY
	public final static String POL_LAPSED_IND="L";
	public final static String POL_EXP_IND = "E";
	public final static String POL_NO_RENEWAL_IND = "NR";
	public final static String POL_VALID_IND ="Y";

	

	//Agent Source Type Id.
	public final static int SRC_AGENT = 1;
	public final static int SRC_CRC = 2;
	public final static int SRC_RHB_GROUP = 3;
	public final static int SRC_DIRECT_CLIENT = 14;
	public final static int SRC_STAFF_WITH_DISCOUNT = 5;
	public final static int SRC_BROKER = 6;
	public final static int SRC_JAPANESE = 7;
	public final static int SRC_IN_HOUSE_STAFF = 8;
	public final static int SRC_DIRECT_NON_REBATE = 9;
	public final static int SRC_EASY = 10;
	public final static int SRC_BANCA = 11;
	public final static int SRC_RHBNOW = 12;

	public final static int SRC_TYPE_GROUP_BANCA = 7;
	
	public final static String AGENT_SOURCE_TYPE_IND = "AGENT";

	// CLASS GROUP
	public final static int CLS_GRP_PRIVATE_CAR = 2;
	public final static int CLS_GRP_MOTOR_CYCLE = 1;
	public final static int CLS_GRP_COMM_VEH = 3;

	public final static String QUOT_CALC_IND = "QC";

	// COVER NOTE STATUS
	public final static int CN_STATUS_PRINTED = 1;
	public final static int CN_STATUS_SAVED = 2;
	public final static int CN_STATUS_SUBMITTED = 3;
	public final static int CN_STATUS_CANCELLED=6;
	public final static int CN_STATUS_CANCELLED_REPLACED=7;
	public final static int CN_STATUS_CANCEL_PENDING=4;
	public final static int CN_STATUS_PRINT_PENDING=5;
	public final static int CN_STATUS_SAVED_PENDING=8;
	public final static int CN_STATUS_SAVED_REJECTED=9;
	public final static int CN_STATUS_SUBMISSION_PENDING=10;
	public final static int CN_STATUS_DDL_APPROVAL_PENDING =11;

	// QUOTATION STATUS
	public final static int QUOT_STATUS_PRINTED = 1;
	public final static int QUOT_STATUS_PRINT_PENDING = 3;
	public final static int QUOT_STATUS_VOID = 2;
	public final static int QUOT_STATUS_SECURED = 4;
	public final static int QUOT_STATUS_DDL_APPROVAL_PENDING = 5;
	public final static int QUOT_PENDING_APPROVAL = 6;
	public final static int QUOT_SAVE_REJECTED = 7;

	// MAIN CLASS
	public final static int MOTOR_MAIN_CLASS_ID = 4;
	public final static int PA_MAIN_CLASS = 5;
	public final static int WORKMEN_MAIN_CLASS = 3;
	public final static int FIRE_MAIN_CLASS = 1;

	// SUBMISSION CLASS OPTIONS
	public final static int MOTOR_CERTIFICATE_INSURANCE = 1;
	public final static int MOTOR_CONFIRMATION_SLIP = 2;

	// NON MOTOR CLASS
	public final static int MPA_CLASS = 9;
	public final static int MCA_CLASS = 11;
	public final static int MCPA_CLASS = 10;
	public final static int MCT_CLASS = 12;

	public final static int MCT_PLAN_ID = 1;

	public final static int NM_CBC_MAIN_CLASS_ID = 14;
	public final static int NM_CBC_PREM_WARRANTY_MAIN_CLASS_ID = 15;
	public final static int NM_MAIN_CLASS_ID = 12;
	public final static double HIGH_PERFORMANCE_LOADING_PERCENTAGE = 25.0;
	public final static int GLOBAL_DRIVER_UOM_ID = 5;
	public final static int SPECIAL_VEHICLE_UOM_ID = 1;
	public final static int TONAGE_VEHICLE_UOM_ID = 7;

	// COVERAGE TYPE
	public final static int SUB_CLASS_COMPREHENSION = 1;
	public final static int SUB_CLASS_THIRD_PARTY = 2;
	public final static int SUB_CLASS_TPFT = 3;

	// VEHICLE TYPE
	public final static int MOTOR_CYCLE_CLASS_ID = 1;
	public final static int PRIVATE_CAR_CLASS_ID = 2;
	public final static int MOTOR_TRADE_CLASS_ID = 8;
	public final static int BUS_CLASS_ID = 4;
	public final static int GOODS_VEH_CLASS_ID = 5;
	public final static int TANKERS_VEH_CLASS_ID = 6;
	public static final int SPECIAL_VEHICLE_CLASS_ID = 7;
	public static final int TAXI_VEHICLE_CLASS_ID = 3;

	// OWNERSHIPTYPE
	public final static int COMPANY_OWNERSHIP_TYPE_ID = 1;
	public final static int INDIVIDUAL_OWNERSHIP_TYPE_ID = 2;
	public final static int INDOR_OWNERSHIP_TYPE_ID = 3;

	// TRAILER LOADING FACTOR CODE
	public final static String TRAILER_LOADING_FACTOR_CODE="99";

	// COVER NOTE TYPE ID
	public final static int NEW_VEH_NEW_REG = 1;
	public final static int OLD_VEH_OLD_REG = 2;
	public final static int TRANSFER_OF_OWNERSHIP = 3;
	public final static int TRANSFER_WITHOUT_POLICY = 5;
	public final static int OTHR_INT_CIR_PERMIT = 7;
	public final static int ONE_DAY_PERMIT = 8;
	public final static int MASTER_POLICY = 26;
	public final static int QUOTATION_NEW = 27;
	public final static int QUOTATION_RENEW = 38;
	public final static int ROAD_TAX_PURPOSE = 14;
	public final static int ROAD_TAX_PURPOSE_OLD_OWNER = 16;
	public final static int RENEWAL = 13;
	public final static int CROSS_SELL_NBCN_TYPE_ID = 35;
	public final static int CROSS_SELL_RNCN_TYPE_ID = 36;
	public final static int CN_TYPE_MASTER_POLICY_RENEWAL = 44;
	public final static int CN_TYPE_MASTER_POLICY_QUOTATION = 45;
	public final static int CN_TYPE_MASTER_POLICY_QUOTATION_RN = 48;

	//VEHICLE TYPE
	public final static int MOTOR_CYCLE = 1;
	public final static int PRIVATE_CAR = 2;
	public final static int MOTOR_TRADE = 8;
	public final static int COMMERCIAL_VEHICLE = 3;

	// COVERAGE TYPE
	public final static int COMPREHENSIVE = 1;
	public final static int THIRD_PARTY = 2;
	public final static int THIRD_PARTY_FIRE_AND_THEFT = 3;

	//FINANCIAL TYPE
	public final static int FINANCIAL_NOT_APPLICABLE = 4;

	// ADDITIONAL USAGE
	public final static int ADD_USAGE_NOT_APPLICABLE = 5;
	public final static int ADD_USAGE_TUTION_PURPOSE = 7;

	// OWNERSHIPTYPE
	public final static int COMPANY = 1;
	public final static int INDIVIDUAL = 2;
	public final static int INSURED_NOT_DRIVING_OR_RIDING = 3;

	// SAVE MESSAGES
	public final static String MOT_CN_GENERATION_MSG = "Motor Cover note number XXX has been saved successfully";

	public final static String ACCOUNT_LOCK = "Account is locked. Kindly click \"Release account lock link\" to release the lock.";
	public final static String INVALID_LOGIN_LOCK = "Invalid login credentials.Account will be locked on next invalid access.";
	public final static String DORMANT_LOGIN = "User is blocked due to dormant days.";
	public final static String INVALID_LOGIN = "Invalid login credentials.";
	public final static String LOGIN_MANDATORY = "User name and password is mandatory";
	public final static String SUSPEND_LOGIN = "Account is suspended. Kindly check the branch administrator.";
	public final static String TERMINATE_LOGIN = "Account is terminated. Kindly check the branch administrator.";
	public final static String NOT_ALLOWED_DURING_HOLIDAY = "Account is not allowed to login during holidays. Please contact branch administrator for any assistance.";
	public final static String EFFECTIVE_DATE_MISMATCH = "Account is not allowed to login further. Please contact branch administrator for any assistance.";
	public final static String ACCESS_TIMING_MISMATCH = "Account is not allowed to access system after selected timings. Please contact branch administrator for any assistance.";
	public static final JSONArray AuditMenu (){
		JSONArray menuArray = new JSONArray();

		JSONObject jsonObject = new JSONObject();
		jsonObject.put("VCH_MENU_DESC", "Administration");
		jsonObject.put("NUM_MENU_ID", 3);
		jsonObject.put("NUM_DISPLAY_ORDER", 3);
		jsonObject.put("NUM_PARENT_MENU_ID", 0);
		jsonObject.put("VCH_MENU_URL", "menu");
		jsonObject.put("VCH_FORM_NAME", null);
		jsonObject.put("NUM_PRINT_ORDER", 3);
		jsonObject.put("CHR_TILES_FIRST_LEVEL", "N");
		jsonObject.put("CHR_MOTOR_IND", null);
		menuArray.add(jsonObject);
		jsonObject = new JSONObject();
		jsonObject.put("VCH_MENU_DESC", "Audit Tool");
		jsonObject.put("NUM_MENU_ID", 210);
		jsonObject.put("NUM_DISPLAY_ORDER", 1);
		jsonObject.put("NUM_PARENT_MENU_ID", 3);
		jsonObject.put("VCH_MENU_URL", null);
		jsonObject.put("VCH_FORM_NAME", null);
		jsonObject.put("NUM_PRINT_ORDER", 1.1);
		jsonObject.put("CHR_TILES_FIRST_LEVEL", "N");
		jsonObject.put("CHR_MOTOR_IND", null);

		menuArray.add(jsonObject);
		jsonObject = new JSONObject();
		jsonObject.put("VCH_MENU_DESC", "DB Audit Tool");
		jsonObject.put("NUM_MENU_ID", 211);
		jsonObject.put("NUM_DISPLAY_ORDER", 3);
		jsonObject.put("NUM_PARENT_MENU_ID", 210);
		jsonObject.put("VCH_MENU_URL", "clientproflie");
		jsonObject.put("VCH_FORM_NAME", null);
		jsonObject.put("NUM_PRINT_ORDER", 1.1);
		jsonObject.put("CHR_TILES_FIRST_LEVEL", "N");
		jsonObject.put("CHR_MOTOR_IND", null);
		menuArray.add(jsonObject);

		return menuArray;
	}
	public static final String DB_AUDIT_USER_NAME = "89038";
	public static final String DB_AUDIT_PWD = "4283322000889038";
	
}


