# Sales Data ETL Pipeline

## Overview
This project aims to build an Extract, Transform, Load (ETL) pipeline to extract sales data from a MySQL database, transform it, and load it into Google BigQuery using DBT (Data Build Tool). The ETL pipeline consolidates sales data into a fact table named `fact_sales`, providing a comprehensive view of sales transactions for analysis and reporting purposes using star schema.

## Objective
The primary objective of this ETL pipeline is to:
- Aggregate sales data from multiple source tables in a MySQL database.
- Transform the data to prepare it for analysis, including standardizing date formats and aggregating sales metrics.
- Load the transformed data into Google BigQuery for further analysis and reporting.

## Data Source
The data source for this project is a MySQL database containing tables related to sales transactions. The relevant tables include:
- `orderdetails`
- `orders`
- `customers`
- `employees`
- `offices`
- `payments`

## ETL Process
### Extraction
The ETL pipeline extracts sales data from the MySQL database using SQL queries.

### Transformation
The extracted data is transformed to meet the following objectives:
- Standardize date formats to `YYYY-MM-DD` for uniformity.
- Aggregate sales metrics such as total sales amount, quantity ordered, etc.
- Perform data cleansing and validation as necessary.

### Load
The transformed data is loaded into Google BigQuery tables for analysis and reporting.

## Tools Used
- **MySQL**: Data source for sales data.
- **Google BigQuery**: Destination for transformed data storage and analysis.
- **DBT (Data Build Tool)**: Used for data ingestion and transformation, providing a powerful SQL-based interface for defining data transformation logic.


