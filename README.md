📘 Sales Analysis SQL Queries
📌 Overview
This project demonstrates SQL queries for analyzing sales performance using the dataset:

Code
MYSALES.PUBLIC.DATA01
The queries focus on:

Calculating daily sales price per unit

Computing average unit sales price

Measuring gross profit percentage

Evaluating gross profit per unit

These metrics provide insights into pricing efficiency, profitability, and product performance.

🛠️ Requirements
SQL-compatible database (Snowflake, PostgreSQL, MySQL, SQL Server, Oracle, etc.)

Dataset: MYSALES.PUBLIC.DATA01

Example columns:

DATE

SALES

QUANTITY_SOLD

COST_OF_SALES

📂 Queries
1. 💵 Daily Sales Price per Unit
sql
SELECT DATE,
       SALES,
       QUANTITY_SOLD,
       ROUND(SALES / NULLIF(QUANTITY_SOLD, 0), 2) AS DAILY_SALES_PRICE_PER_UNIT
FROM MYSALES.PUBLIC.DATA01
ORDER BY DATE;
Calculates the average unit price for each day.

Uses NULLIF to avoid division by zero.

2. 📊 Average Unit Sales Price
sql
SELECT ROUND(SUM(SALES) / NULLIF(SUM(QUANTITY_SOLD), 0), 2) AS AVG_UNIT_SALES_PRICE
FROM MYSALES.PUBLIC.DATA01;
Computes the overall average unit price across the dataset.

Useful for long-term pricing analysis.

3. 📈 Daily % Gross Profit
sql
SELECT ROUND(SUM(SALES - COST_OF_SALES) / NULLIF(SUM(SALES), 0) * 100, 2) AS AVG_GROSS_PROFIT_PCT
FROM MYSALES.PUBLIC.DATA01;
Calculates gross profit percentage relative to sales.

Helps measure profitability efficiency.

4. 📉 Daily % Gross Profit per Unit
sql
SELECT DATE,
       SALES,
       COST_OF_SALES,
       QUANTITY_SOLD,
       ROUND(
         (
           ((SALES / NULLIF(QUANTITY_SOLD, 0)) - (COST_OF_SALES / NULLIF(QUANTITY_SOLD, 0)))
           / NULLIF((SALES / NULLIF(QUANTITY_SOLD, 0)), 0)
         ) * 100, 
       2) AS DAILY_GROSS_PROFIT_PCT_PER_UNIT
FROM MYSALES.PUBLIC.DATA01
ORDER BY DATE;
Breaks down gross profit percentage at the unit level.

Useful for identifying product-level profitability trends.
