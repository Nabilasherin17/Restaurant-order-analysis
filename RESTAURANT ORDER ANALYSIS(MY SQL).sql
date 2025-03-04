-- RESRTAURANT ORDER ANALYSIS
-- QUES?-- THE TASTE OF THE WORLD CAFE DEBUTED A NEW MENU AT THE START OF THE YEAR 
-- YOU HAE BEEN ASKED TO DIG INTO THE CUSTOMER DATA TO SEE WHICH MENU ITEMS ARE DOING WELL/NOT WELL
-- AND WHAT THE TOP CUSTOMERS SEEMS LIKE BEST? 
use restaurant_db;
-- view the menu items table?
select * from menu_items;
-- find the no: of items in the menu
select count(*) from menu_items;
-- what are the least and most expensive item in the menu
select * from menu_items
order by price desc;
# leat exp item is edamame and most exp item is shrimb scampi
-- how many italian dishes on the menu
select count(*) from menu_items
where category='italian';
-- wht r the least and most expensive italian dishes on the menu
select * from menu_items
where category='italian'
order by price desc;
#less spaghetti and most=shrimp scampi
-- how many dishes are in the each category
select category,count(menu_item_id) as num_dishes
from menu_items
group by category;
-- wht is the avrage dish price within eachcategory
select category,avg(price) as prive_av
from menu_items 
group by category;

-- view order details table
use restaurant_db;
select * from order_details;
-- what is the date range of the table
select order_date from order_details
order by order_date asc
limit 1;
select order_date from order_details
order by order_date desc
limit 1;
-- or/
select min(order_date),max(order_date) from order_details;
-- how many orders were made within this date range
select count(distinct order_id) from order_details;
-- how many items were ordered within this date range
select count(*) from order_details;
-- which order had most number of items
select order_id ,count(item_id) as it
from order_details
group by order_id
order by it desc;
-- how many orders have more than 12 items
select count(*)from
(select order_id ,count(item_id) as it
from order_details
group by order_id
having it>12) as num_items;


-- combine menu_items and order_details
select * from menu_items;
select * from order_details;

select *
 from order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id;
-- what were the most and least orderd items? wht catgry were they in ?
select item_name,category,count(order_details_id) as ord
 from order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
 group by item_name,category
 order by ord desc;
 # most=hamburger ,least=chivken tacos,we definitely keep humburger in our menu items
-- wht were the top 5 orders that spend the most money
select order_id,sum(price) as price_cus
 from order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
 group by order_id
 order by price_cus desc
 limit 5;

-- view the details of the highest spend ordrer.wht insight can you gather from the table
select category,count(item_id)
 from order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
where order_id= 440
 group by category
;
# 440 is most spending customer and they spend in italian dishes more
--  view the details of the top 5 highest spend order.wht insight can you gather from the table
select category,count(item_id)
 from order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
where order_id in ( 440,2075,1957,330,2675)
 group by category;
 # top 5 orders orders italian dishes
select order_id, category,count(item_id)
 from order_details od left join menu_items mi
 on od.item_id=mi.menu_item_id
where order_id in ( 440,2075,1957,330,2675)
 group by order_id,category;
 # thw insight we got from here is the most spending order id is 440 and ordered most italian food.