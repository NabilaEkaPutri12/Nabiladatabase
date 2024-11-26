<?php
// Koneksi ke database
$host = "127.0.0.1";
$username = "root"; // ganti jika diperlukan
$password = ""; // ganti jika diperlukan
$database = "pt.bendi_car";

$conn = new mysqli($host, $username, $password, $database);

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>
