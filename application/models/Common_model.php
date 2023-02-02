<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Common_model extends CI_Model {

    public function select($where = array(), $table = "",$fields=""){
        if(!empty($where) && $fields == ""){
            $this->db->select('*');
            $this->db->from($table);            
            $this->db->where($where);            
            $res = $this->db->get();
           
        }
        if(empty($where) && $fields == ""){
            $this->db->select('*');
            $this->db->from($table);
            $res = $this->db->get();
        }
        if($where != null && $fields != ""){
            $this->db->select($fields);
            $this->db->from($table);
            $this->db->where($where);
            $res = $this->db->get();
        }
        if($where == null && $fields != ""){
            $this->db->select($fields);
            $this->db->from($table);
            $res = $this->db->get();
        }

        return $res->result_array();
    }
    

    public function update($where = array(),$table = "",$data = ""){
        $this->db->where($where);
        $this->db->update($table,$data);
    }
    public function save($data = array(),$table = ""){
        return $this->db->insert($table,$data);
    }
    public function save_return_id($data=[], $table){
      
        $this->db->insert($table,$data);
        return $this->db->insert_id();
    }
    public function delete($where=array(),$table){
        $this->db->where($where);
        $this->db->delete($table);
    }
    public function random_strings($length_of_string)
    {
        $str_result = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
        return substr(str_shuffle($str_result),0, $length_of_string);
    }

    public function query($query=""){
        return $this->db->query($query)->result();
    }

    public function sendMail($email="",$subject="",$message=""){

        $jayParsedAry = [
			"Messages" => [
				  [
					 "From" => [
						"Email" => "info@winlaxy.com", 
						"Name" => "Winlaxy" 
					 ], 
					 "To" => [
						   [
							  "Email" => $email, 
						   ] 
						], 
					 "Subject" => $subject, 
					 "HTMLPart" => $message, 
				  ] 
			   ] 
		 ]; 
         $apiKey = "52d250f5d3e5e0113718d3ff8fc547c8";
         $secretKey = "8eea086bec55166d867df858e6bdaa58";


        $url = "https://api.mailjet.com/v3.1/send";
		$params = json_encode($jayParsedAry); 
		$method = "POST";

        $ch = curl_init();
        if ($method == 'POST') {
            curl_setopt($ch, CURLOPT_POST, true);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $params);
        } else {
            $url .= '?'.http_build_query($params);
        }

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 3);
        curl_setopt($ch, CURLOPT_TIMEOUT, 5);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_USERPWD, $apiKey.':'.$secretKey);
		$headers = [
			'Content-Type: application/json',
		];
		
		curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

        $response = curl_exec($ch);
        // var_dump($response);
        curl_close($ch);
    }
}