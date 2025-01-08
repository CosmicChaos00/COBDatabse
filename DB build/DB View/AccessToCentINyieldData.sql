CREATE VIEW AccessToCentINyieldData AS
Select Harvester.MemberID, FirstName,LastName, ClassName,FarmName,RegionName From Harvester
INNER JOIN Members on Harvester.MemberID = Members.MemberID
INNER JOIN Farm on Farm.ClassID = Harvester.ClassID
INNER JOIN Class on Class.ClassID = Harvester.ClassID
INNER JOIN Region on Farm.RegionID = Region.RegionID
AND Farm.RegionID = 'CI';
