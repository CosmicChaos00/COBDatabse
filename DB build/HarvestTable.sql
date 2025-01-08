CREATE TABLE Harvest (
    HarvestNum int NOT NULL,
    FieldNum int,
    FarmID char(7),
    PlantedDate char(8),
    HarvestDate char(7) NULL,
    StatusID int NOT NULL FOREIGN KEY REFERENCES Status(StatusID),
    Bushels float NOT NULL, 
    PRIMARY KEY (HarvestNum, FieldNum, FarmID, PlantedDate),
    FOREIGN KEY (FieldNum, FarmID) REFERENCES Field(FieldNum, FarmID),
    FOREIGN KEY (FarmID) REFERENCES Farm(FarmID),
    FOREIGN KEY (PlantedDate, FarmID, FieldNum) REFERENCES Planting(PlantedDate, FarmID, FieldNum)
);
