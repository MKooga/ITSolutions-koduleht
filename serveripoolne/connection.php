<?php
require '../config.php';

$connect = new mysqli(DATABASE_HOSTNAME, DATABASE_USERNAME, DATABASE_PASSWORD, DATABASE_DATABASE);
// Check connection
if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
}