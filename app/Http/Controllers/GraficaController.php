<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use App\Models\Venta;

class GraficaController extends Controller
{
    public function index()
    {
        // Obtener la fecha del día actual
        $fechaActual = Carbon::now()->toDateString();

        // Consultar todas las ventas del día actual
        $ventasDelDia = Venta::whereDate('created_at', $fechaActual)->get();

        return view('panel.index', ['ventasDelDia' => $ventasDelDia]);
    }

    public function ingresos()
    {
        // Obtener los datos de ingresos solo para las ventas con estado = 1
        $ventasDelDia = Venta::selectRaw('DATE(created_at) as fecha, SUM(total) - 350 as total')
                        ->where('estado', 1)
                        ->groupBy('fecha')
                        ->orderBy('fecha')
                        ->get();

        // Formatear los datos para que coincidan con el formato esperado por la gráfica
        $data = $ventasDelDia->map(function ($venta) {
            return [
                "inicio_semana" => $venta->fecha,
                "ingresos" => $venta->total,
            ];
        });

        return response()->json($data);
    }
}
