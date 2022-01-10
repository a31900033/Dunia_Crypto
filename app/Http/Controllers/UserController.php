<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use GuzzleHttp\Promise\Create;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function Register()
    {
        return view('register');
    }

    public function Store_regist(Request $request)
    {
        $password = Hash::make($request->password);
        User::create([
            'name' => $request->name,
            'username' => $request->username,
            'password' => $password
        ]);

        return redirect('/login')->with('success', 'Akun berhasil dibuat');
    }

    public function Login()
    {
        return view('login');
    }

    public function Auth(Request $request)
    {
        $credentials = $request->validate([
            'username' => 'required',
            'password' => 'required'
        ]);

        if(Auth::attempt($credentials)){
            $request->session()->regenerate(); 
            
            return redirect()->intended('/dashboard');
        }

        return back()->with('loginError', 'Login Gagal!');
    }

    public function Logout(Request $request){
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
