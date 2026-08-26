# Global Superstore Sales Analysis

##  Project Overview

This project analyzes the **Global Superstore** dataset to evaluate sales performance, profitability, customer activity, product performance, and regional trends.

The project combines **PostgreSQL** for data analysis and business-focused SQL queries with **Power BI** for interactive dashboard development. The analysis concludes with a business performance report that summarizes key findings and recommendations.

---

##  Business Objective

The main objective of this project is to transform raw sales data into actionable business insights that can support better decision-making.

The analysis focuses on questions such as:

* How are sales and profit performing overall?
* Which categories and products contribute the most to profitability?
* How does performance change over time?
* Which regions generate the strongest sales and profit?
* Which customers and customer segments contribute most to business performance?
* Where are there opportunities to improve profitability?

---

##  Dataset

The project uses the **Global Superstore** dataset sourced from Kaggle.

The dataset contains approximately **51,290 records** and **24 columns**, covering transactions from **2012 to 2015**.

Key fields include:

* Order and shipping information
* Customer information
* Product and category information
* Regional and market information
* Sales
* Quantity
* Discount
* Profit

The dataset was prepared before being loaded into PostgreSQL for analysis.

---

##  Tools & Technologies

| Tool               | Purpose                                            |
| ------------------ | -------------------------------------------------- |
| **Excel**          | Data preparation and cleaning                      |
| **PostgreSQL**     | Data storage, SQL analysis, and analytical views   |
| **Power BI**       | Interactive dashboards and data visualization      |
| **Microsoft Word** | Business performance report                        |
| **GitHub**         | Project version control and portfolio presentation |

---

##  Project Workflow

The project follows the workflow below:

**Data Preparation**
↓
**PostgreSQL Table Creation**
↓
**SQL Views**
↓
**Business Analysis**
↓
**Power BI Dashboards**
↓
**Business Performance Report**

### 1. Data Preparation

The Global Superstore dataset was prepared and cleaned before being loaded into PostgreSQL.

### 2. PostgreSQL Analysis

SQL was used to create the database structure, analytical views, and business-focused analysis.

The analysis covers:

* Executive business performance
* Monthly sales and profit trends
* Category performance
* Product performance
* Regional performance
* Customer performance

### 3. Power BI Dashboards

The analyzed data was visualized in Power BI through interactive dashboards designed to communicate the most important business findings.

### 4. Business Report

The final business report summarizes the major findings from the analysis and translates them into business-oriented recommendations.

---

##  Key Performance Indicators

The analysis produced the following overall business metrics:

| KPI                  |      Result |
| -------------------- | ----------: |
| **Total Sales**      | **$12.64M** |
| **Total Profit**     |  **$1.47M** |
| **Profit Margin**    |  **11.61%** |
| **Total Orders**     |  **25,728** |
| **Products Sold**    | **178,312** |
| **Unique Customers** |  **17,415** |

These KPIs provide a high-level view of the overall business performance across the analyzed period.

---

##  Power BI Dashboards

The Power BI solution consists of two main dashboards:

### 1. Executive Business Performance Dashboard

Provides a high-level overview of:

* Total sales
* Total profit
* Profit margin
* Orders
* Customer activity
* Regional performance
* Overall sales and profit trends

### 2. Profitability & Performance Dashboard

Provides deeper analysis of:

* Category performance
* Product profitability
* Profit margins
* Sales and profit trends
* Regional performance
* Other profitability-related metrics

The dashboards are designed to allow users to explore performance using interactive filters.

---

##  Key Business Insights

The analysis identifies several important areas of business performance, including:

* Overall sales generated approximately **$12.64M** during the analyzed period.
* Total profit was approximately **$1.47M**, resulting in an overall profit margin of **11.61%**.
* Sales and profitability vary across product categories, products, customers, and regions.
* Product-level analysis helps identify products that make strong contributions to profitability as well as areas requiring closer attention.
* Regional analysis highlights differences in sales and profit performance across markets.
* Monthly analysis provides visibility into changes in sales and profitability over time.

The Power BI dashboards provide a visual way to explore these patterns and identify areas requiring further business attention.

---

##  Business Recommendations

Based on the analysis, the business should consider:

1. **Prioritizing profitable products and categories**
   Focus resources on products and categories that consistently contribute strong profit.

2. **Investigating low-profit performance**
   Review products, categories, and regions with weak profitability to identify potential issues with pricing, discounts, or costs.

3. **Monitoring discount and profitability relationships**
   Evaluate whether higher discounts are generating sufficient additional sales to justify their impact on profit margins.

4. **Strengthening regional performance management**
   Compare regional sales and profitability to identify high-performing markets and areas requiring improvement.

5. **Using performance monitoring dashboards**
   Continue using interactive dashboards to monitor KPIs and identify changes in business performance over time.

---

##  Repository Structure

```text
superstore-sales-analysis/
│
├── 01_create_table/
│   └── 01_create_table.sql
│
├── 02_SQL/
│   ├── 01_Views/
│   │   └── 02_create_views.sql
│   │
│   └── 02_Analysis/
│       ├── 03_executive_summary_analysis.sql
│       ├── 04_monthly_summary_analysis.sql
│       ├── 05_category_summary_analysis.sql
│       ├── 06_product_summary_analysis.sql
│       ├── 07_regional_summary_analysis.sql
│       └── 08_customer_summary_analysis.sql
│
├── powerbi/
│   └── Global_Superstore_Dashboard.pbix
│
├── reports/
│   └── Global_Superstore_Business_Performance_Report.pdf
│
├── screenshots/
│   ├── executive_dashboard.png
│   └── profitability_performance_dashboard.png
│
├── README.md
└── .gitignore
```

---

##  Business Report

A detailed **Global Superstore Business Performance Report** accompanies the analysis.

The report presents:

* Business performance findings
* Dashboard visualizations
* Key insights
* Business recommendations

The final PDF report will be included in the `reports/` directory.

---

##  Project Outcome

This project demonstrates an end-to-end analytics workflow, from preparing and analyzing transactional data to communicating business insights through interactive dashboards and a professional business report.

### Core Skills Demonstrated

* Data preparation
* SQL
* PostgreSQL
* Business analysis
* Data visualization
* Power BI
* KPI development
* Dashboard design
* Business reporting
* Data-driven recommendations
* GitHub project organization
