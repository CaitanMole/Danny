<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RegistroSemanal extends Model
{
    use HasFactory;

    protected $table = 'registrosemanal'; // Especifica el nombre de la tabla si es diferente al esperado

    protected $fillable = ['inicio_semana', 'ingresos']; // Especifica los campos que pueden ser asignados en masa
}