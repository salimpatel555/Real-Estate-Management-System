<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct(){
		parent::__construct();
		$this->load->model('User_model');
		$this->load->database();		 
	}

    public function index(){
        $this->load->view('home/home');
    }

   

    public function contact(){
        $this->form_validation->set_rules('name', 'Name', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
            $this->form_validation->set_rules('subject', 'Subject', 'required');
            $this->form_validation->set_rules('message', 'Message', 'required');

        if( $this->form_validation->run()==false){
            $this->session->set_flashdata('error', "Something wrong happened while sending your message.");
            $this->load->view('home/home');
        }else{

            $data = array(
                'name' => $this->input->post('name'),
                'email' => $this->input->post('email'),
                'subject' => $this->input->post('subject'),
                'message' => $this->input->post('message')
            );

            $this->User_model->contactfrm($data);
            $this->session->set_flashdata('message', 'Your message has been sent.');
            redirect('/');
        }

    }

}