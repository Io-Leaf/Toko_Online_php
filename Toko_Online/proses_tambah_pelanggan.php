<?php
if ($_POST) {
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $telefon = $_POST['telepon'];

    if (empty($nama)) {
        echo "<script> alert('nama tidak boleh kosong');location.href='tambah_pelanggan.php';</script>";
    } elseif (empty($alamat)) {
        echo "<script> alert('alamat tidak boleh kosong');location.href='tambah_pelanggan.php';</script>";
    }   elseif (empty($telefon)) {
        echo "<script> alert('telefon tidak boleh kosong');location.href='tambah_pelanggan.php';</script>";
    } else {
        include "koneksi.php";
        $insert = mysqli_query($conn, "insert into pelanggan(nama, alamat, telp) value ('" . $nama . "','" . $alamat . "','" . $telefon . "')") or
            die(mysqli_error($conn));
            if ($insert) {
            echo "<script>alert('sukses menambahkan');location.href='tambah_pelanggan.php';</script>";
            } else {
            echo "<script>alert('Gagal menambahkan');location.href='tambah_pelanggan.php';</script>";
            }
    }
}
?>