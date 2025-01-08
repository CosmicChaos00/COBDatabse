
CREATE TABLE Farm (
	FarmID char(7) NOT NULL PRIMARY KEY,
	FarmName char(16) NOT NULL,
	Size int NOT NULL,
	ClassID char(1) FOREIGN KEY REFERENCES Class(ClassID),
	RegionID char(2) FOREIGN KEY REFERENCEs Region(RegionID)

);