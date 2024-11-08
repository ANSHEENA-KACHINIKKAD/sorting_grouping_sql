# Basi SQL Sorting and Grouping 
## Objective 
Creation of table and perform sql sorting , grouping and order operations.
## Questions
*Create two table "Country " and " Persons" 

1.Write an SQL query to print the first three characters of Country_name from the Country table.

2.Write an SQL query to concatenate first name and last name from Persons table.

3.Write an SQL query to count the number of unique country names from Persons table.

4.Write a query to print the maximum population from the Country table.

5. Write a query to print the minimum population from Persons table.

6. Insert 2 new rows to the Persons table making the Lname NULL. Then write another query to count Lname from Persons table.

7. Write a query to find the number of rows in the Persons table.

8. Write an SQL query to show the population of the Country table for the first 3 rows.

9. Write a query to print 3 random rows of countries.

10. List all persons ordered by their rating in descending order.

11. Find the total population for each country in the Persons table.

12.  Find countries in the Persons table with a total population greater than 50,000 .

13. List the total number of persons and average rating for each country, but only for countries with more than 2 persons, ordered by the average rating in ascending order.

## Tables

Country

![Screenshot (183)](https://github.com/user-attachments/assets/26128b19-8bc4-4156-8bcb-089c0e169caa)

Persons

![Screenshot (182)](https://github.com/user-attachments/assets/95264d1d-2a43-48ee-b6b5-e8c44f80d7c1)

## Key Points
* COUNT(*): Counts the number of rows.
* SUM(column_name): Calculates the sum of values in a column.
* AVG(column_name): Calculates the average of values in a column.
* MIN(column_name): Finds the minimum value in a column.
* MAX(column_name): Finds the maximum value in a column.
* Concat(column_name1,column_name2); to concatenate two columns
* ORDER BY :ORDER BY clause is used to sort the result set in ascending or descending order.
   syntax = SELECT column1, column2, ...
            FROM table_name
            ORDER BY column_name   
            ASC/DESC;
* GROUP BY :GROUP BY clause is used to group rows based on one or more columns. It's often used with aggregate functions like COUNT, SUM, AVG, MIN, and MAX.
   syntax = SELECT column1, aggregate_function(column2)
            FROM table_name
            GROUP BY column1;
* ORDER BY and GROUP BY:combine ORDER BY and GROUP BY to sort the grouped results.
   syntax = SELECT country, AVG(age) AS average_age
            FROM customers
            GROUP BY country
            ORDER BY average_age DESC;
  







