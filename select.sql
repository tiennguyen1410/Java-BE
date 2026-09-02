use sales;
Insert into customers (customer_name, contact_name, address, city, post_code, country) 
 values ('Trần Bình', 'Trọng', 'Quận 8', 'HCM', 70000, 'VN'), 
('Tran Bao', 'An', 'Bình Thạnh', 'HCM', 70000, 'VN'), 
('Tasty', 'Finn', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');

select customer_id, customer_name, contact_name, address, city, post_code, country
from customers;

select DISTINCT country from customers;

select * from customers where country = 'VN';

select country, count(customer_id) numberOfCustomers from customers group by country;

select country, count(customer_id) numberOfCustomers from customers group by country having count(customer_id) >= 2;

select customer_id, customer_name, country from customers order by customer_name;

-- lab2
use bikestores1;
select * from customers;
select first_name, last_name, email from customers;

select * from customers where state = 'CA';

select * from customers order by first_name asc;

select city, count(customer_id) customer_count from customers where state = 'CA' group by city;

select city from customers where state = 'CA' group by city having count(customer_id) > 10 ;

select * from products;

select product_name, model_year from products where list_price between 1000 and 2000;

select first_name, email from staffs;

select product_name, brand_id from products where model_year = 2016 and list_price > 1000;

select * from orders;

select order_id, customer_id from orders where shipped_date is not null;

select * from order_items;
select product_id, list_price, quantity from order_items where discount != 0 and quantity = 2;

select store_id, count(product_id) product_count from stocks group by store_id having count(product_id) > 5 order by product_count desc;

select concat( first_name,  '' ,last_name ) customer_name, email from customers where email like '%@yahoo.com' order by customer_name ;

select category_id, avg(list_price) avg_price
from products group by category_id having avg(list_price) > 500 order by avg_price desc;

select brand_id, count(product_id) total_products from products group by brand_id having count(product_id) > 2 order by total_products desc;