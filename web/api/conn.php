<?php

//object class for the database connection
	class Database {
		public function __construct () {
			die ("Cannot instantiate static class");
		}
    //function to connect database using PDO
		public function connect () {
			$options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
						PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
						PDO::ATTR_EMULATE_PREPARES => false];

			return new PDO("mysql:host=localhost;dbname=getpayeddb", 'root', '', $options);
		}
	}
?>
