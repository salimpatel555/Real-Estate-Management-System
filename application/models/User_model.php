<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {
	public function user_reg($userdata){
		$this->db->insert('tbl_users',$userdata);
		return $this->db->insert_id();
	}


	public function login($email,$password){
		$this->db->where('email',$email);
		$this->db->where('password',$password);
		$q = $this->db->get('tbl_users');
		if($q->num_rows()== 1){
		  return $q->row();     
		}
		return false;
	}
	

	public function contactfrm($data){
		$this->db->insert('contact',$data);
		return $this->db->insert_id();
	}

// Function To Fetch Selected Users Record
	public function getUserByid($id){
		// $q = $this->db->get('tbl_users');
		// return $q->row();
		$this->db->select('*');
		$this->db->from('tbl_users');
		$this->db->where('id',$id);
		$query = $this->db->get();
		return $query->row();
		
	}

	public function update_user($id,$data){
		$this->db->where('id',$id);
		$query = $this->db->update('tbl_users',$data);
	}


	public function user_list($limit,$offset){
		// $this->db->select('*');
        // $this->db->from('tbl_users');
		$this->db->order_by('id','desc');
		$this->db->limit($limit,$offset);
		$query = $this->db->get('tbl_users');
		return $query->result();
	}

	public function num_rows(){
		$this->db->select('*');
		// $this->db->limt($limit, $offset);
		$query = $this->db->get('tbl_users');
		return $query->num_rows();
	}

	public function add_user($data){
		$this->db->insert('tbl_users',$data);
		return $this->db->insert_id();
	}

	public function user_delete($id){
		$this->db->where('id',$id);
		$this->db->delete('tbl_users');

	}

}
