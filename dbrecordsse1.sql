INSERT INTO Train (TrainID, TrainName, TrainNumber, Route, Capacity)
VALUES
  (6, 'Bullet Train', 'BT606', 'Manila to Hong Kong', 700),
  (7, 'Overnight Express', 'OE707', 'Manila to Cagayan de Oro', 400),
  (8, 'Regional Train', 'RT808', 'Manila to Iloilo', 350),
  (9, 'Commuter Train', 'CT909', 'Manila to Calamba', 200),
  (10, 'Express Train', 'ET1010', 'Manila to Cebu', 550);

INSERT INTO Schedule (ScheduleID, TrainID, DepartureStation, ArrivalStation, DepartureTime, ArrivalTime, PlatformNumber)
VALUES
  (4, 6, 'Manila', 'Hong Kong', '2024-10-15 12:00:00', '2024-10-16 12:00:00', 4),
  (5, 7, 'Manila', 'Cagayan de Oro', '2024-10-16 20:00:00', '2024-10-17 10:00:00', 5),
  (6, 8, 'Manila', 'Iloilo', '2024-10-17 07:00:00', '2024-10-17 16:00:00', 6),
  (7, 9, 'Manila', 'Calamba', '2024-10-18 06:00:00', '2024-10-18 12:00:00', 7),
  (8, 10, 'Manila', 'Cebu', '2024-10-19 08:00:00', '2024-10-19 18:00:00', 8);

INSERT INTO Booking (PassengerID, ScheduleID, BookingDate, SeatNumber, TicketPrice)
VALUES
  (1006, 4, '2024-10-14 15:00:00', 'F6', 3000.00),
  (1007, 5, '2024-10-15 18:00:00', 'G7', 2500.00),
  (1008, 6, '2024-10-16 12:00:00', 'H8', 1200.00),
  (1009, 7, '2024-10-17 10:00:00', 'I9', 800.00),
  (1010, 8, '2024-10-18 15:00:00', 'J10', 600.00);

INSERT INTO Platform (PlatformNumber, Capacity, TrainID, Location)
VALUES
  (4, 700, 6, 'International Terminal'),
  (5, 400, 7, 'North Terminal'),
  (6, 350, 8, 'South Terminal'),
  (7, 200, 9, 'Central Station'),
  (8, 550, 10, 'East Station');

INSERT INTO Passenger (PassengerID, FirstName, LastName, DOB, ContactNumber, Nationality)
VALUES
  (1006, 'Emily', 'Brown', '1985-04-04', '1111111111', 'British'),
  (1007, 'David', 'Johnson', '1990-05-05', '2222222222', 'American'),
  (1008, 'Olivia', 'Taylor', '1995-06-06', '3333333333', 'Canadian'),
  (1009, 'Noah', 'Williams', '2000-07-07', '4444444444', 'Australian'),
  (1010, 'Sophia', 'Jones', '2005-08-08', '5555555555', 'Filipino');
