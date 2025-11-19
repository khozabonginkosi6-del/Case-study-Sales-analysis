---What is the daily sales price per unit?---
SELECT
    DATE,
    SALES,
    QUANTITY_SOLD,
    ROUND(SALES / NULLIF(QUANTITY_SOLD, 0), 2) AS DAILY_SALES_PRICE_PER_UNIT

FROM
  "MYSALES"."PUBLIC"."DATA01"
  ORDER BY DATE;

  ---What is the average unit sales price of this product?---
  SELECT 
    ROUND(SUM(SALES) / NULLIF(SUM(QUANTITY_SOLD), 0), 2) AS AVG_UNIT_SALES_PRICE
FROM 
"MYSALES"."PUBLIC"."DATA01";

---What is the daily % gross profit?---
SELECT 
    ROUND(SUM(SALES - COST_OF_SALES) / NULLIF(SUM(SALES), 0) * 100, 2) AS AVG_GROSS_PROFIT_PCT
FROM"MYSALES"."PUBLIC"."DATA01";

---What is the daily % gross profit per unit?---
SELECT
    DATE,
    SALES,
    COST_OF_SALES,
    QUANTITY_SOLD,
    ROUND(
        (
            ((SALES / NULLIF(QUANTITY_SOLD, 0)) - (COST_OF_SALES / NULLIF(QUANTITY_SOLD, 0)))
            / NULLIF((SALES / NULLIF(QUANTITY_SOLD, 0)), 0)
        ) * 100, 
    2) AS DAILY_GROSS_PROFIT_PCT_PER_UNIT
FROM "MYSALES"."PUBLIC"."DATA01"
ORDER BY DATE;



   