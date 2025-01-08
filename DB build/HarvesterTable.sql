CREATE TABLE Harvester (
	MemberID char(5) PRIMARY KEY,
	ClassID char(1) FOREIGN KEY REFERENCES Class(ClassID),
	FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);