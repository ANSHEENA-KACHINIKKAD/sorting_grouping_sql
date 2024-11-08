use entri_d42;
create table Country (id int primary key unique,Country_name varchar (25),Population bigint,Area decimal(10,2));
create table Persons (id int primary key , Fname varchar (20),Lname varchar(20),Population bigint,Rating smallint,Country_id int unique,Country_name varchar(25));
insert into Country (id ,Country_name ,Population ,Area ) values
(1, 'India', 1428627662, 3287263),
  (2, 'China', 1425650000, 9596961),
  (3, 'United States', 338290000, 9372610),
  (4, 'Indonesia', 275569079, 1904569),
  (5, 'Pakistan', 235822022, 881913),
  (6, 'Brazil', 215313000, 8515767),
  (7, 'Nigeria', 218541000, 923768),
  (8, 'Bangladesh', 172958000, 147570),
  (9, 'Russia', 144526000, 17098246),
  (10, 'Mexico', 131222000, 1964375);
  insert into Persons (id , Fname ,Lname ,Population ,Rating ,Country_id ,Country_name ) values
(1, 'Aishwarya', 'Rai Bachchan',1428627662, 4.5, 1, 'India'),
  (2, 'Jackie', 'Chan', 1425650000, 4.8, 2, 'China'),
  (3, 'Dwayne', 'Johnson',338290000, 4.7, 3, 'United States'),
  (4, 'Neymar', 'Santos Júnior', 218541000, 4.6, 7, 'Nigeria'),
  (5, 'Lionel', 'Messi',172958000, 4.9, 8, 'Bangladesh'),
  (6, 'Cristiano', 'Ronaldo',  144526000, 4.8, 9, 'Russia'),
  (7, 'Selena', 'Gomez', 131222000, 4.6, 10, 'Mexico'),
  (8,'lal','sik',215313000,3.8,6,'Brazil'),
  (9,'faik','khan',235822022,4.0,5,'Pakistan'),
  (10,'zaman','aik',275569079,4.1,4,'Indonesia');
  SELECT SUBSTRING(Country_name, 1, 3) AS first_three_chars FROM country;-- First three character (1)
  select concat(Fname," ",Lname) AS full_Name from persons; -- concatenate fname and lname (2)
  select count(distinct Country_name ) as Unique_country_name from persons; -- count unique country name (3)
  select max(Population ) as Maximum_population from country ; -- maximum population (4)
  select min(Population) as Minimum_population from persons ;-- minimum population (5)
 insert into Persons (id , Fname ,Lname ,Population ,Rating ,Country_id ,Country_name ) values
(11, 'Aakash', null,1428627662, 4.5, 11, 'myanmar'),
  (12, 'saman', null, 1425650000, 4.8, 12, 'korea'); -- add 2 new rows 
  select count(Lname) as count_lname from persons; -- count of lname(6)
  select count(*) as total_rows from persons ; -- total no.of rows (7)
  select Population from country limit 3; -- first 3 population from table country (8)
  select * from country order by  rand() limit 3;  -- random 3 rows (9)
  select concat(Fname," ",Lname) as Person from persons order by Rating desc ; -- persons are order by rating (10)
  Select Country_name, sum(population) from persons group by Country_name ; -- total population in each country (11)
  SELECT country_name FROM persons GROUP BY country_name HAVING SUM(population) > 50000; -- country with populatio >50000 (12)
  select Country_name ,count(Fname) AS total_persons, avg(Rating) average_rating from persons group by Country_name Having count(concat(Fname,Lname)) >2 order by avg(Rating) asc; -- (13)
  

  
  
  
