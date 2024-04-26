-- Create the dim_product table
CREATE OR REPLACE TABLE `MyDataHouse.dim_product` AS
SELECT
  productCode,
  productName,
  productLine,
  productScale,
  productVendor,
  productDescription,
  quantityInStock,
  buyPrice,
  MSRP
FROM
  classicmodels.products;
