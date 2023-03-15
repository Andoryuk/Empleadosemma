<?php

namespace App\Http\Controllers;
use App\Models\Usuario;
use App\Models\Docente;
use Illuminate\Http\Request;


class LoginController extends Controller
{
    public function login (Request $request)
    {
    $this->validateLogin($request);

    if (Auth::attempt ($request->only('email','password'))) {
        return response ()->json ([
            'token' => $request->user()->createToken($request->name)->plainTextToken,
            'message' => 'Success'
            
        ]);
    }
    return response()->json ([
        'message' => 'Unauthenticated'
    ], 401);

    }

    public function validarLogin(Request $request){
        return $request ->validate([
            'email' => 'requiered|email',
            'password' => 'requiered',
            'name' => 'requiered',

        ]);
    }
}


