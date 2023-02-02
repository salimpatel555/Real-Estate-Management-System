<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_model extends CI_Model{
    public function admin_log($admin_email,$password){
		$this->db->where('admin_email',$admin_email);
		$this->db->where('password',$password);
		$q = $this->db->get('admin');
		if($q->num_rows()== 1){
		  return $q->row();     
		}
		return false;
	}

	
}