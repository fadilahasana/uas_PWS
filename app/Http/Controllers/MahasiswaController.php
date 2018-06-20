<?php

namespace App\Http\Controllers;

use App\Http\Models\Mahasiswa;
use App\Http\Transformers\TransformerMahasiswa;
use Dingo\Api\Http\Request;
use Dingo\Api\Routing\Helpers;
use Mockery\Exception;

class MahasiswaController extends Controller
{
    use Helpers;

    public function index(){
      $a = Mahasiswa::all();

      return $this->response->collection($a, new TransformerMahasiswa);
    }

    public function show($nim){
      try {
        $a = Mahasiswa::find($nim);
      } catch (Exception $e) {
        return $e;
      }

      if ($a) {
        // code...
        return $this->response->item($a, new TransformerMahasiswa);
      } else {
        // code...
        return $this->response->errorNotFound('Data Tidak Ditemukan');
      }

    }

    public function store(Request $request){
      
      $data = $request->only([
        'nim',
        'nama',
        'alamt',
        'notelp',
        'jenkel',
        'prodi',
        'fakultas',
        'status',
    
	]);

      // buat masuk ke database
      $a = new Mahasiswa([
        'nim' => $data['nim'],
        'nama' => $data['nama'],
        'alamt' => $data['alamt'],
        'notelp' => $data['notelp'],
        'jenkel' => $data['jenkel'],
        'jurusan' => $data['prodi'],
        'fakultas' => $data['fakultas'],
        'status' => $data['status'],
      ]);

      // insert ke db
      try {
        $a->save();
      } catch (Exception $e) {
        $this->response->error($e,500);
      }

      // kirim response berhasil insert, status code 200
      $this->response->created();
    }

    public function update($nim, Request $request){
      try {
        $a = Mahasiswa::find($nim);
      } catch (Exception $e) {
        $this->response->error($e,500);
      }

      if ($a) {
        // code...
        $data = $request->only([
          'nama',
          'alamt',
          'notelp',
          'jenkel',
          'prodi',
          'fakultas',
          'status',
        ]);

        $a->fill([
          'nama' => $data['nama'],
          'alamt' => $data['alamt'],
          'notelp' => $data['notelp'],
          'jenkel' => $data['jenkel'],
          'jurusan' => $data['prodi'],
          'fakultas' => $data['fakultas'],
          'status' => $data['status'],
        ]);
        try {
          $a->update();
        } catch (Exception $e) {
          $this->response->error($e,500);
        }
        // $this->response->error('',200);
        return response('Data Berhasil Disimpan');
      } else {
        $this->response->errorNotFound('Data Tidak Ditemukan');
      }
    }

    public function destroy($nim){
      try {
        $a = Mahasiswa::find($nim);
      } catch (Exception $e) {
        $this->response->error($e,500);
      }

      if ($a) {
        try {
          $a->delete();
        } catch (Exception $e) {
          $this->response->error($e,500);
        }

        $this->response->noContent();
      } else {
        $this->response->errorNotFound('Data Tidak Ditemukan');
      }
    }
}
