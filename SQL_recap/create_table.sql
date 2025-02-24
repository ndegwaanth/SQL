USE Enterprise;
CREATE TABLE IF NOT EXISTS customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(255),
    ContactName VARCHAR(255),
    CustomerAddress VARCHAR(255),
    City VARCHAR(255),
    PostalCode VARCHAR(255),
    Country VARCHAR(255),
    Price INT
);
INSERT INTO customers (
        CustomerName,
        ContactName,
        CustomerAddress,
        City,
        PostalCode,
        Country
    )
VALUES (
        "Alfreds Futterkiste",
        "Maria Anders",
        "Obere Str. 57",
        "Berlin",
        "12209",
        "Germany",
    ),
    (
        "Centro comercial Moctezuma",
        "Francisco Chang",
        "Av. de la Constitución 2222",
        "México D.F.",
        "05021",
        "Mexico"
    ),
    (
        "Ernst Handel",
        "Roland Mendel",
        "Kirchgasse 6",
        "Graz",
        "8010",
        "Austria",
    ),
    (
        "Island Trading",
        "Helen Bennett",
        "Garden House Crowther Way",
        "London",
        "SW1 8JX",
        "UK",
    ),
    (
        "Laughing Bacchus Winecellars",
        "Yoshi Tannamuri",
        "1900 Oak St.",
        "Vancouver",
        "V3F 2K1",
        "Canada",
    );
CREATE TABLE Products(
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(255),
    SupplierID VARCHAR(255),
    Unit VARCHAR(255),
    Price INT NOT NULL
);
INSERT INTO Products (ProductName, SupplierID, Unit, Price)
VALUES ("Chai", "SUP001", "10 boxes x 20 bags", 18),
    ("Chang", "SUP002", "24 - 12 oz bottles", 19),
    (
        "Aniseed Syrup",
        "SUP003",
        "12 - 550 ml bottles",
        10
    ),
    (
        "Chef Anton's Cajun Seasoning",
        "SUP004",
        "48 - 6 oz jars",
        22
    ),
    (
        "Chef Anton's Gumbo Mix",
        "SUP005",
        "36 boxes",
        21
    ),
    (
        "Grandma's Boysenberry Spread",
        "SUP006",
        "12 - 8 oz jars",
        25
    );
CREATE TABLE IF NOT EXISTS OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    ProductID INT NOT NULL,
    Quantity INT NOT NULL
);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity)
VALUES (101, 1, 5),
    (102, 2, 10),
    (103, 3, 3),
    (104, 4, 7),
    (105, 5, 2),
    (106, 6, 8);