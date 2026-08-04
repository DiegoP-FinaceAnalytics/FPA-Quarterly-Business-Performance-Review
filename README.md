# 📊 FP&A Quarterly Business Performance Review

> **An end-to-end Financial Planning & Analysis (FP&A) project demonstrating data engineering, dimensional modeling, financial analysis, and executive reporting using SQL Server and Power BI.**

![Executive Overview](Screenshots/Executive_Overview.png)

---

## 📖 Executive Summary

This project simulates a quarterly Financial Planning & Analysis (FP&A) engagement for **NorthStar Manufacturing Group**, a fictional manufacturing company.

Following the close of Q3, executive leadership requested a comprehensive review of financial performance to evaluate budget adherence, understand operational variances, assess working capital trends, and identify priorities before the final quarter of the fiscal year.

Rather than focusing solely on dashboard development, this project demonstrates the complete analytical lifecycle—from raw financial data to executive decision-making.

The solution integrates SQL Server, dimensional modeling, data validation, DAX, and Power BI into a single reporting environment designed to support executive financial planning.

---

# 🎯 Business Scenario

NorthStar Manufacturing Group has completed its third fiscal quarter.

Although revenue remained relatively stable, management observed increasing operating expenses, inconsistent departmental performance, and growing concerns regarding working capital efficiency.

The Chief Financial Officer requested an FP&A review to answer several key business questions before finalizing year-end strategy.

---

## Business Objectives

- Evaluate Actual vs Budget performance
- Identify favorable and unfavorable variances
- Analyze departmental financial performance
- Assess Accounts Payable and Accounts Receivable activity
- Evaluate working capital trends
- Provide executive recommendations before Q4

---

# ❓ Executive Questions

This project answers the following business questions:

- Is the company performing according to budget?
- Which departments contributed most to financial variance?
- How is working capital trending?
- Are vendor payments and customer collections creating cash flow concerns?
- What actions should executive leadership prioritize before year-end?

---

# 🛠 Technology Stack

| Category | Technology |
|-----------|------------|
| Database | SQL Server Express |
| SQL IDE | SQL Server Management Studio |
| Data Source | Microsoft Excel |
| Data Modeling | Star Schema |
| BI Platform | Power BI Desktop |
| Calculations | DAX |
| Documentation | Microsoft Word / PDF |
| Version Control | Git & GitHub |

---

# 📂 Repository Structure

```text
FPA-Quarterly-Business-Performance-Review
│
├── Data
├── Documentation
├── PowerBI
├── Reports
├── Screenshots
└── SQL
```

---

# 🔄 End-to-End Workflow

```text
Raw Excel Files
        │
        ▼
SQL Server Import
        │
        ▼
Data Profiling
        │
        ▼
Data Cleaning
        │
        ▼
Cleaning Validation
        │
        ▼
Dimensional Data Warehouse
        │
        ▼
Fact Table Validation
        │
        ▼
Final SQL Revisions
        │
        ▼
Power BI Semantic Model
        │
        ▼
DAX Measures
        │
        ▼
Interactive Executive Dashboard
        │
        ▼
Executive Report
```

---

# 🗄 SQL Data Engineering

The SQL workflow was designed to emulate a realistic financial analytics pipeline.

### Data Profiling

- Schema validation
- Row counts
- Missing values
- Duplicate detection
- Business rule validation
- Currency distribution
- Department distribution
- Cost center analysis

### Data Cleaning

- Data standardization
- Type correction
- Data validation
- Business rule implementation

### Data Warehouse

The reporting model contains:

- 4 Fact Tables
- 9 Dimension Tables

The warehouse includes:

- Surrogate Keys
- Foreign Keys
- Unique Constraints
- Indexes

---

# ⭐ Data Warehouse Architecture

The warehouse follows a dimensional star-schema model optimized for analytical reporting.

![Star Schema](Screenshots/Star_Schema.png)

---

# 📊 Dashboard Overview

The Power BI report consists of five analytical pages.

## Executive Overview

![Executive Overview](Screenshots/Executive_Overview.png)

Provides a high-level summary of company performance, budget variance, and monthly trends.

---

## Department Performance & Variance Analysis

![Department Performance](Screenshots/Department_Performance.png)

Highlights departmental performance and identifies favorable and unfavorable budget variances.

---

## Working Capital & Cash Flow Outlook

![Working Capital](Screenshots/Working_Capital.png)

Analyzes Accounts Payable, Accounts Receivable, aging, collections, and cash flow trends.

---

## Financial Transaction Analysis

![Financial Transactions](Screenshots/Financial_Transaction_Analysis.png)

Provides detailed General Ledger transaction analysis across departments, accounts, and cost centers.

---

## Executive Outlook & Recommendations

![Executive Outlook](Screenshots/Executive_Outlook.png)

Summarizes the key findings, risks, and recommended management actions.

---

# 📈 Power BI Semantic Model

The Power BI model uses one-to-many relationships between dimension and fact tables and incorporates DAX measures for financial analysis.

![Model View](Screenshots/Model_View.png)

---

# 📌 Key DAX Measures

Examples include:

- Total Actual
- Total Budget
- Budget Variance
- Budget Variance %
- Actual YTD
- Budget YTD
- Variance YTD
- Forecast Variance
- Working Capital Metrics
- Aging Analysis
- Dynamic Titles

---

# 💼 Skills Demonstrated

### Financial Planning & Analysis

- Budget vs Actual Analysis
- Variance Analysis
- Forecast Review
- Department Performance Analysis
- Working Capital Analysis
- Executive Reporting

### SQL

- Data Profiling
- Data Cleaning
- Data Validation
- Dimensional Modeling
- Data Warehouse Design
- Fact & Dimension Tables
- Constraints
- Indexing

### Power BI

- Data Modeling
- DAX
- Time Intelligence
- KPI Design
- Dashboard Development
- Business Storytelling

### Professional Documentation

- Data Dictionary
- ETL Workflow
- Executive Report
- GitHub Documentation

---

# 📚 Documentation

The repository includes:

- 📄 Data Dictionary
- 📄 ETL Workflow
- ⭐ Star Schema
- 📑 Executive Report

---

# 🚀 How to Explore This Project

1. Read this README.
2. Review the dashboard screenshots.
3. Examine the SQL workflow.
4. Explore the documentation.
5. Open the Power BI project.
6. Read the Executive Report.

---

# ⚠ Assumptions & Limitations

- NorthStar Manufacturing Group is a fictional organization created for educational purposes.
- The project uses historical sample data.
- Recommendations are based solely on the provided datasets.
- The solution demonstrates professional FP&A workflows rather than a production enterprise system.

---

# 🔮 Future Enhancements

Potential improvements include:

- Automated ETL pipelines
- Power BI Service deployment
- Row-Level Security (RLS)
- Scenario modeling
- Predictive forecasting with Python
- Automated data quality monitoring

---

# 👤 Author

**Diego P.**

Finance Major | Business Analytics Minor

**Portfolio Focus**

- Financial Planning & Analysis (FP&A)
- Financial Analytics
- Business Intelligence
- SQL
- Power BI
- Data Analytics

---

> **Business problem first. Reliable data second. Analysis third. Communication always. Technology in service of all four.**
