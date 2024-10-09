// SHOW CODE OF YOUR DBCONFIG.PHP FILE 
<?php
$servername = "localhost";
$username = "your_username";
$password = "your_password";
$dbname = "your_database_name";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>

//SHOW CODE DEMONSTRATING FETCH_ALL(). USE PRINT_R(). WITH “<pre>” TAG IN BETWEEN. 
<?php
// Assuming you've included dbconfig.php
$sql = "SELECT * FROM Train";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $rows = $result->fetch_all(MYSQLI_ASSOC);
    echo "<pre>";
    print_r($rows);
    echo "</pre>";
} else {
    echo "No results found.";
}
?>

//SHOW CODE DEMONSTRATING HOW FETCH() IS USED. USE PRINT_R(). WITH “<pre>” TAG IN BETWEEN. 
<?php
// Assuming you've included dbconfig.php
$sql = "SELECT * FROM Train WHERE TrainID = 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo "<pre>";
    print_r($row);
    echo "</pre>";
} else {
    echo "No results found.";
}
?>

//SHOW CODE DEMONSTRATING INSERTION OF RECORD TO YOUR DATABASE
  <?php
// Assuming you've included dbconfig.php
$sql = "INSERT INTO Train (TrainID, TrainName, TrainNumber, Route, Capacity)
VALUES (11, 'Local Train', 'LT1111', 'Manila to Cavite', 150)";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>

//HOW CODE DEMONSTRATING DELETION OF RECORD TO YOUR DATABASE
<?php
// Assuming you've included dbconfig.php
$sql = "DELETE FROM Booking WHERE BookingID = 10";

if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>

  //HOW CODE DEMONSTRATING UPDATING OF RECORD FROM YOUR DATABASE
  <?php
// Assuming you've included dbconfig.php
$sql = "UPDATE Schedule SET DepartureTime = '2024-10-20 10:00:00' WHERE ScheduleID = 1";

if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
?>

  //SHOW CODE DEMONSTRATING AN SQL QUERY’S RESULT SET IS RENDERED ON AN HTML TABLE
<?php
// Assuming you've included dbconfig.php
$sql = "SELECT * FROM Train";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table>";
    echo "<tr><th>TrainID</th><th>TrainName</th><th>TrainNumber</th><th>Route</th><th>Capacity</th></tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["TrainID"] . "</td><td>" . $row["TrainName"] . "</td><td>" . $row["TrainNumber"] . "</td><td>" . $row["Route"] . "</td><td>" . $row["Capacity"] . "</td></tr>";
    }
    echo "</table>";
} else {
    echo "No results found.";
}
?>

  
