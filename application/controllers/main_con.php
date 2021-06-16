<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class main_con extends CI_Controller {

	public function __construct()
 	{
		 parent::__construct();
		 $this->load->model("main_model");
	}

	public function index()
	{
		$this->load->view('page_landing');
		$this->load->view('footer');
	}

	public function login()
	{
		$this->load->view('page_login');
	}
	public function regis()
	{
		$this->load->view('page_regis');
	}

	public function about()
	{
		$this->load->view('header');
		$this->load->view('page_about');
	}

	public function login_admin() {
		$data = ['username' => $this->input->post('username'), 'password' => $this->input->post('password')];
		if ($this->main_model->login($data)) {
			$this->session->set_userdata('username', $data['username']);
			redirect('index.php/main_con/index');
		}
		else {
			$this->load->view('page_login', ['error_message' => 'Username atau Password salah!']);
		}
	}

	public function regis_admin() {
		$data = ['username' => $this->input->post('username'), 'password' => $this->input->post('password')];
		if ($this->main_model->regis($data)) {
			$this->session->set_userdata('username', $data['username']);
			redirect('index.php/main_con/index');
		}
		else {
			$this->load->view('page_regis', ['error_message' => 'registrasi gagal']);
		}
	}
	public function logout() {
		$this->session->unset_userdata('username');
		redirect('index.php/main_con/index');
	}
}
