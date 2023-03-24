# Crowdfunding_ETL

##### Project Partner: Lacey Morgan
#### Note: For the partner project my partner and I discussed the deliverables but each completed the code independently. There are separate repos and separate notebooks, scripts with the work

#### Project Overview:
* building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions 
* after transforming the data, create 4 CSV files and use the CSV file data to create an ERD and a table schema
* load CSV files to Postgres db
* the overall project is broken into 4 subsections

#### Subsection 1: Create Category, Subcategory Dataframes
* extract and transform the crowdfunding.xlsx data to create a dataframe for category
* the category dataframe should contain only 2 columns -- category and a new category_id
** the category_id column should contain entries going sequentially from "cat1 to catn" and relates to the number of unique categories
* export the category dataframe to a CSV file
* extract and transform the crowdfunding.xlsx data to create a dataframe for subcategory
* the subcategory dataframe should contain the distinct list of subcategories from the crowdfunding excel file and a list of subcategory_ids, created within the dataframe
* export the subcategory dataframe to a csv file.