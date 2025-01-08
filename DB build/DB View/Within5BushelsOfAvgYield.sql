CREATE VIEW Within5BushelsOfAvgYield AS
SELECT Planting.VarietyID, AvgYield, Bushels, Code AS StatuesName, ClassName,RegionName FROM Harvest
INNER JOIN Planting ON Harvest.FarmID = Planting.FarmID AND Harvest.FieldNum = Planting.FieldNum AND Harvest.PlantedDate = Planting.PlantedDate
INNER JOIN Variety ON Planting.VarietyID = Variety.VarietyID
INNER JOIN Farm ON Farm.FarmID = Planting.FarmID
INNER JOIN Class ON Class.ClassID = Farm.ClassID
INNER JOIN Region ON Region.RegionID = Farm.RegionID
INNER JOIN Status ON Harvest.StatusID = Status.StatusID
WHERE Bushels BETWEEN (AvgYield - 5) AND AvgYield + 5;