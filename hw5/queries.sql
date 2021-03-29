--a
SELECT b.[name], COUNT(s.model_id) as 'Inventar' 
FROM Car_Brand b, Car_Model m, Cars_on_Sale s
WHERE b.id = m.brand_id AND m.brand_id = s.model_id
GROUP BY b.[name];

--b
SELECT * FROM ActualCarFeatures
WHERE id = 
	(
		SELECT features_id FROM Car_Model
		WHERE name = 'Impreza'
	);

--c

--d
--no data for the last month; to test did for last 6 months
DECLARE @startOfCurrentMonth DATETIME
SET @startOfCurrentMonth = DATEADD(month, DATEDIFF(month, 0, CURRENT_TIMESTAMP), 0)

SELECT CONCAT(first_name + ' ', last_name) AS 'Name', date_sold 
FROM Customer, Cars_Sold
WHERE customer_id = id  
AND date_sold >= DATEADD(month, -6, @startOfCurrentMonth)
AND date_sold < @startOfCurrentMonth;

--e

--f
SELECT [name] FROM Car_Model, Cars_on_Sale
WHERE id = model_id AND [year] = '2021';

--g
SELECT [name], [price] FROM Car_Model, Cars_on_Sale
WHERE id = model_id AND price BETWEEN 30000 AND 800000;

--h
SELECT [name] 
FROM Car_Model m, Cars_on_Sale s, ActualCarFeatures a
WHERE m.id = s.model_id 
	AND m.features_id = a.id
	AND a.leather_seats = 1;

