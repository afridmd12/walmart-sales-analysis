# 🛒 Walmart Sales Dataset Analysis

This project involves analyzing a real-world retail dataset from Walmart stores across three different branches and cities. The goal is to extract insights from the sales data using SQL queries and Python for reporting.

---

## 📦 Dataset Description

The dataset contains sales transactions with the following fields:

| Column                  | Description                                            |
|-------------------------|--------------------------------------------------------|
| `Invoice ID`            | Unique identifier for each transaction                 |
| `Branch`                | Store branch code (A, B, or C)                         |
| `City`                  | City where the branch is located                       |
| `Customer type`         | Type of customer (Member or Normal)                   |
| `Gender`                | Gender of the customer                                 |
| `Product line`          | Product category                                       |
| `Unit price`            | Price per item                                         |
| `Quantity`              | Number of items purchased                              |
| `Tax 5%`                | 5% tax calculated on the COGS                          |
| `Total`                 | Total amount (including tax)                           |
| `Date`                  | Date of purchase                                       |
| `Time`                  | Time of purchase                                       |
| `Payment`               | Payment method (Cash, Credit card, Ewallet)           |
| `cogs`                  | Cost of goods sold                                     |
| `gross margin percentage` | Gross margin percentage (always 4.76%)              |
| `gross income`          | Profit from the transaction                            |
| `Rating`                | Customer rating (out of 10)                            |

---

## 📊 Analysis Overview

The analysis includes the following SQL-driven components:

### 1. Year & Month Extraction
Extract the year and month from transaction dates for use in time-series summaries.

### 2. Monthly Aggregation (Unit Price & Orders)
Group by year and month to calculate:
- Total revenue based on `Unit price`
- Number of distinct invoices

### 3. Monthly Aggregation (Total Revenue)
Calculate total monthly revenue using the `Total` column (includes taxes).

### 4. Q1 2019 Filtering
Analyze sales trends and volume from January to March 2019 only.

### 5. Null Value Checks
Detect missing values in important fields: `Invoice ID`, `Date`, and `Total`.

### 6. Clean Dataset Creation
A new table is created excluding rows with nulls in critical fields.

---

## 📁 Output

- Word document report containing:
  - Monthly revenue breakdowns
  - Q1 performance summaries
  - Null value diagnostics

---

## 🛠 Tools Used

- **SQL** (PostgreSQL syntax)
- **Microsoft Word** or equivalent (for reporting)
- **CSV** format for data storage

---

## 📌 Usage Instructions

1. Load the dataset into your SQL database or Python environment.
2. Execute the provided SQL queries to extract insights.
3. Use Python to process and export results into a Word report if desired.

---
