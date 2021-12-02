use sakila;

select 
	first_name, 
	last_name 
from 
	actor 
where 
	first_name = 'PENELOPE';
    
select 
	first_name, 
	last_name 
from 
	actor 
where 
	first_name <> 'PENELOPE';
    
select 
	first_name, 
    last_name 
from 
	actor 
where 
	first_name != 'PENELOPE';

select 
	actor_id, 
	first_name, 
    last_name 
from 
	actor 
where 
	actor_id >3
and
	actor_id <5;
    
select 
	actor_id, 
	first_name, 
    last_name 
from 
	actor 
where 
	actor_id between 3 and 5;    
    
    
select 
	first_name, 
    last_name 
from 
	actor 
where 
	first_name = 'PENELOPE'
or 
	actor_id <5
or 
	first_name = 'NICK';
    
select 
	*
from
	actor
where
	first_name
in
	('PENELOPE', 'NICK', 'ED');
    
select 
	*
from
	actor
where
	first_name
LIKE
	'JOHN%';
    
select
	*
from
	actor
where
	first_name
LIKE
	'JA%NE';

select
	*
from
	actor
where
	first_name
in
	('PENELOPE%', 'JOHN%', 'JA%NE');
    
## this will find address that contain EL and AL
select
	*
from
	address
where
	district = 'Buenos Aires'
and 
	(address like '%El%' or address like '%Al%');

## without brackets
select
	*
from
	address
where
	district = 'Buenos Aires'
and 
	address like '%El%' or address like '%Al%';
    

## Use ASC to make them display in ascending order    
select 
	actor_id,
	first_name, 
    last_name 
from 
	actor 
where 
	first_name = 'PENELOPE'
order by 
	last_name ASC;


## Use DESC to make them display in descending order    
select 
	actor_id,
	first_name, 
    last_name 
from 
	actor 
where 
	first_name = 'PENELOPE'
order by 
	last_name DESC;
    
## shows the first name and the length of the first name
select first_name, length(first_name) as 'Length'
from actor;

## by using concat() you can bring two columns together
select concat(first_name, ' ', last_name) as 'Full Name'
from actor;

## how to order last& first name by descending length
select concat(first_name, ' ', last_name), length(concat(first_name, ' ', last_name)) as 'Full Name'
from actor
order by length(concat(first_name, ' ', last_name)) DESC;

## displays all the first names in all lowercase
select lower(first_name)
from actor;

## shows the first letter of the first name
select left (first_name,1)
from actor;

## shows the first 7 letters of the first name
select left (first_name,7)
from actor;    

## shows the first 7 letters of the first name with a double first letter
select concat(left(first_name,1), lower(right(first_name, 7))) from actor;

## displays the full first name with a capital first letter and the rest lowercase
select concat(left(first_name,1), lower(right(first_name, length(first_name)-1))) from actor;

## shows the first letter of the first name
select substr(first_name, 1,1)
from actor;

## shows the first 3 letters of the first name
select substr(first_name, 1,3)
from actor;

## shows the first name starting from the second letter
select substr(first_name, 2)
from actor;

## another way to get the full first name with a capital first letter and the rest lowercase
select concat(substring(first_name,1,1), lower(substring(first_name,2))) from actor;



select *
from actor
where trim(first_name) = 'GRACE';

## pulls all the titles that start with "A "
select description as original, trim(leading 'A ' from description)
from film_text;












    
    
    
    
    
    
    
    
    
    
    
    
    