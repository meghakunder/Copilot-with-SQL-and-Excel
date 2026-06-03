-- Create SalesData Table for MySQL 8.0
CREATE TABLE SalesData (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    City VARCHAR(50) NOT NULL,
    PurchaseAmount DECIMAL(10,2) NOT NULL,
    PurchaseDate DATE NOT NULL
);

-- Insert 10,000 rows of random sample data using stored procedure
DELIMITER $$

CREATE PROCEDURE PopulateSalesData()
BEGIN
    DECLARE counter INT DEFAULT 1;
    DECLARE firstName VARCHAR(50);
    DECLARE lastName VARCHAR(50);
    DECLARE city VARCHAR(50);
    DECLARE randomAge INT;
    DECLARE randomAmount DECIMAL(10,2);
    DECLARE randomDate DATE;
    
    -- Arrays of names and cities
    DECLARE firstNames JSON DEFAULT JSON_ARRAY(
        'John', 'Michael', 'Robert', 'James', 'William', 'David', 'Richard', 'Joseph', 'Thomas', 'Charles',
        'Mary', 'Patricia', 'Jennifer', 'Linda', 'Barbara', 'Susan', 'Jessica', 'Sarah', 'Karen', 'Nancy',
        'Lisa', 'Betty', 'Margaret', 'Sandra', 'Ashley', 'Dorothy', 'Emily', 'Donna', 'Michelle', 'Angela'
    );
    
    DECLARE lastNames JSON DEFAULT JSON_ARRAY(
        'Smith', 'Johnson', 'Williams', 'Brown', 'Jones', 'Garcia', 'Miller', 'Davis', 'Rodriguez', 'Martinez',
        'Hernandez', 'Lopez', 'Gonzalez', 'Wilson', 'Anderson', 'Thomas', 'Taylor', 'Moore', 'Jackson', 'Martin',
        'Lee', 'Perez', 'Thompson', 'White', 'Harris', 'Sanchez', 'Clark', 'Ramirez', 'Lewis', 'Robinson'
    );
    
    DECLARE cities JSON DEFAULT JSON_ARRAY(
        'New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 'Philadelphia', 'San Antonio', 'San Diego', 
        'Dallas', 'San Jose', 'Austin', 'Jacksonville', 'Denver', 'Boston', 'Portland', 'Seattle', 'Miami', 
        'Atlanta', 'Nashville', 'Detroit', 'Minneapolis', 'Las Vegas', 'Charlotte', 'New Orleans', 'Baltimore',
        'Memphis', 'Milwaukee', 'Albuquerque', 'Tucson', 'Fresno', 'Sacramento', 'Long Beach', 'Kansas City',
        'Mesa', 'Virginia Beach', 'Cincinnati', 'Newark', 'Cleveland', 'Arlington'
    );
    
    -- Loop to insert 10,000 records
    WHILE counter <= 10000 DO
        SET firstName = JSON_UNQUOTE(JSON_EXTRACT(firstNames, CONCAT('$[', FLOOR(RAND() * JSON_LENGTH(firstNames)), ']')));
        SET lastName = JSON_UNQUOTE(JSON_EXTRACT(lastNames, CONCAT('$[', FLOOR(RAND() * JSON_LENGTH(lastNames)), ']')));
        SET city = JSON_UNQUOTE(JSON_EXTRACT(cities, CONCAT('$[', FLOOR(RAND() * JSON_LENGTH(cities)), ']')));
        SET randomAge = FLOOR(RAND() * 60 + 18);  -- Age between 18 and 78
        SET randomAmount = ROUND(RAND() * 5000 + 10, 2);  -- Purchase amount between 10 and 5010
        SET randomDate = DATE_ADD('2024-01-01', INTERVAL FLOOR(RAND() * 365) DAY);  -- Random date in 2024
        
        INSERT INTO SalesData (Name, Age, City, PurchaseAmount, PurchaseDate)
        VALUES (CONCAT(firstName, ' ', lastName), randomAge, city, randomAmount, randomDate);
        
        SET counter = counter + 1;
    END WHILE;
END$$

DELIMITER ;

-- Call the stored procedure to populate data
CALL PopulateSalesData();

-- Verify the data
SELECT COUNT(*) AS TotalRecords FROM SalesData;
SELECT * FROM SalesData LIMIT 20;