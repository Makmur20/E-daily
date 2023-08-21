@include('layouts.main.header')
@include('layouts.sidebar.siswa')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0 text-dark">{{$title}}</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item "><a href="{{ route('dashboard') }}">Dashboard</a></li>
            <li class="breadcrumb-item active">{{$title}}</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <!-- ./row -->
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">{{$title}}</h3>
              <div class="card-tools">
              </div>
            </div>
            <div class="card-body">
               <div class="table-responsive">
                <table class="table table-bordered table-striped">
                  <thead class="bg-info">
                    <tr>
                      <th style="width: 5%;">No</th>
                      <th style="width: 5%;">NIS</th>
                      <th style="width: 20%;">Nama Siswa</th>
                      <th style="width: 5%;">L/P</th>
                      <th style="width: 5%;">Kelas</th>
                      <th style="width: 25%;">Kejadian</th>
                      <th>Solusi</th>
                      <th>Tanggal</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $no = 0; ?>
                    @foreach($data_pelanggaran_siswa as $pelanggaran)
                    <?php $no++; ?>
                    <tr>
                      <td>{{$no}}</td>
                      <td>{{$pelanggaran->anggota_kelas->siswa->nis}}</td>
                      <td>{{$pelanggaran->anggota_kelas->siswa->nama_lengkap}}</td>
                      <td>{{$pelanggaran->anggota_kelas->siswa->jenis_kelamin}}</td>
                      <td>{{$pelanggaran->anggota_kelas->kelas->nama_kelas}}</td>
                      <td>{{$pelanggaran->kejadian}}</td>
                      <td>{{$pelanggaran->solusi}}</td>
                      <td>{{$pelanggaran->updated_at}}</td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
              </div>
            </div>
          </div>
          <!-- /.card -->
        </div>

      </div>
      <!-- /.row -->
    </div>
    <!--/. container-fluid -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->

@include('layouts.main.footer')