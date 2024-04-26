-- Create the dim_time table
CREATE OR REPLACE TABLE `MyDataHouse.dim_time` AS
SELECT
  CONCAT( FORMAT_TIMESTAMP("%Y-%m-%d", orderDate)) AS timeId,
  EXTRACT(YEAR FROM orderDate) AS year,
  EXTRACT(MONTH FROM orderDate) AS month,
  EXTRACT(DAY FROM orderDate) AS day
FROM
  classicmodels.orders;
