CREATE TABLE online_sales (
  order_id INT PRIMARY KEY,
  order_date DATE,
  product_id VARCHAR(10),
  amount DECIMAL(10, 2)
);

INSERT INTO online_sales (order_id, order_date, product_id, amount) VALUES
(1001, '2024-01-15', 'P001', 120.50),
(1002, '2024-01-20', 'P002', 75.00),
(1003, '2024-02-03', 'P003', 210.99),
(1004, '2024-02-14', 'P001', 120.50),
(1005, '2024-02-18', 'P002', 95.00),
(1006, '2024-03-05', 'P004', 185.00),
(1007, '2024-03-10', 'P001', 120.50),
(1008, '2024-03-22', 'P005', 300.00),
(1009, '2024-04-01', 'P003', 210.99),
(1010, '2024-04-15', 'P004', 185.00),
(1011, '2024-04-20', 'P002', 95.00),
(1012, '2024-05-02', 'P006', 400.00),
(1013, '2024-05-08', 'P001', 120.50),
(1014, '2024-05-15', 'P007', 350.00);

SELECT EXTRACT(MONTH FROM order_date) AS month
FROM online_sales;

SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month
FROM online_sales
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date);

SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS revenue
FROM online_sales
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date);

SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY EXTRACT(YEAR FROM order_date), EXTRACT(MONTH FROM order_date);

SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month
FROM online_sales
GROUP BY year, month
ORDER BY year, month;

SELECT *
FROM online_sales
WHERE order_date BETWEEN '2024-01-01' AND '2024-05-31';












