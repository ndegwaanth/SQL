-- record inserting
INSERT INTO customers (
        CustomerName,
        ContactName,
        CustomerAddress,
        City,
        PostalCode,
        Country
    )
VALUES("Anthony", "Ndegwa", "Ushirika 45", "Nairobi", "59493", "Nairobi");

-- selecting all the records
select * from Enterprise.customers;

-- selecting specific columns or fields
select CustomerName, City from customers;

-- select distinct records
select distinct Country from customers;
