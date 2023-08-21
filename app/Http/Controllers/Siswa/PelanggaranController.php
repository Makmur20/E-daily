<?php

namespace App\Http\Controllers\Siswa;

use App\AnggotaKelas;
use App\Guru;
use App\Http\Controllers\Controller;
use App\Siswa;
use App\Kelas;
use App\PelanggaranSiswa;
use App\Tapel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;

class PelanggaranController extends Controller
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

        // $data_pelanggran_siswa = DB::table('catatan_pelanggaran')
        //     ->join('anggota_kelas', 'catatan_pelanggaran.anggota_kelas_id', '=', 'anggota_kelas.id')
        //     ->join('anggota_kelas', 'catatan_pelanggaran.anggota_kelas_id', '=', 'anggota_kelas.id')
        //     ->select('catatan_pelanggaran.*', 'anggota_kelas.siswa_id')
        //     ->where('anggota_kelas.siswa_id',)
        //     ->get();

        $siswa = Siswa::where('user_id', Auth::user()->id)->first();

        $data_id_kelas = Kelas::where('tapel_id', session()->get('tapel_id'))->get('id');
        $anggota_kelas = AnggotaKelas::whereIn('kelas_id', $data_id_kelas)->where('siswa_id', $siswa->id)->first();
        if (is_null($anggota_kelas)) {
            return back()->with('toast_warning', 'Anda belum masuk ke anggota kelas');
        } else {
            $data_pelanggaran_siswa = PelanggaranSiswa::where('anggota_kelas_id', $anggota_kelas->id)->get();
            return view('siswa.catatan_pelanggaran.index', compact('title', 'siswa','data_pelanggaran_siswa'));
    
        }
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
