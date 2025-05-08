
--Query for Total Revenue
select SUM(total_price) as Total_Revenue
from pizza_sales;

--Query for Average order value
select SUM(total_price)/ COUNT(DISTINCT(order_id)) as Average_Order_Value
from pizza_sales;

--Query for Total Pizzas sold
select SUM(quantity) as Total_Pizzas_sold
from pizza_sales;

--Query for total order placed

select COUNT(DISTINCT(order_id)) as Total_orders
from pizza_sales;

--Query for average pizzas per order
select cast(cast(SUM(quantity) as DECIMAL(10,2))/ cast(COUNT(DISTINCT (order_id)) as DECIMAL(10,2)) as DECIMAL(10,2))
as Average_Pizzas_per_order
from pizza_sales;
--cast is used to decide the decimal value after the calculation.

--CHARTS 


--Query for Daily trend for total orders
select DATENAME(DW,order_date)as Order_Day,COUNT(DISTINCT order_id) as Total_Orders 
FROM pizza_sales
Group by DATENAME(DW,order_date);


--Query for Hourly Trend for total orders
select DATEPART(Hour,order_time)as Order_Hours,COUNT(DISTINCT order_id) as Total_Orders 
FROM pizza_sales
Group by DATEPART(Hour,order_time)
order by DATEPART(Hour,order_time);

--Query for percentage of sales for pizza category
select pizza_category,cast(sum(total_price) as decimal(10,2))as TotalSales ,cast(SUM(total_price) * 100 /
(select SUM(total_price) from pizza_sales where month(order_date) = 1) as decimal(10,2))as PERCENTAGE_SALES
from pizza_sales
where month(order_date) = 1
group by pizza_category
;

--Query for Percentage of sales by pizza size

select pizza_size,cast(sum(total_price) as decimal(10,2) )as TotalSales ,cast(SUM(total_price) * 100 /
(select SUM(total_price) from pizza_sales ) as decimal(10,2))as PERCENTAGE_SALES
from pizza_sales
group by pizza_size
order by PERCENTAGE_SALES desc
; 


--Query for Percentage of sales by pizza size for quarter of an year
select pizza_size,cast(sum(total_price) as decimal(10,2) )as TotalSales ,cast(SUM(total_price) * 100 /
(select SUM(total_price) from pizza_sales where DATEPART(quarter,order_date)=1) as decimal(10,2))as PERCENTAGE_SALES
from pizza_sales
where DATEPART(quarter,order_date)=1
group by pizza_size
order by PERCENTAGE_SALES desc
; 

--query for total pizzas sold by pizza category

select pizza_category,sum(quantity) as Total_Pizzas_sold
from pizza_sales
group by pizza_category
;

--query for top 5 best sellers with respect to pizzas

select TOP(5) pizza_name,sum(quantity) as Pizzas_sold
from pizza_sales
group by pizza_name
order by sum(quantity) desc
;

--query for bottom 5 best sellers with respect to pizzas

select TOP(5) pizza_name,sum(quantity) as Pizzas_sold
from pizza_sales
where MONTH(order_date)= 12 --for december month because of 12
group by pizza_name 
order by sum(quantity) 
;
