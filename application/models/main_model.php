<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class main_model extends CI_Model {
	public function login($data) {
		return $this->db->get_where('profile', $data)->num_rows() == 1;
	}
	public function regis($data) {
		return $this->db->insert('profile', $data);
	}
}