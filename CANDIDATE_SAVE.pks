/* Formatted on 10-07-2019 6.51.54 PM (QP5 v5.326) */
CREATE OR REPLACE PACKAGE SYSTEM.PR_CANDIDATE_SAVE AS
    /******************************************************************************
       NAME:       PR_CANDIDATE_SAVE
       PURPOSE:

       REVISIONS:
       Ver        Date        Author           Description
       ---------  ----------  ---------------  ------------------------------------
       1.0        10/07/2019      mohan       1. Created this package.
    ******************************************************************************/


    PROCEDURE PR_CANDIDATE_SAVE (P_VCH_CANDIDATE_ID       VARCHAR2,
                                 P_VCH_FIRST_NAME         VARCHAR2,
                                 P_VCH_LAST_NAME          VARCHAR2,
                                 P_VCH_GRADE              VARCHAR2,
                                 P_VCH_X_YEAR_PASSING     VARCHAR2,
                                 P_VCH_X_BOARD            VARCHAR2,
                                 P_VCH_XII_YEAR_PASSING   VARCHAR2,
                                 P_VCH_XII_BOARD          VARCHAR2,
                                 P_VCH_UG_YEAR_PASSING    VARCHAR2,
                                 P_VCH_UG_UNIVERSITY      VARCHAR2,
                                 P_VCH_PG_YEAR_PASSING    VARCHAR2,
                                 P_VCH_PG_UNIVERSITY      VARCHAR2,
                                 P_DTT_DOB                DATE,
                                 P_VCH_ADDRESS            VARCHAR2,
                                 P_VCH_MOBILE_1           VARCHAR2,
                                 P_VCH_MOBILE_2           VARCHAR2,
                                 P_VCH_EMAIL_1            VARCHAR2,
                                 P_VCH_EMAIL_2            VARCHAR2,
                                 P_VCH_COURSE             VARCHAR2,
                                 P_VCH_TERMS_AND_CONDITION  VARCHAR2);
END PR_CANDIDATE_SAVE;
/