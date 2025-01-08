CREATE TABLE Owner (
	MemberID char(5) PRIMARY KEY,
	FarmID char(7) FOREIGN KEY REFERENCES Farm(FarmID),
	FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);