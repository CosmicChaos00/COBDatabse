CREATE VIEW ClassIDofAceAgri AS
SELECT FarmName,Farm.ClassID,ClassName,RegionName FROM Farm
INNER JOIN Class on Class.ClassID = Farm.ClassID
INNEr JOIN Region on Region.RegionID = Farm.RegionID
WHERE FarmName = 'Ace-Agri'