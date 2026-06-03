-- a) Find total sales per city
SELECT 
    City,
    SUM(PurchaseAmount) AS TotalSales
FROM SalesData
GROUP BY City
ORDER BY TotalSales DESC;


-- b) Top 5 cities by revenue
SELECT 
    City,
    SUM(PurchaseAmount) AS TotalRevenue
FROM SalesData
GROUP BY City
ORDER BY TotalRevenue DESC
LIMIT 5;


-- Find customers with purchases above average
SELECT 
    CustomerID,
    Name,
    City,
    PurchaseAmount
FROM SalesData
WHERE PurchaseAmount > (SELECT AVG(PurchaseAmount) FROM SalesData)
ORDER BY PurchaseAmount DESC;