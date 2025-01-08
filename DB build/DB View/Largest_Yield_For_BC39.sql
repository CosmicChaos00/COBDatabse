CREATE VIEW LargestYield4BC39 AS 
SELECT VarietyName, MAX(Harvest.Bushels) AS Largest_Yield_For_BC39,Code
FROM Harvest
INNER JOIN Status on Status.StatusID = Harvest.StatusID
INNER JOIN Planting ON Planting.FarmID = Harvest.FarmID
INNER JOIN Variety on Variety.VarietyID = Planting.VarietyID
AND Planting.FieldNum = Harvest.FieldNum
AND Planting.VarietyID = 'BC39' AND Code ='OK'
GROUP BY VarietyName,Code; 

