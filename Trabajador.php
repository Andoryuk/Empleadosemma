<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Trabajador extends Model
{
    use HasFactory;
    protected $fillable = [
        'userId',
        'nombre',
        'apellidoPaterno',
        'apellidoMaterno',
    ];
    public function getDescriptionAttribute ($value)
    {
        return substr ($value, 1, 100);
    }
    public function user ()
    {
        return $this->belongsTo(User::Class);
    }
}
