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

