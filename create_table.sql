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
        12
    ),
    (
        "Centro comercial Moctezuma",
        "Francisco Chang",
        "Av. de la Constitución 2222",
        "México D.F.",
        "05021",
        "Mexico" 6
    ),
    (
        "Ernst Handel",
        "Roland Mendel",
        "Kirchgasse 6",
        "Graz",
        "8010",
        "Austria",
        10
    ),
    (
        "Island Trading",
        "Helen Bennett",
        "Garden House Crowther Way",
        "London",
        "SW1 8JX",
        "UK",
        20
    ),
    (
        "Laughing Bacchus Winecellars",
        "Yoshi Tannamuri",
        "1900 Oak St.",
        "Vancouver",
        "V3F 2K1",
        "Canada",
        57
    );