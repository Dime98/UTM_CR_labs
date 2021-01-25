<?php

//fetch_data.php

include('db.php');

$query = "SELECT * FROM users ORDER BY id";
$statement = $connect->prepare($query);
if($statement->execute()) {
	while($row = $statement->fetch(PDO::FETCH_ASSOC)) {
		$data[] = $row;
	}

	echo json_encode($data);
}

?>