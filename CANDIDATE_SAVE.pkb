/* Formatted on 10-07-2019 7.43.05 PM (QP5 v5.326) */
CREATE OR REPLACE PACKAGE BODY SYSTEM.CANDIDATE_SAVE AS
    /******************************************************************************
       NAME:       CANDIDATE_SAVE
       PURPOSE:

       REVISIONS:
       Ver        Date        Author           Description
       ---------  ----------  ---------------  ------------------------------------
       1.0        10-07-2019      mohan       1. Created this package body.
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
                                 P_VCH_TERMS_AND_CONDITION VARCHAR2)
    AS
     P_VCH_CANDIDATE_ID NUMBER;
    BEGIN
        BEGIN
           P_VCH_CANDIDATE_ID := 0;
           SELECT SEQ_APS_CANDIDATE_REGISTRATION.NEXTVAL INTO P_VCH_CANDIDATE_ID  FROM DUAL;
       END;

        BEGIN
            INSERT INTO APS_MST_CANDIDATE_REGISTRATION (VCH_CANDIDATE_ID,
                                                        VCH_FIRST_NAME,
                                                        VCH_LAST_NAME,
                                                        VCH_GRADE,
                                                        VCH_X_YEAR_PASSING,
                                                        VCH_X_BOARD,
                                                        VCH_XII_YEAR_PASSING,
                                                        VCH_XII_BOARD,
                                                        VCH_UG_YEAR_PASSING,
                                                        VCH_UG_UNIVERSITY,
                                                        VCH_PG_YEAR_PASSING,
                                                        VCH_PG_UNIVERSITY,
                                                        DTT_DOB,
                                                        VCH_ADDRESS,
                                                        VCH_MOBILE_1,
                                                        VCH_MOBILE_2,
                                                        VCH_EMAIL_1,
                                                        VCH_EMAIL_2,
                                                        VCH_COURSE,
                                                        VCH_TERMS_AND_CONDITION)
                                                 VALUES (P_VCH_CANDIDATE_ID,
                                                         P_VCH_FIRST_NAME,
                                                         P_VCH_LAST_NAME,
                                                         P_VCH_GRADE,
                                                         P_VCH_X_YEAR_PASSING,
                                                         P_VCH_X_BOARD,
                                                         P_VCH_XII_YEAR_PASSING,
                                                         P_VCH_XII_BOARD,
                                                         P_VCH_UG_YEAR_PASSING,
                                                         P_VCH_UG_UNIVERSITY,
                                                         P_VCH_PG_YEAR_PASSING,
                                                         P_VCH_PG_UNIVERSITY,
                                                         P_DTT_DOB,
                                                         P_VCH_ADDRESS,
                                                         P_VCH_MOBILE_1,
                                                         P_VCH_MOBILE_2,
                                                         P_VCH_EMAIL_1,
                                                         P_VCH_EMAIL_2,
                                                         P_VCH_COURSE,
                                                         P_VCH_TERMS_AND_CONDITION);

            COMMIT;
        EXCEPTION
            WHEN OTHERS
            THEN
                RAISE;
        END;
    END PR_CANDIDATE_SAVE;
END CANDIDATE_SAVE;
/