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
- `raw_data/` – Original USDA CSV datasets  
  &nbsp;&nbsp;&nbsp;&nbsp;• `cheese_production.csv`  
  &nbsp;&nbsp;&nbsp;&nbsp;• `coffee_production.csv`  
  &nbsp;&nbsp;&nbsp;&nbsp;• `egg_production.csv`  
  &nbsp;&nbsp;&nbsp;&nbsp;• `milk_production.csv`  
  &nbsp;&nbsp;&nbsp;&nbsp;• `yogurt_production.csv`  
  &nbsp;&nbsp;&nbsp;&nbsp;• `state_lookup.csv`

- `commands-for-preparing-data/` – SQL scripts for setup and cleanup  
  &nbsp;&nbsp;&nbsp;&nbsp;• `creating-tables.sql` – CREATE TABLE statements  
  &nbsp;&nbsp;&nbsp;&nbsp;• `cleaning-the-data.sql` – REPLACE commas in values

- `queries-usda.sql` – Final SQL queries for data analysis  
- `cleaned-data-base.db` – Final SQLite database (**must be downloaded to view**)  
- `README.md` – Project documentation (this file)

## 🧪 Sample Query
--Total milk production for 2023
SELECT SUM(Value) AS total_milk_production
FROM milk_production
WHERE Year = 2023;
