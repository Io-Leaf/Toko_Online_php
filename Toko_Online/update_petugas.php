<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <link
                href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
                crossorigin="anonymous">
    </head>
    <body>
    
    <?php
                include "koneksi.php";
                    $qry_get_petugas=mysqli_query($conn,"select * from petugas where id_petugas = '".$_GET['id_petugas']."'");
                    $dt_petugas=mysqli_fetch_array($qry_get_petugas);
            ?>
                <h3>Ubah Petugas</h3>
                <form action="proses_update_petugas.php" method="post">
                    <input type="hidden" name="id_petugas" value="<?=$dt_petugas['id_petugas']?>"><br>
                        nama petugas :
                    <input type="text" name="nama_petugas" value="<?=$dt_petugas['nama_petugas']?>" class="form-control"><br>
                        username :
                    <input type="text" name="username" value="<?=$dt_petugas['nama_petugas']?>" class="form-control"><br>   
                        password :
                    <input type="password" name="password" value="<?=$dt_petugas['password']?>" class="form-control"><br>
                        level :<br>
                    <input type="text" name="level" value="<?=$dt_petugas['level']?>"><br><br>
                    <input type="submit" name="simpan" value="Ubah Petugas" class="btn btn-primary"><br><br>

            </form>
                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
                    crossorigin="anonymous"></script>
    </body>
</html>