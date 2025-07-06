Use DSA_PROJECT

SELECT * from order_status

select COUNT(DISTINCT Row_ID) FROM [dbo].[KMS Sql Case Study]

SELECT * FROM [dbo].[KMS Sql Case Study]

Select COUNT(PROFIT) FROM  [dbo].[KMS Sql Case Study]

Select * from [dbo].[KMS Sql Case Study]
where TRY_CAST (PROFIT AS FLOAT) IS NULL

Update [dbo].[KMS Sql Case Study]
SET profit = Null
where TRY_CAST(profit As FLOAT) IS NULL ;

Alter table [dbo].[KMS Sql Case Study]
alter column profit float;

select profit, COUNT(*) AS Numrows
from [dbo].[KMS Sql Case Study]
group by profit
order by profit;

Alter table  [dbo].[KMS Sql Case Study]
DROP COLUMN unit_price

select * from  [dbo].[KMS Sql Case Study]

ALTER TABLE  [dbo].[KMS Sql Case Study]
Alter column unit_price decimal (10,3)

  
where row_id is null

SELECT Order_id, count(*) AS COUNT
FROM  [dbo].[KMS Sql Case Study]
Group by Order_id 
Having count(*) > 1;

select * from  [dbo].[KMS Sql Case Study]

KMS sql case study k
order status o

SELECT [dbo].[KMS Sql Case Study].order_ID,
       [dbo].[KMS Sql Case Study].ROW_ID,
       [dbo].[KMS Sql Case Study].Order_date,
	   [dbo].[KMS Sql Case Study].sales,
	   [dbo].[KMS Sql Case Study].ship_mode,
	   [dbo].[KMS Sql Case Study].profit,
	   [dbo].[KMS Sql Case Study].shipping_cost,
	   [dbo].[KMS Sql Case Study].customer_name,
	   [dbo].[KMS Sql Case Study].region,
	   [dbo].[KMS Sql Case Study].customer_segment,
	   [dbo].[KMS Sql Case Study].product_category,
	   [dbo].[KMS Sql Case Study].product_name,
	   [dbo].[KMS Sql Case Study].product_sub_category,
	   [dbo].[KMS Sql Case Study].order_priority,
	   [dbo].[KMS Sql Case Study].province,
	   [dbo].[KMS Sql Case Study].discount,
	   [dbo].[KMS Sql Case Study].unit_price,
	   [dbo].[KMS Sql Case Study].product_container,
	   [dbo].[KMS Sql Case Study].product_base_margin,
	   [dbo].[KMS Sql Case Study].ship_date,
	   [dbo].[KMS Sql Case Study].order_quantity,
	   [dbo].[Order_Status].status
	   
from [dbo].[KMS Sql Case Study]
left join [dbo].[Order_Status]
on [dbo].[KMS Sql Case Study].order_id = [dbo].[Order_Status].Order_id


SELECT [dbo].[KMS Sql Case Study].order_ID,
       [dbo].[KMS Sql Case Study].ROW_ID,
       [dbo].[KMS Sql Case Study].Order_date,
	   [dbo].[KMS Sql Case Study].sales,
	   [dbo].[KMS Sql Case Study].ship_mode,
	   [dbo].[KMS Sql Case Study].profit,
	   [dbo].[KMS Sql Case Study].shipping_cost,
	   [dbo].[KMS Sql Case Study].customer_name,
	   [dbo].[KMS Sql Case Study].region,
	   [dbo].[KMS Sql Case Study].customer_segment,
	   [dbo].[KMS Sql Case Study].product_category,
	   [dbo].[KMS Sql Case Study].product_name,
	   [dbo].[KMS Sql Case Study].product_sub_category,
	   [dbo].[KMS Sql Case Study].order_priority,
	   [dbo].[KMS Sql Case Study].province,
	   [dbo].[KMS Sql Case Study].discount,
	   [dbo].[KMS Sql Case Study].unit_price,
	   [dbo].[KMS Sql Case Study].product_container,
	   [dbo].[KMS Sql Case Study].product_base_margin,
	   [dbo].[KMS Sql Case Study].ship_date,
	   [dbo].[KMS Sql Case Study].order_quantity,
	   [dbo].[Order_Status].status

INTO kms_final_joined
from [dbo].[KMS Sql Case Study]
Left join[dbo].[Order_Status]
on [dbo].[KMS Sql Case Study].order_id = [dbo].[Order_Status].Order_id

select * from [dbo].[kms_final_joined]


---------ANSWERS
----PRODUCT CATEGORY WITH THE HIGHEST SALES
Select Top 1
[product_category],count(*) as total_sales
 from [dbo].[kms_final_joined]
group by [product_category]
order by 
Total_sales desc; 

----product category with the highestsales = OFFICE SUPPLIES

----Top 3 and Bottom 3 regions in terms of sales
---Top 3 regions
select Top 3
   Region,
   SUM(Sales) AS Total_sales
from [dbo].[kms_final_joined]
   group by region
   order by
   Total_sales desc;

select Top 3
   Region,
   SUM(Sales) AS Total_sales
  from [dbo].[kms_final_joined]
   group by region
   order by
   Total_sales ;
     ------Bottom 3 region = Nunavut (116,376.483), Northwest territories(800,847.383), Yukon(975,867.379)
	  select Top 3
   Region,
   SUM(Sales) AS Total_sales
  from [dbo].[kms_final_joined]
   group by region
   order by
   Total_sales asc;
      
	--------Total sales of appliances in Ontario
	select
	SUM(SALES) AS TOTAL_Appliance
	from [dbo].[kms_final_joined]
	where product_sub_category = 'Appliances'
	AND Province = 'Ontario'
	----Total sales of Appliances in Ontario = 202,346.80

----Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers
	select TOP 10 customer_name, SUM(SALES) AS Total_sales
	from [dbo].[kms_final_joined]
	GROUP BY Customer_name
	ORDER BY Total_sales ASC;

	----The most shipping cost was incurred using which shipping method
	Select
	 [Ship_mode],
	 SUM ([Shipping_cost]) AS Total_shipping_cost
	 from [dbo].[kms_final_joined]
	 Group by
	 [Ship_Mode]
	 Order by
	 Total_shipping_cost Desc;
	 ----Shipping method with the most shipping cost = Delivery truck (51,971,.940)

	 -----The most valuable customers and the products or services they typically purchase
	 ---Top 10 most valuable customers
	 Select Top 10
	[Customer_Name], Sum (sales) AS Total_sales
	 from [dbo].[kms_final_joined]
	 Group by Customer_name
	 Order by Total_Sales Desc;
	 -------TOP 10 most valuable customers 
	 ('Emily phan', 'Deborah Brumfield', 'Roy skaria',
 'Sylvia foulston','Grant carroll','Alejandro grove',
 'Darren bud', 'Julia barnett', 'John lucas', 'Liz Mackendrick')
 
	 ----Products or services they typically purchase

Select 
 Customer_name,
 product_sub_category,
 SUM(sales) AS total_sales
from [dbo].[kms_final_joined]
 WHERE Customer_name IN ('Emily phan', 'Deborah Brumfield', 'Roy skaria',
 'Sylvia foulston','Grant carroll','Alejandro grove',
 'Darren bud', 'Julia barnett', 'John lucas', 'Liz Mackendrick')
 GROUP BY customer_name, product_sub_category
 ORDER BY customer_name, Total_sales DESC;

	      
----Small business customer with the highest sales
Select Top 1
   Customer_name,
   Customer_segment,
   Sum(sales) AS Total_sales
   from [dbo].[kms_final_joined]
   where customer_segment = 'small business'
   Group by customer_name, customer_segment 
   Order by total_sales desc;

   ------Which corporate customer placed the most number of orders in 2009-2012
   Select Top 1
   customer_name,
   customer_segment,
   Count (DISTINCT order_ID ) AS number_of_orders
   from [dbo].[kms_final_joined]
   where customer_segment = 'corporate'
   AND YEAR(Order_date) BETWEEN 2009 AND 2012
   group by customer_name, customer_segment
   order by number_of_orders DESC
   ----corporate customer that placed the most number of orders = Adam Hart (18)

   ----Which consumer customer was the most profitable one
   Select TOP 1
   Customer_name, sum (profit) AS Total_profit
   from kms_final_joined
   where customer_segment = 'consumer'
   group by customer_name
   order  by total_profit desc;
   ----The most profitable consumer customer = (Emily phan) = 34,005.439

   -----Customers that returned items and segment they belong to
   Select DISTINCT
   customer_name,
   customer_segment
  from 
  [dbo].[kms_final_joined]
  where
  status = 'returned';
  ----Region of bottom 10 customers
  select 
  customer_name,
  region
  from [dbo].[kms_final_joined]
  WHERE Customer_name IN (
'Jeremy farry', 'Natalie Dechemy', 'Nicole Fjeld', 'Katrina Edelman', 
'Dorothy dickinson', 'Christine kargatis', 'Eric murdock', 
'chris McAfee', 'Rick huthwaite', 'Mark hamilton'
)
 order by customer_name
  
  --REGIONS
  select REGION,
  count(*) AS Region_count
 FROM [dbo].[kms_final_joined]
 Group by region
 Order by region_count DESC;

 ---PRODUCTS PURCHASED
  select 
  customer_name,
  product_sub_category,
  count(*) AS times_purchased,
  SUM(sales) As total_spent
  from [dbo].[kms_final_joined]
  WHERE Customer_name IN (
  'Jeremy farry', 'Natalie Dechemy', 'Nicole Fjeld', 'Katrina Edelman', 
'Dorothy dickinson', 'Christine kargatis', 'Eric murdock', 
'chris McAfee', 'Rick huthwaite', 'Mark hamilton'
)
group by customer_name, product_sub_category
 order by customer_name, total_spent DESC;


 -----Question 11
 select
 order_priority,
 ship_mode,
 COUNT(*) As total_order,
 SUM(shipping_cost) AS total_shipping_cost
 from [dbo].[kms_final_joined]
 group by order_priority, ship_mode
 order by order_priority, ship_mode
   

   select * from [dbo].[KMS Sql Case Study]
	select * from [dbo].[kms_final_joined]



