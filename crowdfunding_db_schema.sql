-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;

-- Create category table
CREATE TABLE category (
  category_id VARCHAR PRIMARY KEY,
  category VARCHAR
);

-- Create subcategory table
CREATE TABLE subcategory (
  subcategory_id VARCHAR PRIMARY KEY,
  subcategory VARCHAR
);

-- Create contacts table
CREATE TABLE contacts (
  contact_id VARCHAR PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR
);

-- Create campaign table
CREATE TABLE campaign (
  cf_id INT PRIMARY KEY,
  contact_id VARCHAR REFERENCES contacts(contact_id),
  company_name VARCHAR,
  description TEXT,
  goal FLOAT,
  pledged FLOAT,
  outcome VARCHAR,
  backers_count INT,
  country VARCHAR,
  currency VARCHAR,
  launch_date TIMESTAMP,
  end_date TIMESTAMP,
  staff_pick BOOLEAN,
  spotlight BOOLEAN,
  category_id VARCHAR REFERENCES category(category_id),
  subcategory_id VARCHAR REFERENCES subcategory(subcategory_id)
);
