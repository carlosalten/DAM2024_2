<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;


class Piloto extends Model
{
    use HasFactory;
    protected $table = 'pilotos';
    public $timestamps = false;

    public function equipo():BelongsTo{
        return $this->belongsTo(Equipo::class);
    }
}
