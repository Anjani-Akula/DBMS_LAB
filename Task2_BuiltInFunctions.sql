-- Level 0 
SELECT UPPER(DeveloperName) FROM Developers;
SELECT LOWER(DeveloperName) FROM Developers;
SELECT LENGTH(AppName) FROM Apps;
SELECT CategoryName,LENGTH(CategoryName) FROM categories;
SELECT current_date(),CURRENT_TIME();
SELECT ROUND(Rating,0) FROM Apps;
-- LEVEL 1
SELECT AppName,SUBSTRING(AppName,1,5) FROM Apps;
SELECT CONCAT(DeveloperName,Country) FROM Developers;
SELECT ROUND(Rating,2) FROM Apps;
SELECT CEIL(Price) FROM Apps;
SELECT FoundedYear FROM Developers;
SELECT CAST(Downloads AS CHAR)  FROM Apps;
-- LEVEL 2
SELECT UPPER(AppName),Rating FROM Apps;
SELECT SUBSTRING(CategoryName,1,3) FROM categories;
SELECT ABS(price-200) FROM Apps;
SELECT DeveloperName,Length(DeveloperName) FROM Developers;
SELECT CURRENT_DATE(),CURRENT_TIMESTAMP();
SELECT CAST(FoundedYear AS CHAR) FROM Developers;




