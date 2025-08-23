USE ROLE SYSADMIN;

CREATE  OR REPLACE WAREHOUSE EXERCISE_WH 
WITH
    WAREHOUSE_SIZE = XSMALL
    AUTO_SUSPEND = 60
    AUTO_RESUME = TRUE
    COMMENT = 'This is a virtual warehouse of size X-SMALL that can be used to process queries.'



    