CREATE TABLE ProjectManager (
	MemberID char(5) PRIMARY KEY,
	NextProjRev datetime NULL,
	FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
);