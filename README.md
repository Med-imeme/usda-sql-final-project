# 🧮 USDA SQL Final Project

This project is the final assignment for a SQL course, built using real-world datasets from the **United States Department of Agriculture (USDA)**. 
> **NB:** The data base file can not be previwed in github .It needs to be downloaded and opened with the appropriate application, GUI SQL editor, or similar.

---

## 📁 Project Overview

- 1️⃣ Imported agricultural production data from CSVs
- 2️⃣ Built SQL tables (cheese, milk, honey, yogurt, eggs, coffee)
- 3️⃣ Cleaned numeric values using SQL commands
- 4️⃣ Wrote analysis queries to summarize production
- 5️⃣Created an additional summary table (`usa_agrigortal_summary`)
- 6️⃣ Used DBeaver as a GUI SQL editor and SQLite as the database engine

---

## 📂 File Structure
raw_data/ – Original USDA CSV datasets
    • cheese_production.csv
    • coffee_production.csv
    • egg_production.csv
    • milk_production.csv
    • yogurt_production.csv
    • state_lookup.csv

commands-for-preparing-data/ – SQL scripts for setup and cleanup
    • creating-tables.sql – CREATE TABLE statements
    • cleaning-the-data.sql – value cleanup using REPLACE()

queries-usda.sql – Final queries for data analysis

cleaned-data-base.db – Final SQLite DB (must be downloaded to open)

README.md – Project overview and documentation

