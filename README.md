
# 🛍️ Retail Sales Analysis (SQL Project)

 📌 Project Overview

This project focuses on analyzing retail sales data using SQL.
The goal is to extract meaningful insights such as customer behavior, sales trends, and category performance.

---

 🎯 Objectives

* Analyze sales data for specific dates and categories
* Identify top-performing customers and categories
* Understand monthly and yearly sales trends
* Segment transactions based on time (shifts)
* Perform aggregation and filtering using SQL queries



 🗂️ Dataset Description

The dataset contains retail transaction data with the following columns:

* `transaction_id` – Unique ID for each transaction
* `sale_date` – Date of purchase
* `sale_time` – Time of transaction
* `customer_id` – Unique customer identifier
* `gender` – Customer gender
* `age` – Customer age
* `category` – Product category (Clothing, Beauty, etc.)
* `quantity` – Number of items purchased
* `price_per_unit` – Price of each item
* `total_sale` – Total transaction value



 🔍 Key SQL Queries & Analysis

 1️ Sales on Specific Date

Retrieve all sales made on `2022-11-05`

 2️ Category & Quantity Filter

Find transactions in **Clothing category** with quantity > 10 in November 2022

 3️ Total Sales by Category

Calculate total revenue generated per category

 4️ Average Age (Beauty Category)

Find average age of customers purchasing beauty products

 5️ High Value Transactions

Identify transactions where total sales > 1000

 6️ Transactions by Gender & Category

Count number of transactions by gender for each category

 7️ Monthly Sales Analysis

* Calculate average sales per month
* Identify best-selling month in each year

8️ Top Customers

Find top 5 customers based on total spending

 9️ Unique Customers per Category

Count distinct customers in each category

 10 Sales Shift Analysis

Categorize orders into:

*  Morning (<=12)
*  Afternoon (12–17)
*  Evening (>17)


 🧠 Key Insights

(Add your findings here, example:)

* Clothing category generated the highest revenue
* November showed peak sales due to seasonal demand
* Majority of high-value transactions came from repeat customers
* Evening shift had the highest number of orders



 🛠️ Tools & Technologies

* SQL Server (SSMS)
* SQL (Joins, Aggregations, Group By, Window Functions)



 🚀 How to Run This Project

1. Import the dataset into SQL Server
2. Open the `.sql` file
3. Execute queries step by step
4. Analyze outputs



 📈 Future Improvements

* Create dashboard using Power BI / Tableau
* Add predictive analysis (future sales forecasting)
* Optimize queries for performance



 👨‍💻 Author

**Amogh Hanmattekar**
BSc Graduate | Aspiring Data Analyst / Data Scientist


  If you like this project

Give it a ⭐ on GitHub and feel free to fork!
