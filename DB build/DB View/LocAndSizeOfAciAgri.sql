CREATE VIEW LocAndSizeOfAciAgri AS
SELECT FarmName, ClassName, Size, RegionName 
FROM Farm
INNER JOIN Class ON Class.ClassID = Farm.ClassID  
INNER JOIN Region ON Region.RegionID = Farm.RegionID
WHERE FarmName = 'Ace-Agri';
