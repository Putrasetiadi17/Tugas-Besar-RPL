<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class rs_con extends CI_Controller {
	// Untuk meload model RS
	public static $instance;

	public function __construct()
 	{
		 parent::__construct();
		 $this->load->model("rs_model");
    }
    
	public static function instance()
	{
		if (!self::$instance)
		{
			self::$instance = new rs_con();
		}

		return self::$instance;
	}

	//untuk memanggil view header page rs data rs ,dan footer nya full satu halaman
    public function index()
	{
		$data_rs = $this->rs_model->get_rs();
		$this->load->view('header');
		$this->load->view('page_rs', ['data'=>$data_rs]);
		$this->load->view('footer');
    }
	// untuk add RS memasukan ke dalam databae dan meload modelnya lalu redirect page RS 
    public function add_rs()
	{
		$data = [
			"nama" => $this->input->post('nama', true),
			"provinsi" => $this->input->post('provinsi', true),
			"alamat" => $this->input->post('alamat', true),
			"no_telp" => $this->input->post('no_telp', true),
		];
		$this->rs_model->add_rs($data);
		redirect('index.php/rs_con/index');
	}
    //untuk edit RS DAN me return data RS dan mengembalikan data
    public function edit_rs()
	{
		$id_rs = $this->input->post('id_rs', true);
		$data = [
			"nama" => $this->input->post('nama', true),
			"provinsi" => $this->input->post('provinsi', true),
			"alamat" => $this->input->post('alamat', true),
			"no_telp" => $this->input->post('no_telp', true)
		];
		$this->rs_model->edit_rs($id_rs, $data);
		redirect('index.php/rs_con/index');
	}
	//untuk delete RS  berdasarkan id_rs ,delete dari model dan me redirect page RS 
    public function delete_rs($id_rs)
	{
		$this->rs_model->delete_rs($id_rs);
		redirect('index.php/rs_con/index');
    }
}