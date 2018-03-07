<?php
	include 'conn.php';
	header ('Access-Control-Allow-Origin: *');

	$result = null;

	try {
		$db = Database::connect();

		$sql = "SELECT * FROM users u inner join role r on u.RoleId = r.RoleId where u.IsActive ='Active'";

		$query = $db->query($sql);

		$result = array('status' => 1, 'content' => $query->fetchAll());
	}
	catch (PDOException $ex) {
		$result = array('status' => 0, 'content' => 'Error getting people: '. $ex->getMessage());
	}
	finally {
		header('Content-Type: application/json');
		echo json_encode($result);
	}
?>
