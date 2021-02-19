-- In class assignment 1

--1
SELECT FirstName, LastName, Email
FROM Employee;

--2
SELECT *
FROM Artist;

--3
SELECT *
FROM Employee
WHERE TITLE LIKE '%Manager%';

--4

--find max
SELECT max(Total)
From Invoice;

--find min
SELECT min(Total)
From Invoice;

--5
SELECT BillingAddress, BillingCity, BillingPostalCode, Total
FROM Invoice
WHERE BillingCountry = 'Germany';

--6
SELECT BillingAddress, BillingCity, BillingPostalCode, Total
FROM Invoice
WHERE Total >= 15 AND Total <=25;

--7
SELECT DISTINCT BillingCountry
FROM Invoice;

--8
SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country != 'USA';

--9
SELECT *
FROM Customer
WHERE Country = 'Brazil';

--10
SELECT Name, InvoiceLine.*
FROM Track
INNER JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
ORDER BY Name ASC;