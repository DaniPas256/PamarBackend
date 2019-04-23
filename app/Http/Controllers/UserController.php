<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Validator;
use View;
use Input;
use Redirect;
use Session;

class UserController extends Controller
{
    public function showLogin()  {
        return View::make('login');
    }

    public function login(Request $request){
        $rules = array(
            'email'    => 'required|email',
            'password' => 'required|alphaNum|min:3'
        );

        $validator = Validator::make(Input::all(), $rules);

        if ($validator->fails()) {
            return Redirect::to('login')
                ->withErrors($validator) 
                ->withInput(Input::except('password'));
        } else {

            $userdata = array(
                'email'     => Input::get('email'),
                'password'  => Input::get('password')
            );

            if ( Auth::attempt($userdata) ) {
                session()->put('current_user',Auth::user());
                return redirect('/index');
            } else {        
                return Redirect::to('login');
            }
        }
    }

    public function logout() {
        Auth::logout();
        return Redirect::to('login');
    }
}
