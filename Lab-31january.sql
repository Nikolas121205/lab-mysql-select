use Sakila;
	select * from sakila.actor;
    
SELECT COUNT(DISTINCT(last_name)) AS distinct_last_names
FROM actor;

-- 121

-------------------------------------------------------------

use Sakila;
	select * from sakila.film;

select count(distinct(language_id)) as different_languages
from film;

-- 1


-------------------------------------------------------------
SELECT COUNT(film_id) AS pg13_movies_count
FROM film
WHERE rating = 'PG-13';

-- 223 


------------------------------------------------------------
SELECT release_year, length, title
	FROM film
    WHERE  release_year = "2006"
    order BY length desc;
    
-- Chicago North, Control Anthem, Darn Forrester,Gangs Pride, Home Pity, Muscle Bright,
-- Pond Seattle, Soldiers Evolution, Sweet Brotherhood, Worst Banger

----------------------------------------------------------------------------------------------------------

-- 5
SELECT MAX(create_date) FROM customer;
SELECT MIN(create_date) FROM customer;


-------------------------------------------------------------------------------------------------
-- 7 
ALTER TABLE rental ADD COLUMN day_type VARCHAR(10);
UPDATE rental
SET day_type =
    CASE
        WHEN DAYOFWEEK(rental_date) IN (1, 7) THEN 'weekend'
        ELSE 'workday'
    END;

select * from rental





  



--------------------------------------------------------------------------------------------------------
-- 8 
SELECT count(rental_id)
	from rental
	WHERE rental_date
	BETWEEN "2006-02-14" AND "2006-01-14";





----------------------------------------------------------------------------------------------------------

-- 9

SELECT DISTINCT(rating) FROM film;

-- PG, G, NC-17, PG-13, r

---------------------------------------------------------------------------------------------

SELECT DISTINCT(release_year) FROM film;

-- 2006


-------------------------------------------------------------------------------------------


SELECT title
	FROM film
	WHERE title like ("%ARMAGEDDON%");
    
-- 6

---------------------------------------------------------------------------------------------

SELECT title
	FROM film
	WHERE title like ("%Apollo%");

-- 6

----------------------------------------------------------------------------------------------


SELECT title
	FROM film
	WHERE title like ("%ARMAGEDDON");
    
-- 'LADYBUGS ARMAGEDDON'
-- 'MOSQUITO ARMAGEDDON'
-- 'STEERS ARMAGEDDON'
-- Metal ...
-- Stagecoach ---

-------------------------------------------------------------------------


SELECT title
	FROM film
	WHERE title like ("%Date%");
    
    
-----------------------------------------------------------------------

SELECT length, title
	FROM film
    order BY length desc;
    
-- Chicago North, Control anthem, Darn Forrester, Gangs Pride, Home Pity, Muscle Bright, Pond Seattle, Soldiers Evolution...

--------------------------------------------------------------------

-------------------------------------------------------------
SELECT COUNT(film_id) AS special_feature_count
FROM film
WHERE special_features = 'behind the Scenes';
	
-- 70

--------------------------------------------------------------------------------
------------------------------------------------------------
SELECT release_year, title
	FROM film
    order BY release_year desc;
    
--------------------------------------------------------------------------------
alter table staff
drop column picture; 

---------------------------------------------------------------------------------

INSERT INTO Staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update)
Values ("3", "Tammy", "Sanders", "79", "Tammy.Sanders@sakilastaff.org", "2", "1", "Tammy", "password", "2006-02-15 04:57:20");


select * from customer
where first_name like "Tammy" and last_Name like "Sanders"

---------------------------------------------------------------------------------

select * from film
where title like "Academy Dinosaur"
select * from rental
where inventory_id like Mike Hillyer


insert into rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
Values ("16050", "2006-02-15 04:57:20", "1", "130", NULL, "1", "2006-02-15 04:57:29");

---------------------------------------------------------------------------------
create table delete_users as select * from customer where active = 0; 
select * from customer;
delete from customer where active = 0; 

