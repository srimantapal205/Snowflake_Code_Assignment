CREATE  OR REPLACE WAREHOUSE SECOND_WH 
WITH 
    WAREHOUSE_SIZE = XSMALL
    MIN_CLUSTER_COUNT = 1
    MAX_CLUSTER_COUNT = 3
    AUTO_SUSPEND = 300
    SCALING_POLICY = 'Economy'
    INITIALLY_SUSPENDED = TRUE
    COMMENT = 'This is our second warehouse'

ALTER WAREHOUSE SECOND_WH RESUME;

ALTER WAREHOUSE SECOND_WH 
SET 
    WAREHOUSE_SIZE = 'XSMALL'
    AUTO_SUSPEND = 90;

DROP WAREHOUSE SECOND_WH ;




------- 25-08-2025-----------


SELECT * FROM FIRST_TABLE;

ALTER DATABASE FIRST_DB RENAME TO OUR_FIRST_DB; 

CREATE TABLE "OUR_FIRST_DB"."PUBLIC"."LOAN_PAYMENT" (
  "Loan_ID" STRING,
  "loan_status" STRING,
  "Principal" STRING,
  "terms" STRING,
  "effective_date" STRING,
  "due_date" STRING,
  "paid_off_time" STRING,
  "past_due_days" STRING,
  "age" STRING,
  "education" STRING,
  "Gender" STRING);


USE DATABASE OUR_FIRST_DB;

SELECT * FROM LOAN_PAYMENT;

--Load Data From s3 Buckets
COPY INTO LOAN_PAYMENT FROM s3://bucketsnowflakes3/Loan_payments_data.csv
file_format = (
    type = csv,
    field_delimiter = ',',
    skip_header = 1
);

SELECT * FROM LOAN_PAYMENT;



