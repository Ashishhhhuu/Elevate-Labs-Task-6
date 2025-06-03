Task 6: Sales Trend Analysis Using SQL Aggregations

📌 Objective
The goal of this task was to perform a comprehensive time-series analysis on sales data using SQL. The analysis focused on understanding monthly trends in both revenue and order volume by applying aggregation techniques. These insights are essential for businesses to track performance, optimize strategies, and make data-driven decisions.

📂 Dataset Overview
The table analyzed was online_sales, containing transactional sales data. The dataset had the following columns:

Column Name	Description
order_id	Unique identifier for each customer order
order_date	Date when the order was placed
product_id	Product code corresponding to the sale
amount	Total billed amount for that transaction

While simple, this structure is typical for sales data and was sufficient for deriving monthly trends.

🧠 SQL Concepts Applied
During the analysis, the following SQL features were used:

EXTRACT(YEAR | MONTH FROM order_date) – to extract year and month values for aggregation

GROUP BY – to summarize metrics by each month

SUM() – to calculate total sales per time period

COUNT(DISTINCT order_id) – to measure order volume

ORDER BY – to sort results chronologically

BETWEEN – to apply date range filters for seasonal or quarterly analysis

🔍 Steps Performed and Queries Explained
Extracted the Month from order_date

Purpose: To isolate the month component to enable monthly analysis.

Grouped Data by Year and Month

Purpose: To structure the data chronologically and enable meaningful aggregation.

Computed Monthly Revenue

Purpose: To analyze sales performance by month and assess growth or decline trends.

Calculated Number of Orders per Month

Purpose: To measure customer engagement and demand trends on a monthly basis.

Sorted Monthly Summaries

Purpose: To organize the output in a readable timeline, from January to May.

Filtered Sales within a Specific Date Range

Purpose: To focus the analysis on the period between January 1 and May 31, 2024.

📊 Business Value of Analysis
This time-based analysis can help:

Identify peak and low sales months, aiding in forecasting and inventory planning

Track customer behavior trends, such as increased orders in certain months

Align marketing campaigns with high-performing periods

Evaluate product performance over time (with further joins)

📈 Summary
With simple SQL techniques, we were able to uncover important sales dynamics:

Which months performed best in revenue

How many orders were placed monthly

Trends that could guide future business strategies
