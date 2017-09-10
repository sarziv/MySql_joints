<?php

	require '../connect.php';
	
	$conn    = Connect();
	$query   = "
SELECT * 
FROM Customer
LEFT JOIN Supplier ON Customer.id_Supplier = Supplier.id
WHERE Customer.firstname =  'Michel'
OR Customer.id IS NULL 
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

$row['city'] ." ". 
$row['companyname'] . "<br>" .
" ------------------ " . "<br>";
}

   echo "Michal was Found!  \n";
   $conn->close();
   
?>

