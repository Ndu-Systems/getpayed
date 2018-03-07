<?php
	include 'conn.php';
	header ('Access-Control-Allow-Origin: *');

	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		$result = null;

		try {
			$data = json_decode(file_get_contents('php://input'));

			$Email = $data->Email;
      $Password = $data->Password;
      $RoleId = $data->RoleId;
      $IsActive = "Active";
      $UserId = $data->UserId;
      $DateNow = "Now()";

			$db = Database::connect();
			$sql = "INSERT INTO users (Email, Password, RoleId, IsActive, CreateUserId, CreateDate, ModifyUserId, ModifyDate)
                         VALUES (?,?, ?,?, ?,?, ?,?)";

			$stmt = $db->prepare($sql);

			if($stmt->execute([$Email, $Password,$RoleId,$IsActive,$UserId,$DateNow,$UserId,$DateNow])) {
				$result = array('status' => 1, 'content' => 'Person added successfully');
			}
			else {
				throw new PDOException("Error adding person", 1);
			}

		}
		catch (PDOException $ex) {
			$result = array('status' => 0, 'content' => $ex->getMessage());
		}
		finally {
			header('Content-Type: application/json');
			echo json_encode($result);
		}
	}
	else {
		die ("Error: Please consume this service as a POST request");
	}
?>
