<?php

    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        // Tangkap data yang dikirimkan melalui formulir
        if (isset($_POST['rating']) && isset($_POST['deskripsi'])) {
            $rating = mysqli_real_escape_string($koneksi, $_POST['rating']);
            $deskripsi = mysqli_real_escape_string($koneksi, $_POST['deskripsi']);
            $id_user = $_SESSION['user']['id_user'];

            // Simpan ulasan ke database
            $query = mysqli_query($koneksi, "INSERT INTO ulasan (id_user, id_buku, rating, ulasan) VALUES ('$id_user', '$id_buku', '$rating', '$deskripsi')");

            if ($query) {
                echo '<script>alert("Ulasan berhasil ditambahkan"); window.location.href="detail_buku.php?id=' . $id_buku . '"; </script>';
            } else {
                echo '<script>alert("Gagal menambahkan ulasan");</script>';
            }
        } else {
            echo '<script>alert("Form tidak lengkap");</script>';
        }
    }
?>

<h1 class="mt-4">Ulasan Buku</h1>
<br>
<div class="row">
    <div class="col-md-12">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <tr>
                <th>No</th>
                <th>User</th>
                <th>Buku</th>
                <th>Ulasan</th>
                <th>Rating</th>
                <!-- <th>Aksi</th> -->
            </tr>
            <?php
            $i = 1;
            $query = mysqli_query($koneksi, "SELECT * FROM ulasan LEFT JOIN user on user.id_user = ulasan.id_user LEFT JOIN buku on buku.id_buku = ulasan.id_buku");
            while ($data = mysqli_fetch_array($query)) {
            ?>
                <tr>
                    <td><?php echo $i++; ?></td>
                    <td><?php echo $data['nama']; ?></td>
                    <td><?php echo $data['judul']; ?></td>
                    <td><?php echo $data['ulasan']; ?></td>
                    <td><?php echo $data['rating']; ?></td>
                    <!-- <td>
                                <!-- <a href="?page=kategori_ubah&&id=<?php echo $data['id_ulasan']; ?>" class="btn btn-info">Ubah</a> -->
                    <!-- <a onclick="return confirm('Apakah Anda ingin menghapus Ulasan ini?');" href="?page=ulasan_hapus&&id=<?php echo $data['id_ulasan']; ?>" class="btn btn-danger">Hapus</a> -->
                    </td>
                </tr>
            <?php
            }
            ?>
        </table>
    </div>
</div>
