<?php

namespace App\Http\Controllers\WaliKelas;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Kelas;
use App\PelanggaranSiswa;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class CatatanPelanggaranController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = 'Data Pelanggaran';
        $tapel = Tapel::findorfail(session()->get('tapel_id'));
        $guru = Guru::where('user_id', Auth::user()->id)->first();
        $id_kelas_diampu = Kelas::where('tapel_id', $tapel->id)->where('guru_id', $guru->id)->get('id');
        $id_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get('id');

        $data_pelanggran_siswa = PelanggaranSiswa::whereIn('anggota_kelas_id', $id_anggota_kelas)->get();
        $data_anggota_kelas = AnggotaKelas::whereIn('kelas_id', $id_kelas_diampu)->get();

        return view('walikelas.catatan_pelanggaran.index', compact('title', 'data_pelanggran_siswa', 'data_anggota_kelas'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'anggota_kelas_id' => 'required',
            'kejadian' => 'required',
            'solusi' => 'required',
        ]);
        if ($validator->fails()) {
            return back()->with('toast_error', $validator->messages()->all()[0])->withInput();
        } else {
            $pelanggaran = new PelanggaranSiswa([
                'anggota_kelas_id' => $request->anggota_kelas_id,
                'kejadian' => $request->kejadian,
                'solusi' => $request->solusi,
            ]);
            $pelanggaran->save();
            return back()->with('toast_success', 'Data pelanggaran siswa berhasil ditambahkan');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pelanggaran = PelanggaranSiswa::findorfail($id);
        try {
            $pelanggaran->delete();
            return back()->with('toast_success', 'Data pelanggaran siswa berhasil dihapus');
        } catch (\Throwable $th) {
            return back()->with('toast_error', 'Data elanggaran siswa tidak dapat dihapus');
        }
    }
}
