### DATA-ANALYSIS-PROJECT
Data Analysis
This project involved analyzing Amazon product and review data using Microsoft Excel. 
I was able to generate insights on product pricing, discount patterns, customer ratings,
and revenue potential across different product categories.

- Data Cleaning & Preparation

 I cleaned and transformed the dataset to make it ready for analysis.

Step 1. I Removed unnecessary columns, such as image links, product links and blank fields.

Step 2. Dropped rows with missing values in important fields like product name, price, and rating.

Step 3. Standardized numeric columns (price, rating, review count) to ensure accurate calculations.

These changes made the data consistent, clean, and ready for pivot table analysis.

Some categories had significantly more products listed than others.
Categories varied in their average discount levels.
Most products were rated 4.0 and above, showing generally positive feedback.
products with higher review counts also tended to have higher ratings, 
indicating strong engagement.

•Discount Patterns
Over 500 products had discounts of 50% or more, showing that aggressive discounting is common.

•Revenue Potential
Estimated revenue helped identify top-performing categories not just by price, but also by volume of reviews.

•Price Range Analysis
Most products fell into mid-range price brackets, with fewer high-ticket

- Dashboard creation :
 I build a dashboard to visualize my findings.
- Created a dashboard featuring a bar chart to visualize key insights, including:
- Comparison of average actual price vs. discount price by category
 - Distribution of products with 50%+ discount  - Top-rated products/categories based on average rating
 - Total number of reviews per category.



PROJECT DOCUMENTATION: KMS SQL CASE STUDY
Step 1 create a Data base named DSA PROJECT SQL to store and manage the project data
2 import flat file (KMS SQL CASE STUDY) into sql server using the flat file import wizard
During the import, the Row ID column was set as primary key to ensure each order uniquely identified
3 I used SELECT TOP 5 to preview the first few row of the dataset and also check for NULL
import the second data set ORDER_STATUS, create a new table named order status, column include: Order_iD(int) , status (nvarchar)
The table was joined together 
4 Perfumed a LEFT JOIN to combine the KMS SQL CASE STUDY TABLE  with the ORDER_STATUS TABLE on ORDER_ID

ANALYSIS EXECUTION 
1 Highest sales by product category using GROUP BY and sort in descending order
2 Top and Bottom region using ORDER BY to identify the performers
My dataset consisted of two tables. I began by creating a database and importing the tables.
During the import process, I defined primary keys to maintain data integrity.

Next, I performed data cleaning:
•	Removed unnecessary columns.
•	Standardized the format of numerical values by adjusting the number of decimal places.
•	Checked for and handled null values in rows.
•	Identified IDs with values greater than one and discovered duplicate entries in some of the ID fields.

After completing the cleaning process, I proceeded to answer the analysis questions based on the refined dataset.

Answer for question 4 and 11
The analysis revealed clear differences in sales performance across regions, with the West leading in total sales 
while regions like Nunavut and Yukon lag behind. High-value customers such as Dennis Kane and Emily Phan contributed
significantly to revenue, whereas low-performing customers mostly purchased inexpensive, basic office supplies in small quantities.
Additionally, shipping methods like Express Air and Delivery Truck are being used across all order types, regardless of urgency 
— suggesting inefficiencies in the shipping process. These findings highlight opportunities to boost performance by supporting 
weaker regions, optimizing delivery strategies, and leveraging insights from top customers.



