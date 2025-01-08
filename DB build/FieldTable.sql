CREATE TABLE Field (
    FieldNum int NOT NULL,
    FarmID char(7) REFERENCES Farm(FarmID),
    Location char(18) NOT NULL,
    NumOfHarvest int NOT NULL,
    PRIMARY KEY (FieldNum, FarmID) -- Creating a composite primary key
);