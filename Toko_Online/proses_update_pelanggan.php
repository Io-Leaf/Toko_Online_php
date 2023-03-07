<?php
if ($_POST) {
    $id_pelanggan = $_POST['id_pelanggan'];
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $telfon = $_POST['telpon'];

    if (empty($nama)) {
        echo "<script> alert ('nama pelanggan tidak boleh kosong');location.href='tampil_pelanggan.php';</script>";
    } else if (empty($alamat)) {
        echo "<script> alert ('alamat tidak boleh kosong');location.href='tampil_pelanggan.php';</script>";
    } else if (empty($telfon)) {
        echo "<script> alert ('telfon tidak boleh kosong');location.href='tampil_pelanggan.php';</script>";
    } else {
        include "koneksi.php";
        $update = mysqli_query($conn, "update pelanggan set nama = '" . $nama . "', alamat = '" . $alamat . "', telp = '" . $telfon . "' where id_pelanggan = '" . $id_pelanggan . "'") or
            die(mysqli_error($conn));
        if ($update) {
            echo "<script>alert('sukses update pelanggan');location.href = 'tampil_pelanggan.php';</script>";
        } else {
            echo "<script>alert('gagal update pelanggan');location.href = 'update_pelanggan.php?id_pelanggan=" . $id_pelanggan . "';</script>";
        }

    }
}
     

    
?>