CREATE OR REPLACE PACKAGE SYSTEM.QUOTATION_SAVE AS
/******************************************************************************
   NAME:       QUOTATION_SAVE
   PURPOSE:

   REVISIONS:
   Ver        Date        Author           Description
   ---------  ----------  ---------------  ------------------------------------
   1.0        22/02/2018      mohan       1. Created this package.
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
    P_VCH_TYPE_OF_BUSINESS VARCHAR2) ;
END QUOTATION_SAVE;
/