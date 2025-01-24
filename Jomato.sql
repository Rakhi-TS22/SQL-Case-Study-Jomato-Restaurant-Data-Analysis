Select * from Jomato-- Create a user-defined functions to stuff the Chicken into ‘Quick Bites’. Eg: ‘Quick
--Chicken Bites’.CREATE FUNCTION chicken (@inputString VARCHAR(15))
RETURNS VARCHAR(15)
AS
BEGIN
    DECLARE @outputString VARCHAR(50);
    
    -- Stuff "Chicken" into "Quick Bites"
    SET @outputString = STUFF(@inputString, CHARINDEX(' Bites', @inputString), 0, ' Chicken ');
    
    RETURN @outputString;
END;

SELECT dbo.chicken('Quick Bites') AS NewString;

--Use the function to display the restaurant name and cuisine type which has the
--maximum number of rating.
SELECT 
    RestaurantName,Rating,
    CuisinesType
FROM 
    jomato
WHERE 
    Rating = (SELECT MAX(Rating) FROM jomato);


--Create a Rating Status column to display the rating as ‘Excellent’ if it has more the 4 start rating, ‘Good’ if it has above 3.5 and below 5 star rating, ‘Average’ if it is above 3
--and below 3.5 and ‘Bad’ if it is below 3 star rating.

Select * , RatingStatus =
Case
when Rating >4 then 'Excellent'
when Rating >3.5 and Rating <5 then 'Good'
when Rating >3 and Rating<3.5 then 'Average'
else 'Bad'
end
from jomato
go

-- Find the Ceil, floor and absolute values of the rating column and display the current date
--and separately display the year, month_name and day.

SELECT 
    CEILING(Rating) AS CeilingRating,
    FLOOR(Rating) AS FloorRating,
    ABS(Rating) AS AbsoluteRating,
	GETDATE() AS CurrentDate,
	YEAR(GETDATE()) AS CurrentYear,
    DATENAME(MONTH, GETDATE()) AS Month_Name,
    DAY(GETDATE()) AS CurrentDay
FROM 
    Jomato;

Select * from Jomato

--Display the restaurant type and total average cost using rollup.

SELECT 
    isnull(RestaurantType,'Others') AS RestaurantType,
    AVG(AverageCost) AS TotalAverageCost
FROM 
    Jomato
GROUP BY 
    RestaurantType
WITH ROLLUP;

