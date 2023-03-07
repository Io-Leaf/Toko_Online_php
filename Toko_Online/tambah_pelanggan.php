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
        <h3>Tambah Pelanggan</h3>
        <form action="proses_tambah_pelanggan.php" method="post">
            <label for="">Nama:</label>
            <input type="text" name="nama" value="" placeholder="Masukkan Nama" class="form-control" required><br><br>
            <label for="">Alamat:</label>
            <input type="text" name="alamat" value="" placholder="Masukkan Alamat Anda" class="form-control" required><br><br>
            <label for="">Nomor Telefon:</label>
            <input type="number" name="telepon" value="" placeholder="Masukkan Telefon" class="form-control" required><br><br>
            <input type="submit" name="submit" value="kirim" class="btn btn-primary">
        </form>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous">
        </script>
    </body>
</html>