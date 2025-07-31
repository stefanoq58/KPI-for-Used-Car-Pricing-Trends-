SELECT TOP (1000) [Make_Year]
      ,[Brand]
      ,[Transmission]
      ,[Mileage]
      ,[Price]
      ,[Price_Range]
      ,[Owner_Count]
      ,[Engine_cc]
      ,[Fuel_Type]
      ,[Color]
      ,[Service_History]
      ,[Accidents_Reported]
      ,[Insurance_Valid]
  FROM [Used_Car_Project].[dbo].[Used_Cars]

  
  --Overview of the distribution of price and other variables:
  SELECT 
		MIN(price) AS MinPrice,
		MAX(price) AS MaxPrice,
		AVG(price) AS AvgPrice,
		COUNT(*) AS TotalListings
  FROM Used_Cars;

   -- Price change based on the year
 SELECT Make_Year, AVG(Price) AS AvgPrice
 FROM Used_Cars
 GROUP BY Make_Year
 ORDER BY Make_Year DESC;

 
 --Influence on price based on car age
 SELECT (YEAR(GETDATE())- Make_Year) AS Car_age, AVG(price) AS AvgPrice, COUNT(*) AS Listings
 FROM Used_Cars
 GROUP BY (YEAR(GETDATE())- Make_Year)
 ORDER BY Car_age;



-- More detailed price change based on mileage ranges;
-- With categorized is used to create a CTE (Common Table Expression) a temporary table to aid sorting
 WITH Categorized AS (
    SELECT *,
	    CASE
			WHEN Mileage < 10 THEN 'Less than 10k'
			WHEN Mileage BETWEEN 10 AND 20 THEN 'Between 10k and 20k'
			WHEN Mileage BETWEEN 20 AND 30 THEN 'Between 20k and 30k'
			WHEN Mileage > 30 THEN 'More than 30k'
		END AS MileageCategory,
		CASE	
			WHEN Mileage < 10 THEN 1
			WHEN Mileage BETWEEN 10 AND 20 THEN 2
			WHEN Mileage BETWEEN 20 AND 30 THEN 3
			WHEN Mileage > 30 THEN 4
		END AS SortOrder
	FROM Used_Cars
	)
 SELECT MileageCategory, AVG(Price) AS AvgPrice
 FROM Categorized
 GROUP BY MileageCategory, SortOrder
 ORDER BY SortOrder;



-- Influence of Car age and mileage combined on the final price of the vehicle
WITH Categorized AS (
    SELECT *,
        (YEAR(GETDATE()) - make_year) AS Car_Age,
        CASE
            WHEN Mileage < 10 THEN 'Less than 10k'
            WHEN Mileage BETWEEN 10 AND 20 THEN 'Between 10k and 20k'
            WHEN Mileage BETWEEN 20 AND 30 THEN 'Between 20k and 30k'
            WHEN Mileage > 30 THEN 'More than 30k'
        END AS MileageCategory,
        CASE	
            WHEN Mileage < 10 THEN 1
            WHEN Mileage BETWEEN 10 AND 20 THEN 2
            WHEN Mileage BETWEEN 20 AND 30 THEN 3
            WHEN Mileage > 30 THEN 4
        END AS SortOrder
    FROM Used_Cars
)
SELECT 
    MileageCategory, 
    Car_Age,
    AVG(Price) AS AvgPrice,
    COUNT(*) AS Listings
FROM Categorized
GROUP BY MileageCategory, Car_Age, SortOrder
ORDER BY SortOrder, Car_Age;
 


-- Price difference based on the brand
 SELECT Brand, AVG(price) AS AvgPrice
 FROM Used_Cars
 GROUP BY Brand
 ORDER BY AvgPrice DESC;


 -- Analyzing Owner count influence on price
 SELECT Owner_Count, AVG(price) AS AvgPrice, COUNT(*) AS TotalListings
 FROM Used_Cars
 GROUP BY Owner_Count
 ORDER BY Owner_Count;

 
 -- Influence of accident reports on price
 SELECT Accidents_Reported, AVG(price) AS AvgPrice, COUNT(*) AS TotalListings
 FROM Used_Cars
 GROUP BY Accidents_Reported
 ORDER BY Accidents_Reported;

 -- Analyzing transmission type influence on price
 SELECT Transmission, AVG(price) AS AvgPrice, COUNT(*) AS TotalListings
 FROM Used_Cars
 GROUP BY Transmission
 ORDER BY AvgPrice DESC;

 
 -- Analyzing fuel type influence on price
 SELECT Fuel_Type, AVG(price) AS AvgPrice, COUNT(*) AS TotalListings
FROM Used_Cars
GROUP BY Fuel_Type
ORDER BY AvgPrice DESC;


--Full analysis combining all factors
SELECT owner_count, Accidents_Reported, transmission, Fuel_Type, AVG(price) AS AvgPrice, COUNT(*) AS TotalListings
FROM Used_Cars
GROUP BY owner_count, Accidents_Reported, transmission, Fuel_Type
ORDER BY AvgPrice DESC;



-- Owner count and accidents combined influence on price 
SELECT Accidents_Reported, Owner_Count, AVG(price) AS AvgPrice, COUNT(*) AS TotalListings
FROM Used_Cars
GROUP BY owner_count, Accidents_Reported
ORDER BY Accidents_Reported ASC;


