SELECT *
FROM sales;

SELECT 
   Product_Category,
   Date,
   SUM(Order_Quantity) AS "Total_Sales",
   SUM(Revenue) AS "Total_Revenue",
   SUM(Cost) AS "TotaL_Cost",
   SUM(Profit) AS "Total_Profit"
FROM sales   
GROUP BY product_category, Date;

