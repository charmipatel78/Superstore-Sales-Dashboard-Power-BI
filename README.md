# 📊 Sales Bottleneck Analysis Dashboard

## 📌 Project Overview

This project analyzes retail sales data to identify key business bottlenecks such as cancellations, returns, and inconsistent sales trends.
The analysis is performed using SQL, and insights are visualized using an interactive Power BI dashboard.

---

## 🎯 Objectives

* Analyze monthly sales trends
* Identify cancellation and return patterns
* Detect revenue loss by region and product
* Evaluate category performance
* Provide actionable business insights

---

## 🗂️ Dataset

* **File:** `RegionalSales2025.csv`
* Contains:

  * OrderID, Date, CustomerID
  * Region, ProductName, Category
  * Quantity, UnitPrice, TotalAmount
  * OrderStatus (Completed, Cancelled, Returned)
  * SalesAgent

---

## 🛠️ Tools Used

* SQL (MySQL)
* Power BI
* CSV Dataset

---

## 📊 Dashboard Features

* 📈 Monthly Sales Trend (Line Chart)
* 📊 Order Status by Region (Stacked Bar Chart)
* 🔥 Region vs Category Sales (Matrix Heatmap)
* 🎯 KPI Cards:

  * Total Sales
  * Total Cancellations
  * Average Order Value
  * Most Returned Product
* 🎛️ Filters:

  * Region
  * Category
  * SalesAgent

---

## 📁 Project Structure

```bash
Dashboard Image/
│   └── Bottleneck-Dashboard.png

Data/
│   └── RegionalSales2025.csv

Power BI File/
│   └── Bottleneck Dashboard.pbix

SQL File/
│   └── Sales Bottleneck.sql

SQL Results/
│   ├── 3 Products By Most Revenue Loss
│   ├── 3 Regions With Most Revenue Loss
│   ├── Avg Order Value By Product Category
│   ├── Category Wise Total Sales & Contribution
│   ├── Customer With Highest Frequency of Returns
│   ├── Monthly Sales Trends
│   ├── Percentage of Cancelled and Returned Orders
│   └── Top 5 Performing Sales Agents

Summary File/
│   └── ExecutiveSummary.txt
```

---

## 🔍 Key Insights

* Sales show fluctuations across months indicating inconsistency
* High number of cancellations (~9K) impacting revenue
* "Chair" is the most returned product
* Electronics category generates the highest revenue
* All regions show similar patterns of returns and cancellations

---

## 🚀 Suggested Actions

* Improve inventory management to reduce cancellations
* Investigate product quality issues for high-return items
* Focus marketing on high-performing categories
* Plan promotions during low-sales months
* Train sales agents to improve performance

---

## 📷 Dashboard Preview

![Dashboard](Dashboard%20Image/Bottleneck-Dashboard.png)

---

## 🧠 Conclusion

The analysis highlights key revenue bottlenecks and provides actionable insights to improve business performance.
Reducing cancellations and returns can significantly enhance profitability.

---

## 👤 Author

**Charmi Patel**
