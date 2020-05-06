CREATE OR REPLACE PACKAGE BODY SYSTEM.QUOTATION_SAVE AS
/******************************************************************************
   NAME:       QUOTATION_SAVE
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/02/2018      mohan       1. Created this package body.
******************************************************************************/

  PROCEDURE PR_QUOTATION_SAVE (
    P_VCH_SOURCE_TYPE VARCHAR2,
    P_VCH_ACCOUNT_CODE VARCHAR2,
    P_VCH_BRANCH VARCHAR2,
    P_VCH_ACCOUNT_NAME VARCHAR2,
    P_VCH_CONTACT_TYPE VARCHAR2,
    P_VCH_NEW_IC_NO VARCHAR2,
    P_VCH_BUSINESS_REGISTRATION_NO VARCHAR2,
    P_VCH_NAME VARCHAR2,
    P_VCH_NATIONALITY VARCHAR2,
    P_VCH_RACE VARCHAR2,
    P_DTT_DATE_OF_BIRTH DATE,
    P_VCH_GENDER VARCHAR2,
    P_VCH_MARITAL_STATUS VARCHAR2,
    P_VCH_OCCUPATION VARCHAR2,
    P_VCH_GST_REGISTERED VARCHAR2,
    P_VCH_ADDRESS VARCHAR2,
    P_VCH_POST_CODE VARCHAR2,
    P_VCH_COUNTRY_CODE VARCHAR2,
    P_VCH_MOBILE_NO VARCHAR2,
    P_VCH_PDPA VARCHAR2,
    P_VCH_CSS VARCHAR2,
    P_VCH_TYPE_OF_BUSINESS VARCHAR2) 
AS 
    V_VCH_COVER_NOTE_NO VARCHAR2(50);
    
       
    P_NUM_QUOTATION_ID NUMBER;
    
BEGIN
    
     BEGIN
        P_NUM_QUOTATION_ID := 0;
        SELECT SEQ_QUOTATION_SAVE.NEXTVAL INTO P_NUM_QUOTATION_ID  FROM DUAL; 
    END;

    BEGIN
      INSERT INTO EIS_TRN_QUOTATION (
        NUM_QUOTATION_ID,
        VCH_SOURCE_TYPE,
        VCH_ACCOUNT_CODE,
        VCH_BRANCH,
        VCH_ACCOUNT_NAME,
        VCH_CONTACT_TYPE,
        VCH_NEW_IC_NO,
        VCH_BUSINESS_REGISTRATION_NO,
        VCH_NAME,
        VCH_NATIONALITY,
        VCH_RACE,
        DTT_DATE_OF_BIRTH,
        VCH_GENDER,
        VCH_MARITAL_STATUS,
        VCH_OCCUPATION,
        VCH_GST_REGISTERED,
        VCH_ADDRESS,
        VCH_POST_CODE,
        VCH_COUNTRY_CODE,
        VCH_MOBILE_NO,
        VCH_PDPA,
        VCH_CSS,
        VCH_TYPE_OF_BUSINESS) 
        VALUES(P_NUM_QUOTATION_ID,P_VCH_SOURCE_TYPE,
                P_VCH_ACCOUNT_CODE,
                P_VCH_BRANCH,
                P_VCH_ACCOUNT_NAME,
                P_VCH_CONTACT_TYPE,
                P_VCH_NEW_IC_NO,
                P_VCH_BUSINESS_REGISTRATION_NO,
                P_VCH_NAME,
                P_VCH_NATIONALITY,
                P_VCH_RACE,
                P_DTT_DATE_OF_BIRTH,
                P_VCH_GENDER,
                P_VCH_MARITAL_STATUS,
                P_VCH_OCCUPATION,
                P_VCH_GST_REGISTERED,
                P_VCH_ADDRESS,
                P_VCH_POST_CODE,
                P_VCH_COUNTRY_CODE,
                P_VCH_MOBILE_NO,
                P_VCH_PDPA,
                P_VCH_CSS,
                P_VCH_TYPE_OF_BUSINESS);                
                COMMIT;
                
        EXCEPTION WHEN OTHERS THEN RAISE; 
   end;
   end PR_QUOTATION_SAVE;
    

END QUOTATION_SAVE;
/