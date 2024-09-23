<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Equipo extends Model
{
    use HasFactory, SoftDeletes;
    protected $table = 'equipos';
    public $timestamps = false;

    protected $hidden = ['deleted_at'];//no mostrar este dato

    public function pilotos():HasMany{
        return $this->hasMany(Piloto::class);
    }
}
