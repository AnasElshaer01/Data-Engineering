CREATE OR REPLACE TABLE `MyDataHouse.dim_employee` AS
SELECT
  employeeNumber,
  lastName,
  firstName,
  extension,
  email,
  officeCode,
  reportsTo,
  jobTitle
FROM
  classicmodels.employees;
