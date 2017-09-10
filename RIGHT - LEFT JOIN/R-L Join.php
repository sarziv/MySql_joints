<?php

	require '../connect.php';
	
	$conn    = Connect();
	$query   = "
SELECT * 
FROM Customer
LEFT JOIN Supplier ON Customer.id_Supplier = Supplier.id
LIMIT 0 , 30";

	$success = $conn->query($query);
	
if (!$success) {
    die("Couldn't enter data: ".$conn->error);
}

	$result = $conn->query($query);

while($row = mysqli_fetch_array($result)) {
echo 
$row['firstname'] ." ". 
$row['lastname'] ." | ". 

$row['id'] ." ". 
$row['companyname'] . "<br>" .
" ------------------ " . "<br>";
}

   echo "Fetched data successfully\n";
   $conn->close();
   
?>

