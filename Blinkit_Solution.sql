create database Blinkit;
show databases;
use Blinkit;

# Q.1: Import data from table "Grocery Sales" usng the provided CSV file.

show tables;
select * from grocery_sales;

# Q.2: Write a SQL query to show all Item_identifier.

select item_identifier from grocery_sales;

# Q.3: Write an SQL query to show count of total item_identifier.

select count(item_identifier) from grocery_sales;

# Q.4: Write an SQL query to show Maximum  Item Weight.

select max(item_weight) from grocery_sales;

# Q.5: Write an SQL query to show minimum item weight.

select min(item_weight) from grocery_sales;

# Q.6: Write an SQL query to show average item weight.

select avg(item_weight) from grocery_sales;

# Q.7: Write an SQL query to show count of item_fat_content where item_fat_content is low fat.

select count(item_fat_content) from grocery_sales
where item_fat_content = "Low Fat";

# Q.8: Write an SQL query to show count of item_fat_content where item_fat_content is regular.

select count(item_fat_content) from grocery_sales
where item_fat_content = "Regular";

# Q.9: Write an SQL query to show maximum item_MRP.

select max(item_mrp) from grocery_sales;

# Q.10: Write an SQL query to show minimum item_MRP.

select min(item_mrp) from grocery_sales;

# Q.11: Write an SQL query to show Item_identifier, item_fat_content, item_type, item_MRP whose item_mrp is greater than 200.

select item_identifier, item_fat_content, item_type, item_mrp from grocery_sales
where item_mrp > 200;

# Q.12: Write an SQL query to show maximum item_MRP where item_fat_content is low fat.

select max(item_mrp) from grocery_sales where item_fat_content = "Low Fat";

# Q.13: Write an SQL query to show minimum item_MRP whose item_fat_contet is Low Fat.

select min(item_mrp) from grocery_sales where item_fat_content = "Low Fat";

# Q.14: Write an SQL query to show All Data Where Item_MRP is between 50 to 100.

select * from grocery_sales where item_mrp > 50 and item_mrp < 100; 
# 2nd method for this
select * from grocery_sales where item_mrp between 50 and 100;

# Q.15: Write an SQL query to show all unique value of item_fat_content.

select distinct item_fat_content from grocery_sales;

# Q.16: Write an SQL query to show all unique value of item_type.

select distinct item_type from grocery_sales;

# Q.17: Write an SQL query to show all data in descending order by item_MRP.

select * from grocery_sales order by item_mrp desc;

# Q.18: Write an SQL query to show all data in ascending order by item_outlet_sales.

select * from grocery_sales order by item_outlet_sales asc;

# Q.19: Write an SQL query to show all data in ascending by item_type.

select * from grocery_sales order by item_type asc;

# Q.20: Write an SQL query to show data of item_type dairy and meat.

select *, item_type from grocery_sales where item_type in('dairy', 'meat');

# Q.21: Write an SQL query to show all unique value of outlet_size.

select distinct outlet_size from grocery_sales;

# Q.22: Write an SQL query to show all unique value of outlet_location_type.

select distinct outlet_location_type from grocery_sales;

# Q.23: Write an SQL query to show all unique value of outlet_type.

select distinct outlet_type from grocery_sales;

# Q.24: Write an SQL query to show count of number of items by item_type and order it in descending order.

select count(item_type) from grocery_sales order by item_type desc;

select distinct item_type from grocery_sales order by item_type desc;

# Q.25: Write an SQL query to show count of number of items by outlet_size and order it in asceding order.

select count(outlet_size) from grocery_sales order by outlet_size asc;

select distinct outlet_size from grocery_sales order by outlet_size asc;

# Q.26: Write an SQL query to show count of number of items by outlet_type and order it in descending order.

select count(outlet_type) from grocery_sales order by outlet_type desc;

select distinct outlet_type from grocery_sales order by outlet_type desc;

# Q.27: Write an SQL query to show count of items by outlet_location_type and order it in descending order.

select count(outlet_location_type) from grocery_sales order by outlet_location_type desc;

select distinct outlet_location_type from grocery_sales order by outlet_location_type desc;

# Q.28: Write an SQL query to show maximum mrp by item_type.

select max(item_mrp), item_type from grocery_sales group by item_type;

# Q.29: Write an SQL query to show minimum mrp by item_type.

select min(item_mrp), item_type from grocery_sales group by item_type;

# Q.30: Write an SQL query to show minimum mrp by outlet_establishment_year and order it in descending order.

select min(item_mrp), outlet_establishment_year from grocery_sales group by outlet_establishment_year 
order by outlet_establishment_year desc;

# Q.31: Write an SQL query to show maximum mrp by outlet_establishment_year and order it in descending order.

select max(item_mrp), outlet_establishment_year from grocery_sales group by outlet_establishment_year 
order by outlet_establishment_year desc;

# Q.32: Write an SQL query to show average mrp by outlet_size and order it in descending order.

select avg(item_mrp), outlet_size from grocery_sales group by outlet_size order by outlet_size desc;

# Q.33: Write an SQL query to average mrp by outlet_type and order it in ascending order.

select avg(item_mrp), outlet_type from grocery_sales group by outlet_type order by outlet_type asc;

select avg(item_mrp) AVG_MRP, outlet_type from grocery_sales group by outlet_type order by AVG_MRP asc;
# i just renamed avg(item_mrp) to AVG_MRP and order by me change karke AVG_MRP ke liye ans find out kiya just in case?..

# Q.34: Write an SQL query to show maximum MRP by outlet_type.

select max(item_mrp) MAX_MRP, outlet_type from grocery_sales group by outlet_type;

# Q.35: Write an SQL query to show maximum item_weight by item_type.

select max(item_weight) MAX_Weight, item_type from grocery_sales group by item_type;

# Q.36: Write an SQL query to show maximum item_weight by outlet_establishment_year.

select max(item_weight) MAX_Weight, outlet_establishment_year EST_Year from grocery_sales group by EST_Year;

# Q.37: Write an SQL query to show maximum item_weight by outlet_type.

select max(item_weight) MAX_Weight, outlet_type from grocery_sales group by outlet_type;

# Q.38: Write an SQL query to show average item_weight by outlet_location_type and arrange it by descending order.

select avg(item_weight), outlet_location_type Location from grocery_sales group by Location order by Location desc;

select avg(item_weight) AVG_Weight, outlet_location_type Location from grocery_sales group by Location order by AVG_Weight desc;

# Q.39: Write an SQL query to show maximum item_outlet_sales by item_type.

select max(item_outlet_sales) MAX_Sales, item_type from grocery_sales group by item_type;

# Q.40: Write an SQL query to show minimum item_outlet_sales by item_type.

select min(item_outlet_sales) MIN_Sales, item_type from grocery_sales group by item_type;

# Q.41: Write an SQL query to show minimum item_outlet_sales by outlet_establishmet_year.

select min(item_outlet_sales) MIN_Sales, outlet_establishment_year EST_Year from grocery_sales group by EST_Year;

# Q.42: Write an SQL query to show maximum item_outlet_sales by outlet_establishmet_year and order it by descending order.

select max(item_outlet_sales) MAX_Sales, outlet_establishment_year EST_Year from grocery_sales group by EST_Year
order by EST_Year desc;

select max(item_outlet_sales) MAX_Sales, outlet_establishment_year EST_Year from grocery_sales group by EST_Year
order by MAX_Sales desc;

# Q.43: Write an SQL query to show average item_outlet_sales by outlet_size and order it in descending order.

select avg(item_outlet_sales) AVG_Sales, outlet_size from grocery_sales group by outlet_size order by outlet_size desc;

select avg(item_outlet_sales) AVG_Sales, outlet_size from grocery_sales group by outlet_size order by AVG_Sales desc;

# Q.44: Write an SQL query to show average item_outlet_sales by outlet_type.

select avg(item_outlet_sales) AVG_Sales, outlet_type from grocery_sales group by outlet_type;

# Q.45: Write an SQL query to show maximum item_outlet_sales by outlet_type.

select max(item_outlet_sales) MAX_Sales, outlet_type from grocery_sales group by outlet_type;

# Q.46: Write an SQL query to show total item_outlet_sales by item_type.

select sum(item_outlet_sales) Total_Sales, item_type from grocery_sales group by item_type;

# Q.47: Write an SQL query to show total item_outlet_sales by item_fat_content.

select sum(item_outlet_sales) Total_Sales, item_fat_content from grocery_sales group by item_fat_content;

# Q.48: Write an SQL query to show maximum item_visibility by item_type.

select max(item_visibility), item_type from grocery_sales group by item_type;

# Q.49: Write an SQL query to show minimum item_visibility by item_type.

select min(item_visibility), item_type from grocery_sales group by item_type;

# Q.50: Write an SQL query to show total item_outlet_sales by item_type but only where outlet_location_type is tier 1.

select sum(item_outlet_sales), item_type from grocery_sales
group by item_type having outlet_location_type = 'tier 1';

select sum(item_outlet_sales) Total_Sales, item_type from grocery_sales where outlet_location_type = 'tier 1'
group by item_type;

# Q.51: Write an SQL query to show total item_outlet_sales by item_type where item_fat_content is only low fat & LF

select sum(item_outlet_sales) Total_Sales, item_type from grocery_sales
where item_fat_content in ('LOW FAT', 'LF') group by item_type;

# COMPLETE.


