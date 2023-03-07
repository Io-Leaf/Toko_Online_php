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
    <h3>Tambah Petugas</h3>
    <form action="proses_tambah_petugas.php" method="post">
        <label for="">Nama Petugas:</label>
        <input type="text" name="nama_petugas" value="" placeholder="masukkan nama" class="form-control" required> <br><br>
        <label for="">Username:</label>
        <input type="text" name="username" value="" placeholder="masukkan username" class="form-control" required><br><br>
        <label for="">Password:</label>
        <input type="password" name="password" value="" placeholder="masukkan password" class="form-control" reqiured><br><br>
        <label for="">Level:</label>
        <input type="text" name="level" value="" placeholder="masukkan level" class="form-control" reqiured><br><br>
        <input type="submit" name="submit" value="kirim" class="btn btn-primary"><br><br>
    </form>
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous">
        </script>
    </body>
</html>