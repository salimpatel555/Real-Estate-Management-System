<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Property extends CI_Controller {
	public function __construct(){
		parent::__construct();
		if(!$this->session->userdata('user_sess')){
			$this->session->set_flashdata('error','Your session has been expired, please log in again.');
			redirect('login');
		}
		$this->load->library("pagination");
		$this->load->model('common_model');
		$this->load->model('User_model');

	}

	public function index(){
		$data['states'] = $this->common_model->select([],'states');
		$data['property_types'] = $this->common_model->select([],'tbl_property_types');
		$data['owner_types'] = $this->common_model->select([],'owner_types');
		$data['prices_conditions'] = $this->common_model->select([],'prices_conditions');
		$data['property_diamention'] = $this->common_model->select([],'property_diamention');
		$data['wizard_js'] = 1;
		// echo '<pre>'; print_r($data); exit;
		$this->load->view('customer/property_listing',$data);
	}

	public function dashboard(){		
		// $data['projects_list'] = $this->common_model->query('SELECT p.*, pt.property_type, ot.name AS owner_type, st.name AS state, ct.city, pd.name AS property_diamention_n FROM tbl_listed_properties p LEFT JOIN owner_types ot ON p.owner_type = ot.id LEFT JOIN tbl_property_types pt ON p.property_type = pt.id LEFT JOIN states st ON p.state_id = st.id LEFT JOIN cities ct ON p.city_id = ct.id LEFT JOIN property_diamention pd ON p.property_diamention_id = pd.id WHERE p.property_status = 1 AND user_id='.$this->session->userdata('user_sess')['id']);
		$token__current_prices = $this->common_model->select([],'token_rate')[0]['current_rate_inr'];
        
		$data['token_price'] = $token__current_prices;
		$data['projects_list'] = $this->common_model->query(
			'SELECT p.*, pt.property_type, ot.name 
			AS owner_type, st.name 
			AS state, ct.city, pd.name 
			AS property_diamention_n, 
			u.email 
			AS email
			FROM tbl_listed_properties p 
			LEFT JOIN owner_types ot 
			ON p.owner_type = ot.id 
			LEFT JOIN tbl_property_types pt 
			ON p.property_type = pt.id 
			LEFT JOIN states st 
			ON p.state_id = st.id 
			LEFT JOIN cities ct 
			ON p.city_id = ct.id 
			LEFT JOIN property_diamention pd 
			ON p.property_diamention_id = pd.id 
			LEFT JOIN tbl_users u 
			ON p.user_id = u.id 
			WHERE p.property_status != 0 AND p.user_id='.$this->session->userdata('user_sess')['id']
			);
		// echo '<pre>'; print_r($data); exit;
		$this->load->view('customer/dashboard',$data);
	}

	public function by_property_list(){
		$this->load->view('customer/by_property_list');
	}

	public function purchased_properties(){
		$data['projects_list'] = $this->common_model->query(
			'SELECT pl.*, pt.property_type, ot.name AS owner_type, st.name AS state, ct.city, pd.name AS property_diamention_n 
			FROM properties_logs pl 
			LEFT JOIN owner_types ot ON pl.owner_type = ot.id 
			LEFT JOIN tbl_property_types pt ON pl.property_type = pt.id 
			LEFT JOIN states st ON pl.state_id = st.id 
			LEFT JOIN cities ct ON pl.city_id = ct.id 
			LEFT JOIN property_diamention pd ON pl.property_diamention_id = pd.id 
			WHERE pl.buyer_user_id='.$this->session->userdata('user_sess')['id']);
		$data['wizard_js'] = 0;
		// echo '<pre>'; print_r($data); exit;

		$this->load->view('customer/purchased_properties',$data);
	
	}
	public function soldout_properties(){
		$data['projects_list'] = $this->common_model->query(
			'SELECT pl.*, pt.property_type, ot.name AS owner_type, st.name AS state, ct.city, pd.name AS property_diamention_n 
			FROM properties_logs pl 
			LEFT JOIN owner_types ot ON pl.owner_type = ot.id 
			LEFT JOIN tbl_property_types pt ON pl.property_type = pt.id 
			LEFT JOIN states st ON pl.state_id = st.id 
			LEFT JOIN cities ct ON pl.city_id = ct.id 
			LEFT JOIN property_diamention pd ON pl.property_diamention_id = pd.id 
			WHERE pl.seller_user_id='.$this->session->userdata('user_sess')['id']);
			$data['wizard_js'] = 0;

		$this->load->view('customer/soldout_properties',$data);
		// echo '<pre>'; print_r($data); exit;
	}

	public function get_cities(){
		$state_id = $this->input->get('state_id');
		$res_cities = $this->common_model->select(['state_id'=>$state_id],'cities');
		echo json_encode(['cities'=>$res_cities]);
	}

	public function projects_list(){
		$data['wizard_js'] = 0;
		// $data['all_listed_properties'] = $this->common_model->select(['property_status'=>1],'tbl_listed_properties');
		$token__current_prices = $this->common_model->select([],'token_rate')[0]['current_rate_inr'];
        
		$data['token_price'] = $token__current_prices;
		$data['projects_list'] = $this->common_model->query(
			'SELECT p.*, pt.property_type, ot.name 
			AS owner_type, st.name 
			AS state, ct.city, pd.name 
			AS property_diamention_n, 
			u.email 
			AS email
			FROM tbl_listed_properties p 
			LEFT JOIN owner_types ot 
			ON p.owner_type = ot.id 
			LEFT JOIN tbl_property_types pt 
			ON p.property_type = pt.id 
			LEFT JOIN states st 
			ON p.state_id = st.id 
			LEFT JOIN cities ct 
			ON p.city_id = ct.id 
			LEFT JOIN property_diamention pd 
			ON p.property_diamention_id = pd.id 
			LEFT JOIN tbl_users u 
			ON p.user_id = u.id 
			WHERE p.property_status != 0'
			);
		// echo '<pre>'; print_r($data); exit;
		$this->load->view('customer/projects_list',$data);
	}

	public function get_property(){

		
		$isExist_property = $this->common_model->select(['id'=>$this->input->get('id')],'tbl_listed_properties');
		
		if(empty($isExist_property)){
			$res['status'] = 0; 
			$res['message'] = 'Property not found!';
			echo json_encode($res);
			return;
		}
		
		$diamention_replace = str_replace('*', 'x', trim($isExist_property[0]['property_diamention']));
        $diamention_replace = str_replace('x', '*', trim($isExist_property[0]['property_diamention']));
		$explode_diamention = explode("*",$diamention_replace);
		
		if(isset($explode_diamention[0]) && isset($explode_diamention[1])){
			$property_diamention = $explode_diamention[0]*$explode_diamention[1];
		}else{
			$property_diamention = $isExist_property[0]['property_diamention'];
		}

		$token__current_prices = $this->common_model->select([],'token_rate')[0]['current_rate_inr'];
		
        $total_tokens_tobe_assigned =  (($property_diamention)*$isExist_property[0]['updated_per_sqft_price'])/$token__current_prices;

		$total_parts = $isExist_property[0]['in_parts']+$isExist_property[0]['soldout_parts'];
		
		$res['status'] = 1;
		$res['total_tokens'] = $total_tokens_tobe_assigned/$total_parts;
		$res['available_parts'] = $isExist_property[0]['in_parts'];
		$res['sqft'] = $property_diamention/$total_parts;
		echo json_encode($res);
		return;
	}

	public function submit_property_details(){

		$post = $this->input->post();
		// echo '<pre>'; print_r($post); exit;
		$files = $this->uploadImage($_FILES);
		$prepare_data = [];
		$prepare_data['user_id'] = $this->session->userdata('user_sess')['id'];
		$prepare_data['property_type'] = $post['property_type'];
		$prepare_data['owner_type'] = $post['owner_type'];
		$prepare_data['state_id'] = $post['select_state'];
		$prepare_data['city_id'] = $post['select_city'];
		$prepare_data['location'] = $post['address'];
		$prepare_data['area_in'] = $post['area_details_selectbox'];
		$prepare_data['property_diamention_id'] = $post['area_details_selectbox'];
		$prepare_data['property_diamention'] = $post['property_diamention_val'];
		$prepare_data['property_photos'] = $files;
		$prepare_data['expected_price'] = $post['expected_price'];
		$prepare_data['per_sqft_price'] = $post['expected_price'];
		$prepare_data['updated_per_sqft_price'] = $post['expected_price'];
		$prepare_data['price_terms'] = json_encode($post['price_terms']);
		$prepare_data['in_parts'] = $post['in_parts'];
		$this->common_model->save($prepare_data,'tbl_listed_properties');

		redirect('projects_list');
		// echo '<pre>'; print_r($post); exit;
		
	}



	public function buy_property(){
		$post = $this->input->post();
		
		$check_property = $this->common_model->select(['id'=>$post['propery_id'],'property_status'=>1],'tbl_listed_properties');

		if($check_property && $check_property[0]['in_parts'] < $post['parts']){
			$response['status'] = 0;
			$response['message'] = 'Parts not enough parts, available parts are '.$check_property[0]['in_parts'];
			echo json_encode($response);
			return;
		}

		if(empty($check_property)){
			$response['status'] = 0;
			$response['message'] = 'This property not available!';
			echo json_encode($response);
			return;
		}
	
		$buyer_uid = $this->session->userdata('user_sess')['id'];

		$decode_buyers_data = json_decode($check_property[0]['buyers_data'],TRUE);

		$id = md5(time()+rand());

		$prepare_buyer_data = [];
		$prepare_buyer_data['id'] = $id;
		$prepare_buyer_data['buyer_uid'] = $buyer_uid;
		$prepare_buyer_data['total_sqft'] = $post['sqft'];
		$prepare_buyer_data['tokens'] = $post['tokens'];
		$prepare_buyer_data['buying_parts'] = $post['parts'];
		$prepare_buyer_data['buying_price'] = $check_property[0]['updated_per_sqft_price'];
		$prepare_buyer_data['status'] = 0;
		$prepare_buyer_data['date_time'] = date('Y-m-d H:i:s');
		
		$decode_buyers_data[] = $prepare_buyer_data;

		$available_parts = $check_property[0]['in_parts'] - $post['parts'];
		
		$process_property_data = [];
		if($available_parts){
			$process_property_data['buyers_data'] = json_encode($decode_buyers_data);
			$process_property_data['in_parts'] = $available_parts;
			$process_property_data['soldout_parts'] = $post['parts']+$check_property[0]['soldout_parts'];
		}else{
			$process_property_data['buyers_data'] = json_encode($decode_buyers_data);
			$process_property_data['in_parts'] = $available_parts;
			$process_property_data['soldout_parts'] = $post['parts']+$check_property[0]['soldout_parts'];
			$process_property_data['property_status'] = 2;
		}
		$this->common_model->update(['id'=>$post['propery_id']],'tbl_listed_properties',$process_property_data);

		$select_seller_info = $this->common_model->select(['id'=>$check_property[0]['user_id']],'tbl_users');
		$select_buyer_info = $this->common_model->select(['id'=>$this->session->userdata('user_sess')['id']],'tbl_users');

		$this->common_model->sendMail($select_seller_info[0]['email'],'Sell Alert','Contratulations! Your property bought!');
		$this->common_model->sendMail($select_buyer_info[0]['email'],'Buy Alert','Contratulations! Your have bought property!');
		$this->common_model->sendMail('winlaxynx@gmail.com', 'Property Deal Alert', 'Proprty buyer is : '.$select_buyer_info[0]['email'].' & Proprty Sellert is : '.$select_seller_info[0]['email']);

		$response['status'] = 1;
		$response['message'] = 'You have bought this propery, We will contact you shortly!';

		echo json_encode($response);
	}
	
	public function uploadImage($FILES) { 
		$_FILES = $FILES;
		$data = [];
	 
		// $count = count($_FILES['files']['name']);
	  
		// for($i=0;$i<$count;$i++){

			foreach($_FILES as $key => $val){

				if(!empty($_FILES[$key]['name'])){
	  
					$_FILES['file']['name'] = $_FILES[$key]['name'];
					$_FILES['file']['type'] = $_FILES[$key]['type'];
					$_FILES['file']['tmp_name'] = $_FILES[$key]['tmp_name'];
					$_FILES['file']['error'] = $_FILES[$key]['error'];
					$_FILES['file']['size'] = $_FILES[$key]['size'];
					$config['encrypt_name'] = TRUE;
					$config['upload_path'] = 'uploads/'; 
					$config['allowed_types'] = 'jpg|jpeg|png|gif';
					$config['max_size'] = '5000';
					$config['file_name'] = $_FILES[$key]['name'];
			 
					$this->load->library('upload',$config); 
			  
					if($this->upload->do_upload('file')){
					  $uploadData = $this->upload->data();
					  $filename = $uploadData['file_name'];
			 
					  $data['totalFiles'][] = $filename;
					}else{
						echo '<pre>'; print_r($this->upload->display_errors()); exit;
					}
				  }
	
			}
	  
		  
		// }

		return json_encode($data);
	}

	public function profile(){
		$this->load->view('customer/profile');
	}

	public function setting($id){
		$user = $this->User_model->getUserByid($id);		
		$data['user'] = $user;
		// print_r($data);	exit;	
		$this->load->view('customer/setting',$data);
	}

	public function update($id){
		$this->form_validation->set_rules('name','Name','required');
        $this->form_validation->set_rules('email','Email','required|valid_email');
		// echo '<pre>'; print_r($this->form_validation->run);
		if($this->form_validation->run()== true){
			$data = array(
				'name' => $this->input->post('name'),
				'email' => $this->input->post('email'),
		    );
			// echo '<pre>'; print_r($data); exit;
			$this->User_model->update_user($this->session->userdata('user_sess')['id'],$data);
			$this->session->set_flashdata('success','Your details updated Successfully!');
				redirect('setting/'.$id);
		}else{
			$this->session->set_flashdata('error','Problem with update your detail!');
			redirect('setting/'.$id);
		}
	}

	public function upd_pass($id){
		$this->form_validation->set_rules('password','Password','required|min_length[8]');
        $this->form_validation->set_rules('cpassword','Conform Password','required|matches[password]');
		// echo '<pre>'; print_r($this->input->post()); exit;
		if($this->form_validation->run()== true){
			$data = array(
				'password' => $this->input->post('password'),
		    );
			// echo '<pre>'; print_r($data); exit;
			$this->User_model->update_user($this->session->userdata('user_sess')['id'],$data);			
			$this->session->set_flashdata('success','Your Details Updated Successfully!');
				redirect('setting/'.$id);
			}else{
				$this->session->set_flashdata('error','Problem With Update Your Password!');
				redirect('setting/'.$id);
			}
			
		}

	
	


	public function help(){
		$this->load->view('customer/help');
	}


	public function analytics(){
		$this->load->view('customer/analytics');
	}

	public function mapp(){
		$this->load->view('customer/mapp');
	}

}
