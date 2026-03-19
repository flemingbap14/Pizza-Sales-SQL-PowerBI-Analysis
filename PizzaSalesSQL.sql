create database PizzaDB;

use PizzaDB;

select * from pizza_sales;

# Problem Statement

/* KPI'S Requirement 

1 . Total Revenue: The sum of the total price of all pizza ordres.
2 .  Average order value: The avergare amount spent per order, calculated by dividing the total revenue by the total number of order.
3 . Total Pizzas Sold: The sum of the quantities of all pizzas sold.
4 . Total Orders: The total number of orders placed.
5 . Average pizzas Per order: The average number of pizzas sold per order
calculated by dividing the total number of pizzas by the number of orders.*/

-- 1 . Total Revenue: The sum of the total price of all pizza ordres.
 
 select sum(total_price) as Total_Revenue from pizza_sales;
 
 -- 2 .  Average order value: The avergare amount spent per order, calculated by dividing the total revenue by the total number of order.
 
 select sum(total_price) / count(distinct order_id) As Avg_Order_Value from pizza_sales;

--  3 . Total Pizzas Sold: The sum of the quantities of all pizzas sold.

select sum(quantity) as Total_Pizzas_sold from pizza_sales;

-- 4 . Total Orders: The total number of orders placed.

select count(distinct order_id) as Total_order from pizza_sales;
 
/* 5 . Average pizzas Per order: The average number of pizzas sold per order
calculated by dividing the total number of pizzas by the number of orders */

select sum(quantity) / count(distinct order_id) as Avg_Pizzas_Per_order from pizza_sales;

/* Chart Requirements

1. Daily Trend for Total Orders.
2. Monthly Trend for Total Orders.
3. Percentage of Sales by Pizza Category.
4. Percentage of Sales by Pizza Size.
5. Total Pizzas Sold by Pizza Category.
6. Top 5 Best Sellers (by Revenue, Quantity, and Total Orders).
7. Bottom 5 Best Sellers (by Revenue, Quantity, and Total Orders).*/

-- 1. Daily Trend for Total Orders.

SELECT 
    DAYNAME(STR_TO_DATE(order_date, '%Y-%m-%d')) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
WHERE order_date IS NOT NULL
GROUP BY order_day;
-- ORDER BY FIELD(order_day, 
   --  'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');

-- 2. Monthly Trend for Total Orders.

SELECT 
    MONTHNAME(STR_TO_DATE(order_date, '%Y-%m-%d')) AS month_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
WHERE STR_TO_DATE(order_date, '%Y-%m-%d') IS NOT NULL
GROUP BY MONTH(STR_TO_DATE(order_date, '%Y-%m-%d')),
         MONTHNAME(STR_TO_DATE(order_date, '%Y-%m-%d'))
ORDER BY MONTH(STR_TO_DATE(order_date, '%Y-%m-%d'));

-- 3. Percentage of Sales by Pizza Category.

 SELECT 
    pizza_category, 
    SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales where month(order_date) = 1
) AS PCT
FROM pizza_sales
where month(order_date) = 1
GROUP BY pizza_category;

-- 4. Percentage of Sales by Pizza Size.

SELECT 
    pizza_size, 
    cast(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) as decimal(10, 2)) AS PCT
FROM pizza_sales
GROUP BY pizza_size
order by PCT desc;

-- 5. Total Pizzas Sold by Pizza Category.

SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
WHERE MONTH(order_date) = 2
GROUP BY pizza_category
ORDER BY Total_Quantity_Sold DESC;

-- 6. Top 5 Best Sellers (by Revenue, Quantity, and Total Orders).

-- Revenue

select pizza_name, sum(total_price) as Total_revenue 
from pizza_sales
group by pizza_name
order by Total_revenue desc
limit 5;

-- Quantity

select pizza_name, sum(quantity) as Total_Quantity 
from pizza_sales
group by pizza_name
order by Total_Quantity  desc
limit 5;

-- Total Orders

select pizza_name, count(distinct order_id) as Total_Order 
from pizza_sales
group by pizza_name
order by Total_Order desc
limit 5;

-- 7. Bottom 5 Best Sellers (by Revenue, Quantity, and Total Orders).*/


-- Revenue

select pizza_name, sum(total_price) as Total_revenue 
from pizza_sales
group by pizza_name
order by Total_revenue asc
limit 5;

-- Quantity

select pizza_name, sum(quantity) as Total_Quantity 
from pizza_sales
group by pizza_name
order by Total_Quantity  asc
limit 5;

-- Total Orders

select pizza_name, count(distinct order_id) as Total_Order 
from pizza_sales
group by pizza_name
order by Total_Order asc
limit 5;