use sql_dasar;
use laravel_theory;
SELECT DISTINCT title, description
from recipes;
SELECT *
FROM users;

-- Multi-row function
SELECT count(id)
FROM users;

-- Single-row function
SELECT name, length(email) as email_length
FROM users;

-- Join With Group By
# SELECT Customers.CustomerID, Customers.CustomerName, SUM(OrderDetails.Quantity)
# FROM Customers
#          INNER JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID
#          INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
# GROUP BY Customers.CustomerID
# ORDER BY Customers.CustomerID ASC;
