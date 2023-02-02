<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth_user extends CI_Controller {

	public function __construct(){
		parent::__construct();
		$this->load->model('User_model');
		$this->load->model('common_model');
		$this->load->database();
		$this->load->library('form_validation');
		 
	}


	public function index()
	{
		if($this->input->post()){
			$this->form_validation->set_rules('email', 'Email Address', 'required|valid_email|is_unique[tbl_users.email]', [
				'is_unique' => 'The %s already exists. Please use a different email!',]);
			$this->form_validation->set_rules('password', 'Password','trim|required|min_length[8]');
			$this->form_validation->set_rules('cpassword','Conform Password','trim|required|matches[password]');
			if($this->form_validation->run() == true){
				$userdata = array(
					'email'=>$this->input->post('email'),
					'password'=>$this->input->post('password'),			
				);
				// if($userdata['status']==1){
				// 	$emailTo = $this->input->post('email');
				// 	$this->sendEmail($emailTo);
				// }

				$this->User_model->user_reg($userdata);
				$this->session->set_flashdata('message','User Registeration Successfully');
				return redirect('login');
			}else{
				$this->load->view('auth/register');
			}
		}else{
			$this->load->view('auth/register');
		}
		
		
	}



	public function login(){
		$this->form_validation->set_rules('email', 'Email', 'required');
		$this->form_validation->set_rules('password', 'Password', 'required');

		if ($this->form_validation->run() == FALSE) {
			$this->load->view('auth/login');
		} else {
 
			$email = $this->input->post('email');
			$password = $this->input->post('password');
			$user = $this->User_model->login($email,$password);
			// print_r($user); exit;
			if(!$user) {
				$this->session->set_flashdata('error', 'Invalid email or password please try again.', 300);
					redirect('auth_user/login');
				}
			
				$userdata = array(
					'id' => $user->id,
					'email' => $user->email,
					'name' => $user->name,
					'password' => $user->password,
					'otp' => $user->otp,
					'is_verified' => $user->is_verified,
					'authenticated' => TRUE
				);
							
				$this->session->set_userdata('user_sess',$userdata);			
				redirect('dashboard');			
			
			} 
	}



	public function logout(){
		$this->session->sess_destroy();
		return redirect('/');
	}



	public function forgotpass(){
		$this->load->view('auth/forgotpass');
	}


	public function resetlink(){
		$email = $this->input->post('email');
		$result = $this->db->query("select * from tbl_users where email='".$email."'")->result_array();
		if(count($result)>0){
			// echo 'Success';
			$token = rand(1000,9999);
			$this->db->query("update tbl_users set password='".$token."'where email='".$email."'");			

			$message = "Please click on Password reset link <br> <a href='".base_url('resetpass?token=').$token."'>Reset Password</a>";

			$this->common_model->sendMail($email,"Forgot Password",$message);

			$this->load->view('auth/success');    
		}else{
			$this->session->set_flashdata('error','Invalid Email Address');
			redirect('auth_user/forgotpass');
		}
	}



	public function resetpass(){
		$data['token'] = $this->input->get('token');
		$_SESSION['token']=$data['token'];
		$this->load->view('auth/resetpass');

	}



	public function updatepass(){
		$_SESSION['token'];
		$data = $this->input->post();
		// print_r($data);exit;
		if($data['password']==$data['cpassword']){
		$this->db->query("update tbl_users set password='".$data['password']."'where password='".$_SESSION['token']."'");
		return redirect('login');
		}
		if($data['password']!==$data['cpassword']){
			$this->session->set_flashdata('error','Password & Conform Password Is Not Match');
			redirect('auth_user/resetpass');
		}else{
		$this->db->query("update tbl_users set password='".$data['password']."'where password='".$_SESSION['token']."'");
		return redirect('login');
		}
	}


	public function test_mail(){
		$this->common_model->sendMail('khade4982@gmail.com',"Test Email","Hii Amol This is test email!");
		//  echo json_encode($jayParsedAry);
		// $this->sendEmail('khade4982@gmail.com','jhhjddhhh');
	}


	public function sendEmail($email="",$token=""){

		$this->email->from('info@winlaxy.com', 'WINLAXY');
		$this->email->to($email);
		$this->email->subject('Forgot Password!');
		$this->email->message("Hii");
		$res = $this->email->send();

		// var_dump($res);

		$this->session->set_flashdata('success','Please check your mailbox and click Reset Password Link.');
		redirect('auth_user/resetpass');
	// 	echo $this->email->print_debugger();
	}


}
