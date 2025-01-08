CREATE TABLE Management(
	MemberID char(5) PRIMARY KEY,
	LastTimeAccessed datetime NULL,
	RegionID char(2) FOREIGN KEY REFERENCES Region(RegionID),
	FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);