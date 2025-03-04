                                                           # Restaurant-order-analysis
This project analyzes a restaurant's menu and order data to derive actionable insights for optimizing menu offerings and enhancing customer experience. By examining the menu items, pricing trends, and categorizing dishes by type, the script identifies key patterns such as the most and least expensive items, popular cuisines, and pricing strategies. It also dives into customer order behavior, highlighting order volume, spending patterns, and the most frequently ordered items. Combining menu and order details, the analysis reveals which items are most and least ordered, and identifies top-spending customers, particularly those favoring Italian dishes. The findings suggest opportunities to refine the menu by promoting high-value items and reconsidering less popular ones, while also offering promotions to encourage larger orders.
# 1.Menu Item Analysis
* Viewing Menu Items: The script starts by viewing the menu_items table to examine the list of items available on the restaurant's menu.
* Counting Menu Items: It counts the total number of items in the menu to assess the size of the menu.
* Price Analysis: The script identifies the least and most expensive menu items, such as "Edamame" (least expensive) and "Shrimp Scampi" (most expensive).
* Italian Dishes: It counts how many Italian dishes are available and finds the least expensive (Spaghetti) and most expensive (Shrimp Scampi) Italian dishes.
* Dish Count by Category: It categorizes the dishes by their type (e.g., Italian, Mexican, etc.) and counts how many dishes fall under each category.
* Average Price by Category: It calculates the average price of dishes within each category to help identify pricing trends within different cuisines.
# 2. Order Details Analysis
* Viewing Order Details: The script examines the order_details table to get an overview of customer orders.
* Date Range of Orders: The script checks the range of order dates to understand the time span of the data, identifying the first and last order dates.
* Order Volume: It counts how many orders were made within the given date range and the total number of items ordered.
* Most Items in a Single Order: It identifies the order with the most number of items and assesses how many orders had more than 12 items.
# 3. Combining Menu Items and Order Details
* Joining Tables: The script performs a LEFT JOIN between menu_items and order_details to link each item ordered with its corresponding menu entry.
* Most and Least Ordered Items: It finds the most and least ordered menu items, identifying that "Hamburger" is the most ordered item, while "Chicken Tacos" is the least.This insight could indicate that the restaurant should continue offering hamburgers and reconsider offering chicken tacos.
* Top 5 Orders by Spending: The script calculates the total spending of each order by summing up the prices of items ordered and lists the top 5 orders that spent the most money.
# 4. Top-Spending Orders Insights
* Highest Spending Order: The script delves deeper into the order with the highest spending (Order ID 440) and identifies that this customer spent the most on Italian dishes.
* Top 5 Highest Spending Orders: It further analyzes the top 5 highest spending orders and finds that these customers mainly ordered Italian dishes. This suggests that Italian dishes might be the most profitable or popular among high-spending customers.
# Insights and recommentation
* Popular Menu Items: "Hamburgers" are the most ordered item, so they are likely a staple of the menu, while "Chicken Tacos" might not be as popular and could be reconsidered.
* High-Value Customers: Orders with a high spending amount are more likely to include Italian dishes, indicating that this category is either highly popular or priced higher.
* Menu Strategy: The restaurant might want to focus on improving or marketing Italian dishes, given their popularity among top spenders.
* Customer Behavior: The analysis suggests that customers ordering more items tend to place larger orders, so the restaurant might consider offering meal bundles or promotions to increase the total order value.
