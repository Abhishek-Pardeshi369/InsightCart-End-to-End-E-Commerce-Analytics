InsightCart | End-to-End E-Commerce Analytics

Project Overview

InsightCart is an end-to-end data analytics project built using the Brazilian E-Commerce (Olist) dataset.

This project transforms raw transactional data into business insights through data cleaning, SQL analysis, DAX metrics, and interactive Power BI dashboards.

---

Business Objective

The objective of this project is to:

- Analyze sales performance
- Understand customer behavior
- Track order trends
- Evaluate product category performance
- Measure delivery performance
- Generate actionable business insights

---

Dataset

Dataset Source:
Kaggle — Brazilian E-Commerce Public Dataset by Olist

Tables Used:

- Customers
- Orders
- Order Items
- Products

---

Tech Stack

- Python (Pandas)
- Jupyter Notebook
- SQL (MySQL)
- Power BI
- DAX
- Git & GitHub

---

Project Workflow

Raw Dataset
↓
Data Cleaning (Python – Pandas)
↓
Processed Dataset Creation
↓
SQL Business Analysis
↓
Power BI Dashboard Development
↓
Business Insights

---

Data Preparation

Performed data cleaning and preprocessing using Pandas:

- Loaded raw datasets
- Handled missing values
- Standardized formats
- Created processed datasets
- Prepared data for analytics

Power BI Transformation:

- Merged Portuguese product categories with English category names
- Created relationships across tables
- Built interactive filtering

---

SQL Analysis

Performed business analysis using SQL:

1. Month-on-Month Revenue & Delivered Orders Trend
- insight:
- orders grew nearly 4x between janury (750 orders)and may 2017 (3,546 orders),making the highest revenue peak.

2. Top 5 Revenue Generating States
- insight:
- SP is the undisputed market leader ,generating over 40k orders and 5.7M+ revenue,vastly outperforming all other states.

3. Top Product Categories by Revenue & Sales
- insight:
- Health & Beauty leads category performance,driving the highest revenue of over 1.25M.

4. Product Categories with Highest Canceled Orders
- insight:
- Sport & Leisure recorderd the highest number of canceled orders at 51 units.

5. Average Order Value (AOV) by State
- insight:
- while states like PB ,AC and AP have lower order volums ,they generate the highest average order value ,peaking at 266.61 BRL.

6. Average Delivery Time by State
- insight:
- Remot states like RR,AP and AM suffer from severe delivery delays,with the highest average delivery times peaking at nearly 29 days.
---

DAX Measures

Created measures including:

- Total Revenue
- Total Orders
- Total Customers
- Average Order Value (AOV)
- Average Delivery Days
- Late Deliveries
- On-Time Delivery Percentage

---

Dashboard Features

- KPI Cards
- Revenue Trend Analysis
- Customer State Analysis
- Product Category Analysis
- Dynamic Cross Filtering
- Interactive Dashboard Experience

---

Project Structure

InsightCart/

├── dashboard/

├── data/
│ ├── raw/
│ └── processed/

├── dax_measures/

├── notebooks/

├── scripts/

├── sql_queries/

├── dashboard_preview.png

├── README.md

└── requirements.txt

---

## Dashboard Preview

![alt text](dashboard_preview.png)

Key Insights

- Macro performance KPIs:
- The platform has achived a healthy scale with a Total Revenue of R$ 13.6M driven by 99k orders from 99k Total customers
  maintaining an Average Order Value of R$ 137.

- Seasonal Revenue Crises:
- The Monthly Revenue Trend line graph shows a stedy performance hovering above R$  1.0M from March to Augest(peak in May).
  however,it experience a drastic drop in September signaling acritical sesonal low or external platform discuption before
  recovering slightly in November.

- Geographical Revenue Concentration:
- The Top Customer States bar chart clearly marks SP as the Undenible cor market with R$ 5.2M in revenue,wich is nearly triple
  its closest competitors,RJ(R$ 1.8M) and MG(R$ 1.6M).

- Top Category Breakdown:
- The platform's top tier revenue is dominated by Health & Beuty at R$ 1.3M and relogios_presentes Watches & Gifts at R$ 1.2M,
  while home categories ilke Bed_Bath & Table and Sport & Leisure sit tightly at the R$ 1.0M mark.

- Flawless Order Fulfillment Rate :
- Order Status Distribution donut chart shows an outstanding opration metric where (97%)of all orders are successfully delivered
  proving highly reliable fulfillment logistics with minimal cancellations (1%).
  
---

Author

Abhishek Pardeshi
