CREATE TABLE Planting (
    PlantedDate char(8) NOT NULL,
    FarmID char(7) REFERENCES Farm(FarmID),
    FieldNum int NOT NULL,
	VarietyID char(4) NOT NULL FOREIGN KEY REFERENCES Variety(VarietyID)
	PRIMARY KEY (PlantedDate, FarmID, FieldNum),
    FOREIGN KEY (FarmID) REFERENCES Farm(FarmID),
    FOREIGN KEY (FieldNum, FarmID) REFERENCES Field(FieldNum, FarmID),
 
    
);