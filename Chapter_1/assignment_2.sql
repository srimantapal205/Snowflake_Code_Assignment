USE EXERCISE_DB;

CREATE TABLE "EXERCISE_DB"."PUBLIC".CUSTOMERS(
    ID INT,
    first_name varchar,
    last_name varchar,
    email varchar,
    age int,
    city varchar
);

SELECT * FROM CUSTOMERS;


--Load Data From s3 Buckets
COPY INTO CUSTOMERS FROM s3://snowflake-assignments-mc/gettingstarted/customers.csv
file_format = (
    type = csv,
    field_delimiter = ',',
    skip_header = 1
)

SELECT * FROM CUSTOMERS;
