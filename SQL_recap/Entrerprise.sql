-- record inserting
INSERT INTO customers (
        CustomerName,
        ContactName,
        CustomerAddress,
        City,
        PostalCode,
        Country
    )
VALUES
("Anthony", "Ndegwa", "Ushirika 45", "Nairobi", "59493", "Nairobi");

-- selecting all the records
select * from Enterprise.customers;

-- selecting specific columns or fields
select CustomerName, City from customers;

-- select distinct records
select distinct Country from customers;

-- select distinct records from different fields
select distinct City,CustomerName, PostalCode
from customers;

-- count  the distinct values
select count(distinct Country) from customers;

select Count(*) AS DistinctCounties
from (select distinct Country from customers);

-- selecting using where clause
select * from Enterprise.customers
where CustomerName ='Anthony';

select City, CustomerName
from Enterprise.customers
where CustomerName='Anthony';

-- order by clause
select ContactName, CustomerAddress
from Enterprise.customers
order by City DESC, CustomerName ASC;

-- AND clause
select distinct * from customers
where Country = "Nairobi" AND CustomerName LIKE "A%";

-- OR clause
select * from customers
where Country = "Mexico" or Country = "Kenya";

-- combination of OR and AND clause
select * from  customers
where (Country = "Nairobi" or Country = "Canada") AND (CustomerName LIKE "A%" or CustomerName LIKE "L%");

-- NOT clause
select * from customers
where NOT Country = "Nairobi";

select * from customers
where CustomerName NOT LIKE "A%";

-- select * from Enterprise.customers
-- where ID NOT BETWEEN 1 and 3;

select * from customers
where City NOT IN ("Nairobi", "Mexico");

-- INSERT INTO clause
INSERT INTO Enterprise.customers (
		CustomerName,
        ContactName,
        CustomerAddress,
        City,
        PostalCode,
        Country
        )
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');

select * from customers;

INSERT INTO Enterprise.customers (
		CustomerName,
        CustomerAddress,
        City,
        PostalCode,
        Country
        )
values
("fredrick", "umoja 34", "Karen", "59493", "Uganda");

-- NULL
select * from customers
where ContactName IS NULL;

-- NOT NULL
select * from customers
where ContactName IS NOT NULL; 

-- UPDATE clause
update Enterprise.customers
set Country = "Kenya"
where ContactName = "Ndegwa";

select * from customers;

-- DELETE clause
delete from Enterprise.customers
where Country = "Uganda";

select * from customers
limit 3;
-- fetch first 3 rows only;


-- Products Table
select * from Enterprise.Products;


-- AGGREGATES fUNCTIONS
-- MIN()
SELECT MIN(Price)
from Products;

-- MAX()
select MAX(Price)
from Products;

-- Setting columns names MINIMUM value
select min(Price) as SmallestPrice
from Products;

-- Setting columns names MINIMUM value
select max(Price) as HighestPrice
from Products;


-- MIN() with GROUP BY
select SupplierID, MIN(Price) AS SmallestPrice
from Products
group by SupplierID;

SELECT ProductID, ProductName, Price 
FROM Products 
WHERE Price = (SELECT MIN(Price) FROM Products);


-- MAX() with GROUP BY
select SupplierID, MAX(Price) AS SmallestPrice
from Products
group by SupplierID;

SELECT ProductID, ProductName, Price 
FROM Products 
WHERE Price = (SELECT MAX(Price) FROM Products);

-- COUNT()
select count(*)
from Products;

select count(ProductID)
from Products
where Price > 20;

-- SUM()
select SUM(Price) AS Total
from Products
where Price > 20;

select ProductID, SUM(Price) AS TotalPrice
from Products
group by ProductID;

select SUM(Price * 130)
from Products;

-- OrderDetails Table
select * from Enterprise.OrderDetails;
select * from Enterprise.Products;

select SUM(Price * Quantity)
from OrderDetails
left join Products on OrderDetails.ProductID = Products.ProductID;

-- AVG()
select AVG(Price)
from Products;

select AVG(Price)
from Products
where SupplierID = "SUP001";

select * from Products
where Price < (select AVG(Price) from Products);

-- Removing Any Duplicates
WITH CTE AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY ProductName, SupplierID, Unit, Price ORDER BY ProductID) AS row_num
    FROM Products
)
DELETE FROM Products WHERE ProductID IN (SELECT ProductID FROM CTE WHERE row_num > 1);





















































































































































