CREATE VIEW YieldValuesInChronOrder AS
SELECT ROW_NUMBER() OVER(ORDER BY HarvestDate) As RowNum, Field.FieldNum, Bushels,HarvestDate FROM Field
INNER JOIN Harvest ON Harvest.FieldNum = Field.FieldNum
AND Harvest.FarmID = Field.FarmID