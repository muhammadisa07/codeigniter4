<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {

        $data = [
            'title' => 'Home'
        ];
        return view('pages/home', $data);
    }
    public function about()
    {
        $data = [
            'title' => 'About Me'
        ];
        return view('pages/about', $data);
    }
    public function contact()
    {
        $data = [

            'title' => 'Contact',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jalan Abc No.123',
                    'kota' => 'Tegal'
                ],
                [
                    'tipe' => 'Kantor',
                    'alamat' => 'Jalan def No.456',
                    'kota' => 'Tegal'
                ]
            ]

        ];
        return view('pages/contact', $data);
    }
}
