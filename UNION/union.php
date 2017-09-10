<?php

	require '../connect.php';
	
	$conn    = Connect();
	$query   = "
SELECT * 
FROM Customer AS a
LEFT OUTER JOIN Supplier AS o ON a.city = o.city
UNION 
SELECT * 
FROM Customer AS a
RIGHT OUTER JOIN Supplier AS o ON a.city = o.city
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

   echo "Fetched data successfully\n";
   $conn->close();
   
?>

