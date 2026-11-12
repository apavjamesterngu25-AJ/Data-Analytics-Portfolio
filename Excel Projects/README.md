# Monthly Bank Performance Dashboard

An interactive Microsoft Excel dashboard designed to track and analyze customer banking performance, including opening balances, monthly balances, and average monthly savings across different account segments.

## Project Overview
Financial teams often deal with large, unformatted tables of customer accounts and transaction dates that make spotting trends difficult. This project transforms raw customer banking records into an executive-ready, interactive dashboard that allows users to filter financial performance metrics in real time.

## Key Features
* *Interactive Account Filtering:* Includes a dynamic Slicer connected across all PivotCharts to filter metrics instantly by *Corporate*, *Current*, and *Domiciliary* accounts.
* *Opening Balance Trend Analysis:* A full-width line chart tracking *Total Opening Balance by Transaction Date* to highlight cash flow movements over time.
* *Monthly Balance & Savings Breakdown:* Comparative bar and doughnut charts visualizing *Total Monthly Balance by Date* and *Average Monthly Savings by Date*.
* *Clean Workbook Architecture:* Organized into dedicated tabs (Bank Performance Dashboard, Customer Data, Transaction Table, and Monthly Saving) with hidden gridlines and standardized formatting for readability.

## Tools & Excel Techniques Used
* *Microsoft Excel*
* *Data Cleaning & Formatting:* Standardized date fields, currency columns, and table structures.
* *PivotTables & PivotCharts:* Aggregated customer transaction records by date and account category.
* *Slicers & Report Connections:* Linked a single account-type slicer to control multiple visuals simultaneously.
* *Dashboard UI Design:* Applied visual hierarchy, aligned chart grids, and removed chart clutter/gridlines.

## Workbook Structure
1. **Bank Performance Dashboard** – Main interactive visual report and slicer controls.
2. **Customer Data** – Cleaned source dataset containing customer demographics, account types, deposits, savings, and balances.
3. **Transaction Table** – Underlying PivotTables aggregating the financial metrics feeding the dashboard.
4. **Monthly Saving** – Supporting summary data for monthly savings performance.

## How to Use
1. Download the .xlsx file from this repository.
2. Open the workbook in Microsoft Excel (enable content/macros if prompted).
3. Navigate to the **Bank Performance Dashboard** tab.
4. Click *Corporate*, *Current*, or *Domiciliary* on the top slicer bar to filter all charts dynamically, or click the *Clear Filter* icon in the top-right corner of the slicer to view all accounts combined.
