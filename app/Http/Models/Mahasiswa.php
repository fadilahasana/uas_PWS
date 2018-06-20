<?php
namespace App\Http\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Mahasiswa extends Model
{
  use SoftDeletes;

  protected $primaryKey = 'nim';
  public $incrementing = false;

  protected $fillable = [
    'nim',
    'nama',
    'alamt',
    'notelp',
    'jenkel',
    'jurusan',
    'fakultas',
    'status'
  ];

  // protected $guarded = ['Id'];
}
