CREATE TABLE Train (
    TrainID INT PRIMARY KEY,
    TrainName VARCHAR(100),
    TrainNumber VARCHAR(50),
    Route VARCHAR(100),
    Capacity INT
);

CREATE TABLE Schedule (
    ScheduleID INT PRIMARY KEY,
    TrainID INT,
    DepartureStation VARCHAR(100),
    ArrivalStation VARCHAR(100),
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    PlatformNumber INT,
    FOREIGN KEY (TrainID) REFERENCES Train(TrainID)
);

CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    PassengerID INT,
    ScheduleID INT,
    BookingDate DATETIME,
    SeatNumber VARCHAR(10),
    TicketPrice DECIMAL,
    FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID),
    FOREIGN KEY (ScheduleID) REFERENCES Schedule(ScheduleID)
);

CREATE TABLE Platform (
    PlatformNumber INT PRIMARY KEY,
    Capacity INT,
    TrainID INT,
    Location VARCHAR(100),
    FOREIGN KEY (TrainID) REFERENCES Train(TrainID)
);

CREATE TABLE Passenger (
    PassengerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    DOB DATE,
    ContactNumber VARCHAR(15),
    Nationality VARCHAR(50)
);
