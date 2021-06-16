<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class rs_model extends CI_Model {
	#untuk get database rumah sakit dari Data base
	public function get_rs()
	{
		$this->db->select('*');
		$this->db->from('rumah_sakit');
		return $this->db->get()->result();
    }

    // untuk add RS dari Database
	public function add_rs($data)
	{
		return $this->db->insert("rumah_sakit", $data);
    }

    // untuk edit RS dari database
	public function edit_rs($id_rs, $data)
	{
		$this->db->set($data);
		$this->db->where('id_rs', $id_rs);
		return $this->db->update('rumah_sakit');
	}
    
    // delete rs
	public function delete_rs($id_rs)
	{
		return $this->db->delete("rumah_sakit", array("id_rs" => $id_rs));
	}
}