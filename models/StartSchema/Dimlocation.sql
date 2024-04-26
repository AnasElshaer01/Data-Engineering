-- Create the dim_location table
CREATE OR REPLACE TABLE `MyDataHouse.dim_location` AS
SELECT
  officeCode,
  city,
  phone,
  addressLine1,
  state,
  country,
  territory
FROM
  classicmodels.offices;
