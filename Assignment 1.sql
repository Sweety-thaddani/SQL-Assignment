-- Identify the primary keys and foreign keys in maven movies db. Discuss the differences



-- List all details of actors

select * from actor;


-- List all customer information from DB.

select * from customer;


-- List different countries.

select distinct country from country;
 


-- Display all active customers.

select * from customer where active='1';


-- List of all rental IDs for customer with ID 1.

select customer_id, rental_id from rental where customer_id='1'; 

-- Display all the films whose rental duration is greater than 5 .

select film_id, title, rental_duration from film where rental_duration>5; 


-- List the total number of films whose replacement cost is greater than $15 and less than $20.

select count(*) as total_film from film where replacement_cost between 15 and 20;


-- Display the count of unique first names of actors.

select count(distinct first_name) as first_name_count from actor; 

-- Display the first 10 records from the customer table .

select * from customer limit 10;

-- Display the first 3 records from the customer table whose first name starts with ‘b’.

select first_name from customer where first_name like 'b%' limit 3;


-- Display the names of the first 5 movies which are rated as ‘G’.

select title,rating from film where rating='G' limit 5;

-- Find all customers whose first name starts with "a".

select first_name from customer where first_name like 'a%';


-- Find all customers whose first name ends with "a".

 select first_name from customer where first_name like '%a';

-- Display the list of first 4 cities which start and end with ‘a’ .

select city from city where city like 'a%a' limit 4; 

-- Find all customers whose first name have "NI" in any position.

select first_name from customer where first_name like '%NI%';

-- Find all customers whose first name have "r" in the second position .

select first_name from customer where first_name like "_r%"; 

-- Find all customers whose first name starts with "a" and are at least 5 characters in length.

select first_name from customer where first_name like 'a%' and length(first_name)>=5;


-- Find all customers whose first name starts with "a" and ends with "o".

select first_name from customer where first_name like 'a%o';

-- Get the films with pg and pg-13 rating using IN operator.

select title,rating from film where rating in("pg","pg-13");

-- Get the films with length between 50 to 100 using between operator.

select title, length from film where length between 50 and 100;

-- Get the top 50 actors using limit operator.

select * from actor limit 50;

-- Get the distinct film ids from inventory table.

select distinct film_id from inventory;


