<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
        crossorigin="anonymous">
</head>
<body>
    <div class="controller"> 
        <h3>Tambah Produk</h3> 
            <form action="proses_tambah_produk.php" method="post">
                <labe>Nama Produk</labe><br>
                <input type="text" name="nama_produk" id="" placeholder="masukkan nama produk" class="form-control" required><br>
                <label for="">Deskripsi</label><br>
                <textarea name="deskripsi" id="" cols="30" rows="10" class="form-control"></textarea><br>
                <label for="">Harga</label><br>
                <input type="number" name="harga" placeholder="masukkan harga" class="form-control" required><br>
                <label for="">Foto Produk</label><br>
                <input type="file" name="foto_produk" id="" class="form-control" required><br>
                <input type="submit" name="submit" value="Kirim" class="btn btn-primary">
                <br><br>
          </form>
          <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
            crossorigin="anonymous">
        </script>
    </div>
</body>
</html>