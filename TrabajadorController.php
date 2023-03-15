<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TrabajadorController extends Controller
{
    
    public function index()
    {
        return TrabajadorResource::collection(Trabajador::latest()->paginate());
    }

    public function show(Trabajador $trabajador)
    {
        return new TrabajadorResource($trabajador);

    }

    public function destroy(Trabajador $trabajador)
    {
        if($trabajador->delete()){
            return response()->json([
                'message' => 'Success'
            ],204);
        }
        return response()->json([
            'message' => 'Not fund'
        ],404);
    }
}

