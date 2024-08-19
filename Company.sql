CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Address VARCHAR(255),
    InvoiceAmount INT,
    InvoiceDate DATE
);

INSERT INTO Customers (CustomerName, Address, InvoiceAmount, InvoiceDate) 
VALUES 
('Senoj', '123 Main St, Chennai', 1500, '2024-08-01'),
('Rupen', '456 New St, Madurai', 2500, '2024-08-05'),
('Stephi', '789 Old St, Trichy', 1800, '2024-08-10'),
('Rijo', '321 Caravan St, Coimbatore', 2300, '2024-08-12'),
('Kavin', '654 Cathedral St, Kanyakumari', 2000, '2024-08-15'),
('Kavya', '987 Rayan St, Thoothukudi', 2700, '2024-08-18');

SELECT InvoiceDate, MAX(InvoiceAmount) AS MaxInvoiceAmount
FROM Customers
GROUP BY InvoiceDate
ORDER BY MaxInvoiceAmount DESC
LIMIT 1;

SELECT InvoiceDate, SUM(InvoiceAmount) AS TotalInvoiceAmount
FROM Customers
GROUP BY InvoiceDate
ORDER BY InvoiceDate;
