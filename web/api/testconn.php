<?php
	include 'conn.php';

	try {
		$db = Database::connect();
		echo 'Connection successful';
	} catch (PDOException $ex) {
		echo $ex -> getMessage();
	}
?>
