# Copilot with SQL and Excel

# Excel Copilot Data Analysis Assignment

## Overview

This project demonstrates the use of Microsoft Copilot-assisted analysis on a sample sales dataset. The objective was to perform data cleaning, exploratory analysis, visualization, pivot table creation, calculated columns, business insights generation, and VBA automation.

## Dataset

* Dataset: Dummy Sales Dataset
* Total Records: 550
* Columns:

  * Customer_Name
  * Region
  * Product
  * Sales
  * Quantity
  * Order_Date

---

## Tasks Completed

### Question 4: Identify and Handle Missing Values

* Identified missing values across multiple columns.
* Missing values were handled using Copilot recommendations.
* Categorical columns were filled using mode values.
* Numeric columns were filled using median values.

**Key Findings**

* Customer_Name: 68 missing values
* Region: 192 missing values
* Product: 105 missing values
* Sales: 167 missing values
* Quantity: 90 missing values

---

### Question 5: Identify and Remove Duplicate Rows

* Detected duplicate records in the dataset.
* Removed duplicates using Copilot-generated suggestions.

**Results**

* Original Rows: 550
* Duplicate Rows Found: 51
* Rows After Cleaning: 499

---

### Question 6: Generate Chart and Interpret Results

* Created a column chart showing total sales by region.
* Compared sales performance across all regions.

**Result**

* West region recorded the highest sales.
* The chart below shows total sales by region. The West region recorded the highest sales.

![Total Sales by Region](Total%20Sales%20by%20Region.png)

---

### Question 7: Create Pivot Table

* Created a pivot table showing total sales by Region and Product.
* Used Region as Rows.
* Used Product as Columns.
* Used Sum of Sales as Values.

---

### Question 8: Create Calculated Column

* Generated a new column named **Total Sales**.
* Formula used:

```excel
Total Sales = Sales × Quantity
```

---

### Question 9: Dataset Summary and Insights

**Key Insights**

* West region generated the highest sales.
* Monitor was the top-performing product.
* Sneha was the highest contributing customer.
* The dataset became analysis-ready after cleaning missing values and duplicates.

---

### Question 10: Generate VBA Code

Generated VBA code to:

* Remove duplicate records.
* Fill blank values.
* Format the dataset as an Excel table.

---

## Files Included

* Copilot in Excel.xlsx
* README.md

## Conclusion

This project demonstrates how Copilot-assisted workflows can be used for data cleaning, analysis, visualization, reporting, and automation in Excel. The dataset was successfully cleaned and analyzed, resulting in actionable business insights.


## SQL Copilot Assignment

## Overview

This project demonstrates the use of GitHub Copilot to generate SQL queries for database creation, data population, and data analysis.

A SalesData table was created and populated with 10,000 randomly generated records. The dataset was then analyzed using SQL queries generated with the assistance of GitHub Copilot.

---

## Database Structure

### Table: SalesData

| Column         | Data Type     |
| -------------- | ------------- |
| CustomerID     | INT           |
| Name           | VARCHAR(100)  |
| Age            | INT           |
| City           | VARCHAR(50)   |
| PurchaseAmount | DECIMAL(10,2) |
| PurchaseDate   | DATE          |

---

## Tasks Completed

### Question 1: Create Table and Insert Data

* Generated SQL using GitHub Copilot.
* Created the SalesData table.
* Inserted 10,000 random customer purchase records using a stored procedure.
* Verified successful data insertion using COUNT(*) and sample records.

### Question 2: Sales Analysis

#### Total Sales per City

Calculated total purchase amount for each city using GROUP BY and SUM functions.

#### Top 5 Cities by Revenue

Identified the five highest-performing cities based on total revenue generated.

### Question 3: Customers with Above-Average Purchases

Used a subquery with AVG() to identify customers whose purchase amounts exceeded the overall average purchase amount.

---

## SQL Concepts Used

* CREATE TABLE
* Stored Procedures
* Loops (WHILE)
* Aggregate Functions (SUM, AVG)
* GROUP BY
* ORDER BY
* Subqueries
* LIMIT
* Random Data Generation

---

## Files Included

* Copilot with SQL.sql
* README.md

## Conclusion

GitHub Copilot was used to generate and assist with SQL code for creating a sales database, inserting large volumes of sample data, and performing analytical queries. The exercise demonstrates database design, data generation, aggregation, and business reporting using SQL.

