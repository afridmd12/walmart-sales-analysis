--walmart data
DROP TABLE IF EXISTS walmart;
CREATE TABLE walmart (
    invoice_id TEXT,
    branch TEXT,
    city TEXT,
    customer_type TEXT,
    gender TEXT,
    product_line TEXT,
    unit_price NUMERIC(10, 2),
    quantity INTEGER,
    tax_5_percent NUMERIC(10, 2),
    total NUMERIC(10, 2),
    date DATE,
    time TIME,  
    payment TEXT,
    cogs NUMERIC(10, 2),
    gross_margin_percentage NUMERIC(5, 2),
    gross_income NUMERIC(10, 2),
    rating NUMERIC(4, 2)
);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

SELECT * FROM walmart;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Extract Year and Month
SELECT 
  EXTRACT(YEAR FROM date) AS order_year,
  EXTRACT(MONTH FROM date) AS order_month,
  total
FROM 
  walmart;
  
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Group and Aggregate
SELECT 
  EXTRACT(YEAR FROM date) AS order_year,
  EXTRACT(MONTH FROM date) AS order_month,
  SUM(unit_price) AS total_revenue,
  COUNT(DISTINCT invoice_id) AS total_orders
FROM walmart
GROUP BY 
  order_year,
  order_month;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--GROUP BY + AGGREGATE (Sum + Count)
SELECT 
  EXTRACT(YEAR FROM date) AS order_year,
  EXTRACT(MONTH FROM date) AS order_month,
  SUM(total) AS total_revenue,
  COUNT(DISTINCT invoice_id) AS total_orders
FROM 
  walmart
GROUP BY 
  order_year, 
  order_month
ORDER BY 
  order_year,
  order_month;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Filter by Specific Time Period
SELECT 
  EXTRACT(YEAR FROM date) AS order_year,
  EXTRACT(MONTH FROM date) AS order_month,
  SUM(total) AS total_revenue,
  COUNT(DISTINCT invoice_id) AS total_orders
FROM 
  walmart
WHERE 
  date BETWEEN '2019-01-01' AND '2019-03-31'
GROUP BY 
  order_year, 
  order_month
ORDER BY 
  order_year,
  order_month;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Checking null values
SELECT 
  COUNT(*) AS total_rows,
  COUNT(*) - COUNT(invoice_id) AS null_invoice_id,
  COUNT(*) - COUNT(date) AS null_date,
  COUNT(*) - COUNT(total) AS null_total
FROM 
  walmart;

--Copying non-null rows to a new clean table
CREATE TABLE clean_walmart AS
SELECT *
FROM walmart
WHERE 
  invoice_id IS NOT NULL
  AND date IS NOT NULL
  AND total IS NOT NULL;


SELECT * FROM clean_walmart;
---------------------------------------------------------------------------------------------------------------------------------------------------------------------
