<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function show(string $id){
        return view('homeview',['id'=>$id]);
        
    }
    
    public function showUser(){
        return view('userview');
    }
}
