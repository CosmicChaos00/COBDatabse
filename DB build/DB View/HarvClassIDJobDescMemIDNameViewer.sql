CREATE VIEW HarvClassIDJobDescMemIDNameViewer AS
SELECT ROW_NUMBER() OVER (ORDER BY Harvester.ClassID ASC) AS rowNum2,
	Harvester.MemberID, 
	FirstName, 
	LastName, 
	JobDescription, 
	Harvester.ClassID,
	ClassName
	FROM Harvester
    INNER JOIN Members ON Harvester.MemberID = Members.MemberID
	INNER JOIN Class On CLass.ClassID = Harvester.ClassID

