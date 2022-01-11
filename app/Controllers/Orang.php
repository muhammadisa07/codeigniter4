<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\OrangModel;

class Orang extends BaseController
{
    protected $orangModel;
    public function __construct()
    {
        $this->orangModel = new OrangModel();
    }

    public function index()
    {

        $current_page = $this->request->getVar('page_orang') ? $this->request->getVar('page_orang') : 1;
        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $this->orangModel->search($keyword);
        } else {
            $orang = $this->orangModel;
        }

        $data = [
            'title' => 'Daftar Orang',
            // 'orang' => $this->orangModel->findAll()
            'orang' => $this->orangModel->paginate(7, 'orang'),
            'pager' => $this->orangModel->pager,
            'currentPage' => $current_page
        ];

        return view('orang/index', $data);
    }
}
