# 📘 Sales Analysis SQL Queries

## 📌 Summary of the Case Study
This case study demonstrates how SQL queries can be applied to analyze **sales performance** using the dataset `MYSALES.PUBLIC.DATA01`. The project focused on calculating **daily sales price per unit**, computing the **average unit sales price**, measuring **gross profit percentage**, and evaluating **gross profit per unit**. These metrics provide actionable insights into **pricing efficiency, profitability, and product performance**.

---

## 🔍 How the Case Study Was Done
1. **Dataset Exploration**
   - Source: `MYSALES.PUBLIC.DATA01`
   - Example columns: `DATE`, `SALES`, `QUANTITY_SOLD`, `COST_OF_SALES`.

2. **SQL Query Development**
   - **Daily Sales Price per Unit**  
     - Formula: `SALES / QUANTITY_SOLD` (with `NULLIF` to avoid division by zero).  
     - Insight: Shows average unit price per day.  

   - **Average Unit Sales Price**  
     - Formula: `SUM(SALES) / SUM(QUANTITY_SOLD)`.  
     - Insight: Provides overall pricing trends across the dataset.  

   - **Daily % Gross Profit**  
     - Formula: `(SALES - COST_OF_SALES) / SALES × 100`.  
     - Insight: Measures profitability efficiency relative to sales.  

   - **Daily % Gross Profit per Unit**  
     - Formula: `((Sales per unit - Cost per unit) / Sales per unit) × 100`.  
     - Insight: Evaluates profitability at the unit level.  

3. **Techniques Applied**
   - **NULLIF** → Prevent division by zero errors.  
   - **ROUND** → Format results to two decimal places for readability.  
   - **Aggregations** → SUM and AVG for long-term pricing and profitability analysis.  
   - **Grouping by DATE** → Daily-level insights for trend tracking.  

---

## 📊 Insights Found
- Daily unit price analysis revealed **fluctuations in pricing efficiency** across different dates.  
- Average unit sales price provided a **baseline for long-term pricing strategies**.  
- Gross profit percentage highlighted **overall profitability efficiency**, useful for management reporting.  
- Gross profit per unit analysis showed **variations in product-level margins**, helping identify high-margin vs. low-margin items.  

---

## 🎯 Summary of Findings
By applying SQL queries to the dataset, the project uncovered:  
- **Daily and long-term pricing trends**.  
- **Profitability efficiency** at both sales and unit levels.  
- **Actionable insights** into product performance and margin optimization.  

This demonstrates how SQL can be leveraged to move beyond raw data and deliver **business intelligence** that supports **pricing strategies, profitability monitoring, and product decision-making**.

---

## 🛠️ Tools Used
- **SQL-compatible databases** (Snowflake, PostgreSQL, MySQL, SQL Server, Oracle)  
- **T-SQL / SQL functions** (NULLIF, ROUND, SUM, AVG, GROUP BY)  
- **Optional Visualization Tools**: Power BI, Excel (pivot tables, dashboards)
