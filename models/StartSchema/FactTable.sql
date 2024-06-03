CREATE OR REPLACE TABLE `MyDataHouse.fact_sales` AS
SELECT
  od.orderNumber AS orderNumber,
  od.productCode AS productCode,
  FORMAT_TIMESTAMP("%Y-%m-%d", o.orderDate) AS timeId,
  o.customerNumber AS customerNumber,
  c.salesRepEmployeeNumber AS employeeNumber,
  e.officeCode AS officeCode,
  od.priceEach AS priceEach,
  od.quantityOrdered AS quantityOrdered,
  p.amount AS amountPaid
FROM
  classicmodels.orderdetails AS od
JOIN
  classicmodels.orders AS o ON od.orderNumber = o.orderNumber
JOIN
  classicmodels.customers AS c ON o.customerNumber = c.customerNumber
JOIN
  classicmodels.employees AS e ON c.salesRepEmployeeNumber = e.employeeNumber
JOIN
  classicmodels.offices AS f ON e.officeCode = f.officeCode
JOIN
  classicmodels.payments AS p ON o.customerNumber = p.customerNumber
GROUP BY
  od.orderNumber,
  od.productCode,
  timeId,
  o.customerNumber,
  c.salesRepEmployeeNumber,
  e.officeCode,
  od.priceEach,
  od.quantityOrdered,
  p.amount;
