-- drop table if exists: category
DROP TABLE IF EXISTS category CASCADE;

-- create table: category
CREATE TABLE category(
	category_id VARCHAR(6) NOT NULL PRIMARY KEY,
	category VARCHAR(40) NOT NULL);
	
-- drop table if exists: subcategory
DROP TABLE IF EXISTS subcategory CASCADE;

-- create table: subcategory
CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) NOT NULL PRIMARY KEY,
	subcategory VARCHAR NOT NULL);

-- drop table if exists: contacts
DROP TABLE IF EXISTS contacts;

-- create table: contacts
CREATE TABLE contacts(
	contact_id VARCHAR(4) NOT NULL PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	email VARCHAR NOT NULL);

-- drop table if exists: campaign
DROP TABLE IF EXISTS campaign CASCADE;
	
-- create table: campaign
CREATE TABLE campaign (
	cf_id VARCHAR(6) NOT NULL PRIMARY KEY,
	contact_id VARCHAR(4) NOT NULL,
	company_name VARCHAR (255) NOT NULL,
	description VARCHAR (255) NOT NULL,
	goal NUMERIC (10,2) NOT NULL,
	pledged NUMERIC (10,2) NOT NULL,
	outcome VARCHAR (15) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR NOT NULL,
	currency VARCHAR (3) NOT NULL,
	launch_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(6) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id));


