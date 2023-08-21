<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class PelanggaranSiswa extends Model
{
    protected $table = 'catatan_pelanggaran';
    protected $fillable = [
        'anggota_kelas_id',
        'kejadian',
        'solusi',
        'created_at',
        'updated_at'
    ];

    public function anggota_kelas()
    {
        return $this->belongsTo('App\AnggotaKelas');
    }
}
