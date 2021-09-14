<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
    public function home(){
        $titre = 'Hello Home Page';
        return view('pages.index')->with('title',$titre);
    }
    public function about(){
        return view('pages.about');
    }
    public function service(){
        $data = [
                'title' => 'Our services',
                'services' => [
                    'programing','design','redaction web'
                ]
            ];
        return view('pages.service')->with($data);
    }
}
