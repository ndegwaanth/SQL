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

