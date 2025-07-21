-- 1. Count total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- 2. Find number of churned customers
SELECT COUNT(*) AS churned_customers
FROM customers
WHERE churn = 'Yes';

-- 3. Calculate churn rate
SELECT 
    (COUNT(CASE WHEN churn = 'Yes' THEN 1 END) * 100.0 / COUNT(*)) AS churn_rate
FROM customers;

-- 4. Average monthly charges
SELECT AVG(monthlycharges) AS avg_monthly_charges
FROM customers;

-- 5. Churn count by contract type
SELECT contract, 
       COUNT(CASE WHEN churn = 'Yes' THEN 1 END) AS churned_customers
FROM customers
GROUP BY contract;

-- 6. Churn count by payment method
SELECT paymentmethod, 
       COUNT(CASE WHEN churn = 'Yes' THEN 1 END) AS churned_customers
FROM customers
GROUP BY paymentmethod;

-- 7. Churn by gender
SELECT gender, 
       COUNT(CASE WHEN churn = 'Yes' THEN 1 END) AS churned_customers,
       COUNT(*) AS total_customers
FROM customers
GROUP BY gender;

-- 8. Churn by tenure category
SELECT tenure_category,
       COUNT(CASE WHEN churn = 'Yes' THEN 1 END) AS churned_customers
FROM customers
GROUP BY tenure_category;

-- 9. Top 5 customers with highest monthly charges
SELECT customerid, monthlycharges
FROM customers
ORDER BY monthlycharges DESC
LIMIT 5;

-- 10. Total revenue (sum of monthly charges)
SELECT SUM(monthlycharges) AS total_revenue
FROM customers;
