-- dim_customers.sql
-- Create the dim_customers table
CREATE OR REPLACE TABLE `MyDataHouse.dim_customer` AS
SELECT
  customerNumber,
  customerName,
  contactLastName,
  contactFirstName,
  phone,
  addressLine1,
  addressLine2,
  city,
  state,
  postalCode,
  country,
  salesRepEmployeeNumber,
  creditLimit
FROM `classicmodels.customers`;
