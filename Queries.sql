-- SQL Retail Sales Analysis - P1
CREATE DATABASE sql_project_p2;


-- Create TABLE
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
            (
                transaction_id INT PRIMARY KEY,	
                sale_date DATE,	 
                sale_time TIME,	
                customer_id	INT,
                gender	VARCHAR(15),
                age	INT,
                category VARCHAR(15),	
                quantity	INT,
                price_per_unit FLOAT,	
                cogs	FLOAT,
                total_sale FLOAT
            );

My Analysis and findings
Q.1 write  a sql query to retrive all colummns for sales made on '2022-11-05'?
select * from 
  [SQL - Retail Sales Analysis_utf ] where sale_date='2022-11-05';

Q.2 write a sql query to retrieve all transactions where category = 'clothing' and quantity sold is more than 10 in the month of Nov-2022?
SELECT * FROM retail_sales 
  WHERE  category = 'Clothing'AND sale_date >= '2022-11-01' AND sale_date < '2022-12-01' AND quantity >= 10;

Q.3 write a sql query to calculate  the total sales(total_sale) for each category
select category,sum(total_sale)
  as total_sales from [SQL - Retail Sales Analysis_utf ] group by category;

Q.4 write a sql query to find average age of customers who purchased items from the 'beauty' category?
select category,avg(age) as average_age 
  from [SQL - Retail Sales Analysis_utf ] group by category  having category='beauty';

Q.5 write a sql query to find all transactions where the total_sale is greater than 1000?
select  * from [SQL - Retail Sales Analysis_utf ] 
  where total_sale >1000 ;

Q.6 write a sql query to find the total number of transcations(transaction_id) made by each gender in each category?
select category,gender,count(transactions_id) 
  from [SQL - Retail Sales Analysis_utf ] group by gender,category;

Q.7 write  a sql query to calculate the average sale for each month. find out best selling month in each year?
SELECT * FROM (SELECT  YEAR(sale_date) AS year, MONTH(sale_date)
  AS month,SUM(total_sale) AS total_sales, RANK() OVER (PARTITION BY YEAR(sale_date) 
  ORDER BY SUM(total_sale) DESC) AS rnk FROM retail_sales GROUP BY YEAR(sale_date), MONTH(sale_date)) t WHERE rnk = 1;

Q.8 write a sql query to find top 5 customers based on the highest total sales?
select customer_id,max(total_sale) as highest_sales 
  from [SQL - Retail Sales Analysis_utf ] group by customer_id,total_sale;

Q.9 write a sql query to find the number of unique customers who purchased items from each category?
select category,count(distinct customer_id) as unique_customers
  from [SQL - Retail Sales Analysis_utf ] group by category;

Q.10 write a sql query to create each shift and number of orders(example morning<=12, afternoon between 12 & 17 ,evening>17)?
SELECT 
    CASE 
        WHEN DATEPART(HOUR, sale_time) <= 12 THEN 'Morning'
        WHEN DATEPART(HOUR, sale_time) BETWEEN 13 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS shift,
    COUNT(*) AS total_orders
FROM retail_sales
GROUP BY 
    CASE 
        WHEN DATEPART(HOUR, sale_time) <= 12 THEN 'Morning'
        WHEN DATEPART(HOUR, sale_time) BETWEEN 13 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END;

----end of project
 





