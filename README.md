---
# PROJECT SUMMARY
This project includes SQL queries to perform data analysis on a pizza sales dataset and also a dashboard visualization of it from January to December 2015.
The goal is to generate actionable insights on business performance through key sales metrics and visual reporting.

## DataSet Overview
- Time Period: January-December 2015
- Data : Order dates,order times,pizza names, pizza sizes, pizza ids, quantities,prices.
- Purpose: Understanding of sales trends and performance across time, pizza types and customer behaviour.

## The analysis focused on answering key performance indicators (KPIs):
### Total Revenue:
Sum of total price of all pizza orders.
### Average Order Value:
Total revenue / number of orders.
### Total Pizzas Sold:
Sum of all pizza quantities sold.
### Total Orders:
Count of distinct order IDs.
### Average Pizzas per Order:
Total pizzas sold / total orders.

## SQL-Based Analysis
The file `data_analysis_proj1.sql` includes raw SQL queries used to generate core performance metrics and data visualizations.
### Queries Covered:
- Total Revenue
- Average Order Value
- Total Pizzas Sold
- Total Orders
- Average Pizzas per Order
### Chart-Based Queries:
- Daily and Hourly Trends of Orders
- Sales % by Pizza Category and Size
- Total Pizzas Sold by Category
- Top 5 Best Sellers
- Bottom 5 Sellers (for December)
 These queries are designed to be run on a relational database such as SQL Server or PostgreSQL with a table named `pizza_sales`.

## To visually support these insights, the following charts and visualizations were created:
- Daily Trend of Total Orders
- Hourly Trend of Total Orders
- Percentage of Sales by Pizza Category
- Percentage of Sales by Pizza Size
- Total Pizzas Sold by Pizza Category
- Top 5 Best-Selling Pizzas 
- Bottom 5 Worst-Selling Pizzas 

## Features Used: 
- PivotTables and PivotCharts
- Data Cleaning and Formatting
- Named Ranges and Data Validation
- Slicers for interactivity
- Formulas: SUM, AVERAGE, COUNTIF, VLOOKUP, etc.
- Conditional Formatting

## FILE CONTENTS
- **Pizza_sales_dashboard.xlsx**  -  Full Excel file with data, Analysis, Dashboard.
- **Data_Analysis_proj1.sql** - SQL queries for data analysis and chart generation
- **README.md**: Project documentation 

