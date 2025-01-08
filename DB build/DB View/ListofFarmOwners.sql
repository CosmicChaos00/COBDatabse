CREATE VIEW listofFarmOwners AS
SELECT 
	FirstName,
	LastName,
	FarmName, 
	ClassName,
	RegionName
FROM Members
INNER JOIN Owner ON Members.MemberID = Owner.MemberID
INNER JOIN Farm ON Owner.FarmID = Farm.FarmID
INNER JOIN Region ON Region.RegionID = Farm.RegionID
INNER JOIN Class on Class.ClassID = Farm.ClassID
