# ⚡ EcoVolt Renewables: Global Compensation & Equity Analytics

![Project Status](https://img.shields.io/badge/Status-Completed-success)
![Data Size](https://img.shields.io/badge/Dataset-12,000_Employees-blue)
![Stack](https://img.shields.io/badge/Stack-SQL_|_Polars_|_Scikit--Learn_|_Streamlit-orange)

## 📌 Project Overview
EcoVolt Renewables is a fictional Western European leader in the Green Energy sector. As the company scaled to 12,000+ employees across 7 countries, the Compensation & Benefits (C&B) team required a data-driven approach to ensure **Internal Equity**, **Market Competitiveness**, and **Pay Transparency**.

This project demonstrates a full-stack HR Analytics workflow, transitioning from raw data generation to a deployed machine learning web application.

## 🛠️ The Tech Stack
* **Data Generation:** Python (Faker, Polars) - 12,000 localized records.
* **Analysis:** Google Sheets (Advanced Formulas, QUERY, XLOOKUP).
* **Data Warehouse:** Google BigQuery (CTE, Window Functions, Subqueries).
* **Data Science:** Polars (High-speed EDA) & Plotly (Interactive Viz).
* **Machine Learning:** Scikit-Learn (Linear Regression for Salary Prediction).
* **Deployment:** Streamlit (Decision Support Tool for Managers).

---

## 📊 Phase Summary

### 1. Data Modeling & SQL (BigQuery)
Processed 12,000 records to identify pay anomalies and budget variances.
* **[Key Metrics:](https://docs.google.com/spreadsheets/d/1QKIVnDiWWTOrs6xVPmzH8Z7b4xwXpSLyEOnKm3l8nnE/edit?usp=sharing)** Compa-Ratio, Total Target Cash (TTC), and Salary Compression.
* **Advanced Querying:** Used **Window Functions** to rank top earners per department and **CTEs** to compare veteran pay vs. new hire premiums.

### 2. Exploratory Data Analysis (Polars & Plotly)
Leveraged the speed of **Polars** to perform deep-dive analysis on localized pay.
* **Weighted Average Compa-Ratio:** Calculated departmental alignment to market midpoints.
* **Gender Pay Gap:** Visualized pay distribution by gender across T1-T5 job levels using Plotly Violin plots.

### 3. Predictive Modeling (Scikit-Learn)
Built a Linear Regression model to determine the "Internal Pay Drivers."
* **Insights:** Identified that Tenure and Job Level explain 85% of pay variance, while work mode (Remote vs. Office) showed a €1.5k geographic differential.
* **Fairness Audit:** Used model residuals to flag employees whose pay fell significantly outside the predicted range for their profile.

### 4. [Executive Dashboard (Looker Studio)](https://lookerstudio.google.com/reporting/922d6a87-46e6-4829-9e34-7fa58752302b)
Created a "Traffic Light" reporting system for leadership.
* **Red Zones:** High-performers with Compa-Ratios < 0.80 (Retention Risk).
* **Green Zones:** Employees aligned with market benchmarks.

### 5. [Web Deployment (Streamlit)](https://www.loom.com/share/d7599be7fd634014a71d65b6987921e2)
Deployed a **New Hire Offer Calculator** that allows recruiters to input a candidate's experience and level to receive a data-backed salary recommendation, ensuring internal equity from Day 1.

---

## 🚀 Key Insights
1.  **Salary Compression:** Data revealed that T5 (Junior) employees hired in 2025 started at 10% higher base salaries than those hired in 2023, requiring a one-time market adjustment.
2.  **Remote Work Impact:** Remote employees in the UK and Germany showed higher engagement scores but slightly lower Compa-Ratios than their office counterparts.
3.  **Pay for Performance:** 72% of "High Performers" (Rating 4-5) were positioned in the top half of their salary band, confirming a strong pay-for-performance culture.

## 📂 Repository Structure
* `data/`: contains `employees.csv` and `compensation.csv`.
* `notebooks/`: Python scripts for EDA and Machine Learning.
* `sql/`: The 10 advanced BigQuery queries.
* `app.py`: The Streamlit web application code.

---

**Author:** [Christopher Bonnin](https://www.linkedin.com/in/christopher-bonnin-a08a95197/)
**Role:** Compensation & Benefits Analyst
**Year:** 2026
