CREATE DATABASE quickcart_db;
USE quickcart_db;

Select * from orders limit 10;

Select  SUM(Revenue) as Total_Revenue from orders;

Select count(Order_ID) as Total_Orders from orders;

Select Product_Category,sum(Revenue) as Total_Revenue from orders group by Product_Category order by Total_Revenue desc;

Select Product_Name, sum(Quantity) as Total_Sold from orders group by Product_Name order by Total_Sold desc limit 10;

Select City, sum(Revenue) as Total_Revenue from orders group by City order by Total_Revenue desc;

Select City, COUNT(Order_ID) as Total_Orders from orders group by City order by Total_Orders desc;

Select Delivery_Partner, avg(Delivery_Time_Minutes) as Avg_Delivery_Time from orders group by Delivery_Partner order by Avg_Delivery_Time;

Select Delivery_Partner,avg(Customer_Rating) as Avg_Rating from orders group by Delivery_Partner order by Avg_Rating desc;

Select Payment_Method, count(*) AS Total_Orders from orders group by Payment_Method order by Total_Orders DESC;

Select month, sum(Revenue) as Monthly_Revenue from orders group by Month order by Monthly_Revenue desc;

Select Stock_Status, count(*) as Order_Count, sum(Revenue) as Total_Revenue from orders group by Stock_Status;

Select day, count(Order_ID) as Total_Orders from orders group by day order by Total_Orders desc;

select Delivery_Speed, count(*) as Total_Orders from orders group by Delivery_Speed;

