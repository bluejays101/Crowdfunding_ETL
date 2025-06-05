# 📦 Crowdfunding - ETL Project

## 🧾 Overview

This project demonstrates a complete ETL (Extract, Transform, Load) pipeline for a crowdfunding campaign dataset. Using raw data from two Excel files, I transformed them into four normalized tables and built a relational PostgreSQL database with proper integrity.

## 📂 Files Created

- `category.csv` – Unique campaign categories
- `subcategory.csv` – Unique subcategories under each category
- `contacts.csv` – Contact details extracted and cleaned from nested dictionaries
- `campaign.csv` – Cleaned campaign data with proper references to category, subcategory, and contacts

## 🧱 Database Schema

- `crowdfunding_db_schema.sql` – SQL file to create the four normalized tables with primary and foreign key constraints based on the ERD
- `QuickDBD-export.png` – ERD diagram showing relationships between all tables

## 🧠 Database Design

- The `category` and `subcategory` tables define valid values used in the `campaign` table
- The `contacts` table stores contact metadata and is linked via `contact_id`
- The `campaign` table is the central fact table referencing all three lookup tables

## 🛠️ Tools Used

- Python (Pandas)
- pgAdmin / PostgreSQL
- VS Code
- QuickDBD.com for ERD Diagram

## 🔍 How to Use

1. Create a PostgreSQL database named `crowdfunding_db`
2. Run `crowdfunding_db_schema.sql` to build the tables
3. Import each CSV (`category.csv`, `subcategory.csv`, `contacts.csv`, `campaign.csv`) into their respective tables in that specific order for referential integrity
4. Use SQL queries to explore and analyze the data

## ✅ Verification Queries

```sql
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;
```

## 👤 Author

Peter Lin - UofT Bootcamp Project 2 – 2024/2025