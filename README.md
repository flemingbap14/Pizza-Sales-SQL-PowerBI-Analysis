🍕 Pizza Sales Analysis Dashboard



📊 Project Overview


This project delivers a comprehensive analysis of a pizza store’s sales performance by leveraging SQL for robust data querying and Power BI for interactive visualization. The dashboard tracks key performance indicators (KPIs) and identifies trends to help the business optimize its menu and operational efficiency.



🛠 Tools & Technologies


1. SQL (MS SQL Server / MySQL) – Used for complex data extraction, KPI calculations, and trend analysis.
2. Power BI Desktop – For data modeling, DAX integration, and creating an interactive visualization layer.
3. Excel/CSV – The primary source of raw transactional data.
4. DAX (Data Analysis Expressions) – To create custom measures for dynamic date filtering and percentage calculations.



🎯 Objectives


1. Calculate essential business KPIs (Revenue, Order Value, Volume).
2. Analyze sales trends to identify peak days and months for staffing/inventory planning.
3. Visualize the distribution of sales across different pizza categories and sizes.
4. Identify "Best" and "Worst" sellers to drive menu engineering decisions.



📈 Key Features


🚩 KPI Scorecard: Real-time tracking of Total Revenue, Average Order Value, and Total Pizzas Sold.

🗓 Temporal Trend Analysis: Interactive line/bar charts showing Daily and Monthly order patterns to identify busy periods.

🍕 Product Segmentation: Breakdown of sales by Pizza Category (Classic, Veggie, etc.) and Size (S, M, L) to understand customer preferences.

🏆 Top & Bottom Performers: Dynamic "Top 5" and "Bottom 5" rankings based on Revenue, Quantity, and Total Orders.

🔄 Interactive Filtering: Ability to slice data by specific months or categories to perform deep-dive analysis.



📌 Business Impact


1. Operational Optimization: Identified that weekends and specific months (July/January) are peak periods, allowing for better staff scheduling.
2. Menu Engineering: Highlighted the bottom 5 selling pizzas, providing a data-backed case for menu removal or promotional adjustments.
3. Strategic Pricing: The "Average Order Value" insight helps in designing upsell strategies (e.g., "Add a side to reach $X").
4. Inventory Management: Size and category distribution charts assist in predicting stock requirements for different pizza bases and toppings.



🖼️ Sample Dashboard Views


<img width="1338" height="726" alt="Pizzasalesdashboard" src="https://github.com/user-attachments/assets/3a30bb29-31fb-4bf3-b38b-d5fbd1efdc37" />


Home Page: Overview of KPIs and Sales Trends.

Best/Worst Sellers: Deep dive into product-level performance.



🧪 How to Use


1. SQL Setup: Run the provided .sql script in your database environment to create the tables and view the underlying logic.
2. Power BI: Open the .pbit or .pbix file.
3. Data Connection: If prompted, update the data source settings to point to the pizza_sales.csv file on your local machine.
4. Explore: Use the slicers to filter by date or category to interact with the visuals.



📚 Learnings


1. Writing complex SQL queries for business metrics (e.g., calculating percentage of total sales using subqueries).
2. Connecting SQL databases to Power BI and managing the data refresh process.
3. Designing user-centric layouts that prioritize the most important KPIs (High-level to Granular).
4. Using DAX to handle time-intelligence and ranking functions.
