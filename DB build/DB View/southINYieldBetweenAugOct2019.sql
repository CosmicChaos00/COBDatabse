CREATE VIEW southINYieldBetweenAugOct2019 AS
SELECT Planting.VarietyID,Bushels,HarvestDate, ClassName,RegionName,code
FROM Harvest 
INNER JOIN Farm ON Harvest.FarmID = Farm.FarmID
INNER JOIN Status on Status.StatusID = Harvest.StatusID
INNER JOIN Planting on Planting.FarmID = Harvest.FarmID AND Planting.FieldNum = Harvest.FieldNum AND Planting.PlantedDate = Harvest.PlantedDate
INNER JOIN Variety on Variety.VarietyID = Planting.VarietyID
INNER JOIN Region on Region.RegionID = Farm.RegionID AND Farm.RegionID = 'SI'
INNER JOIN Class on Class.ClassID = Farm.ClassID
AND HarvestDate BETWEEN '2019/08' AND '2019/10';
