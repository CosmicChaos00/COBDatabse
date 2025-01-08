CREATE VIEW WhoManagesSI AS
Select Management.MemberID, FirstName,LastName From Management
INNER JOIN Members on Management.MemberID = Members.MemberID
AND Management.RegionID = 'SI';