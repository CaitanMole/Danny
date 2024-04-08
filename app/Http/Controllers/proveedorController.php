<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePersonaRequest;
use App\Http\Requests\UpdateProveedoreRequest;
use App\Models\Documento;
use App\Models\Persona;
use App\Models\Proveedore;
use Exception;
use Illuminate\Support\Facades\DB;

class proveedorController extends Controller
{
    function __construct()
    {
        $this->middleware('permission:ver-proveedore|crear-proveedore|editar-proveedore|eliminar-proveedore', ['only' => ['index']]);
        $this->middleware('permission:crear-proveedore', ['only' => ['create', 'store']]);
        $this->middleware('permission:editar-proveedore', ['only' => ['edit', 'update']]);
        $this->middleware('permission:eliminar-proveedore', ['only' => ['destroy']]);
    }
    
    public function index()
    {
        $proveedores = Proveedore::with('persona.documento')->get();
        return view('proveedore.index',compact('proveedores'));
    }


    public function create()
    {
        $documentos = Documento::all();
        return view('proveedore.create',compact('documentos'));
    }

   
    public function store(StorePersonaRequest $request)
    {
        try {
            DB::beginTransaction();
            $persona = Persona::create($request->validated());
            $persona->proveedore()->create([
                'persona_id' => $persona->id
            ]);
            DB::commit();
        } catch (Exception $e) {
            DB::rollBack();
        }

        return redirect()->route('proveedores.index')->with('success', 'Proveedor registrado');
    }

    
    public function show(string $id)
    {
        //
    }

    
    public function edit(Proveedore $proveedore)
    {
        $proveedore->load('persona.documento');
        $documentos = Documento::all();
        return view('proveedore.edit',compact('proveedore','documentos'));
    }

   
    public function update(UpdateProveedoreRequest $request, Proveedore $proveedore)
    {
        try{
            DB::beginTransaction();

            Persona::where('id',$proveedore->persona->id)
            ->update($request->validated());

            DB::commit();
        }catch(Exception $e){
            DB::rollBack();
        }

        return redirect()->route('proveedores.index')->with('success','Proveedor editado');
    }

    public function destroy(string $id)
    {
        $message = '';
        $persona = Persona::find($id);
        if ($persona->estado == 1) {
            Persona::where('id', $persona->id)
                ->update([
                    'estado' => 0
                ]);
            $message = 'Proveedor eliminado';
        } else {
            Persona::where('id', $persona->id)
                ->update([
                    'estado' => 1
                ]);
            $message = 'Proveedor restaurado';
        }

        return redirect()->route('proveedores.index')->with('success', $message);
    }
}
