<h1 class="mt-4 ms-3">Pinjaman</h1>
<br>
<div class="row">
    <div class="col-md-12">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
            <tr>
                <th>No</th>
                <th>User</th>
                <th>Gambar</th>
                <th>Buku</th>
                <th>Tanggal Peminjaman</th>
                <th>Tanggal Pengembalian</th>
                <th>Status Peminjaman</th>
                <th>Aksi</th>
                
            </tr>
            <?php
            // require("koneksi.php");
            $i = 1;
                $query = mysqli_query($koneksi, "SELECT*FROM peminjaman LEFT JOIN user on user.id_user = peminjaman.id_user LEFT JOIN buku on buku.id_buku = peminjaman.id_buku");
                while($data = mysqli_fetch_array($query)){
                    ?>
                        <tr>
                            <td><?php echo $i++; ?></td>
                            <td><?php echo $data['nama']; ?></td>
                            <td><img style="width: 100px;" src="assets/upload/<?php echo $data['cover']; ?>"></td>
                            <td><?php echo $data['judul']; ?></td>
                            <td>
                            <input type="disabled" id="tanggal_peminjaman" style="border:none;background-color:#fff;" class="form-control" value="<?php echo date('Y-m-d');?>" name="tanggal_peminjaman" disabled>
                            </td>
                            <td><?php echo $data['tanggal_pengembalian']; ?></td>
                            <td><?php echo $data['status_peminjaman']; ?></td>
                            <td>
                                
                            <a href="peminjaman_admin_ubah.php?id=<?php echo $data['id_peminjaman']; ?>" class="btn btn-info mb-1">Ubah</a>

                            <a onclick="return confirm('Apakah Anda ingin menghapus Buku ini?');" href="peminjaman_admin_hapus.php?id=<?php echo $data['id_peminjaman']; ?>" class="btn btn-info text-white" style="background-color: red; border-color:red;">Hapus</a>
                            </td>
                        </tr>
                    <?php
                }
            ?>
        </table>
    </div>
</div>