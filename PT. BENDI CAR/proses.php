<?php
// Koneksi ke database
$host = "127.0.0.1";
$username = "root"; // Ganti jika perlu
$password = ""; // Ganti jika perlu
$database = "pt.bendi_car";

$conn = new mysqli($host, $username, $password, $database);

// Periksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Ambil data dari form
$nama = $_POST['nama'];
$alamat = $_POST['alamat'];
$no_telp = $_POST['no_telp'];
$no_ktp = $_POST['no_ktp'];
$tgl_pengembalian = $_POST['tgl_pengembalian'];
$pilihan = $_POST['pilihan'];

// Cek jika data kosong
if (empty($alamat) || empty($nama) || empty($no_ktp) || empty($no_telp) || empty($pilihan) || empty($tgl_pengembalian)) {
    echo "Semua kolom wajib diisi!";
    exit;
}

// Query untuk insert data
$query = "INSERT INTO penyewaan (Nama, Alamat, no_telp, no_ktp, merek, tgl_pengembalian) 
          VALUES (?, ?, ?, ?, ?, ?)";

// Menyiapkan query
$stmt = $conn->prepare($query);

// Binding parameter ke query
$stmt->bind_param("ssssss", $nama, $alamat, $no_telp, $no_ktp, $pilihan, $tgl_pengembalian);

// Eksekusi query
if ($stmt->execute()) {
    echo "Data berhasil disimpan. <a href='form.html'>Kembali</a>";
} else {
    echo "Terjadi kesalahan: " . $stmt->error;
}

// Menutup statement dan koneksi
$stmt->close();
$conn->close();
?>
