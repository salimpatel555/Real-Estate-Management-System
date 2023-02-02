<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller{
    public function __construct(){
		parent::__construct();        

        
        $this->load->helper('url');
        $this->load->library("pagination");
		$this->load->database();
        $this->load->model('Admin_model');
        $this->load->model('User_model');
        $this->load->model('common_model');	 
	}


    
    public function index(){ 
        if(!$this->session->userdata('admin_sess')){
            redirect('admin/login');
        } 
        // echo '<pre>'; print_r($this->session->userdata('user_sess')); exit;       
       $this->load->view('admin/home');
    }
    

    public function login(){
        
        $this->form_validation->set_rules('admin_email','Email','required');
        $this->form_validation->set_rules('password','Password','required');
        // print_r($this->input->post());
        if($this->form_validation->run()== FALSE){
            $this->load->view('admin/login');            
        }else{
            $admin_email = $this->input->post('admin_email');
            $password = $this->input->post('password');
            $admin = $this->Admin_model->admin_log($admin_email,$password);
            if(!$admin){
                $this->session->set_flashdata('error','Invalid Email Or Password please try again');
                redirect('admin/login');
            }
            $admindata = array(
                'admin_id' => $admin->admin_id,
                'admin_name' => $admin->admin_name,
                'admin_email' => $admin->admin_email,
                'password' => $admin->password,
            );
            // print_r($admindata); exit;

            $this->session->set_userdata('admin_sess',$admindata);
            redirect('admin');
        }

        // $this->load->view('admin/login');
    }


    public function logout(){
        $this->session->sess_destroy();
        redirect('admin/login');
    }

    public function user_list(){
        if(!$this->session->userdata('admin_sess')){
            redirect('admin/login');
        } 
        $config = array();
        $config["base_url"] = base_url() . "admin/user_list";
        $config['total_rows'] = $this->User_model->num_rows();
        $config['per_page'] = 4;
        $config['url_sigment'] = 3;
        $config['num_links'] = 2;
        /*start  add boostrap class and styles*/
        $config['full_tag_open'] = '<ul class="pagination">';        
        $config['full_tag_close'] = '</ul>';        
        $config['first_link'] = 'First';        
        $config['last_link'] = 'Last';        
        $config['first_tag_open'] = '<li class="page-item"><span class="page-link">';        
        $config['first_tag_close'] = '</span></li>';        
        $config['prev_link'] = '&laquo';        
        $config['prev_tag_open'] = '<li class="page-item"><span class="page-link">';        
        $config['prev_tag_close'] = '</span></li>';        
        $config['next_link'] = '&raquo';        
        $config['next_tag_open'] = '<li class="page-item"><span class="page-link">';        
        $config['next_tag_close'] = '</span></li>';        
        $config['last_tag_open'] = '<li class="page-item"><span class="page-link">';        
        $config['last_tag_close'] = '</span></li>';        
        $config['cur_tag_open'] = '<li class="page-item active"><a class="page-link" href="#">';        
        $config['cur_tag_close'] = '</a></li>';        
        $config['num_tag_open'] = '<li class="page-item"><span class="page-link">';        
        $config['num_tag_close'] = '</span></li>';
        /*end  add boostrap class and styles*/        
        $this->pagination->initialize($config);
        $data ['users'] = $this->User_model->user_list($config['per_page'],$this->uri->segment(3));
        $this->load->view('admin/user_list',$data);
    }


    public function add_users(){
        if(!$this->session->userdata('admin_sess')){
            redirect('admin/login');
        } 
        $this->form_validation->set_rules('name','Name','required');
        $this->form_validation->set_rules('email','Email','required|valid_email|is_unique[tbl_users.email]');
        $this->form_validation->set_rules('password','Password','required|trim|min_length[8]' );
        if($this->form_validation->run()== false){
            $this->session->set_flashdata('error','User Data Is Not Insert');
            redirect('admin/user_list');
        }else{
            $userdata = array(
                'name'=>$this->input->post('name'),
                'email'=> $this->input->post('email'),
                'password'=> $this->input->post('password'),
            );

            $this->User_model->add_user($userdata);
            $this->session->set_flashdata('success','User Data Inserted is Successfully');
            redirect('admin/user_list');  
        }

    }




    public function update_user($id){
        if(!$this->session->userdata('admin_sess')){
            redirect('admin/login');
        } 
        $user = $this->User_model->getUserByid($id);
        $data['users'] = $user;
        // print_r($data); exit;
        $this->load->view('admin/update_user',$data);
    }
    


    public function edit_user($id){
        if(!$this->session->userdata('admin_sess')){
            redirect('admin/login');
        } 
        $this->form_validation->set_rules('name','Name','required');
        $this->form_validation->set_rules('email','Email','required');
        if($this->form_validation->run()== false){
            $this->session->set_flashdata('error','problem with update user detail!');
            redirect('admin/update_user/'.$id);
        }else{
            $data = array(
            'name'=>$this->input->post('name'),
            'email'=>$this->input->post('email'),
            );
            $this->User_model->update_user($id,$data);
            $this->session->set_flashdata('success','user details updated successfully!');
            redirect('admin/user_list');
        }
    }

    public function edit_pass($id){
        if(!$this->session->userdata('admin_sess')){
            redirect('admin/login');
        } 
        $this->form_validation->set_rules('password','Password','required|trim|min_length[8]');
        $this->form_validation->set_rules('cpassword','Conform Password','required|matches[password]');
        if($this->form_validation->run()== false){
            $this->session->set_flashdata('error','problem with update user password!');
            redirect('admin/update_user/'.$id);
        }else{
            $data = array(
            'password'=>$this->input->post('password'),           
            );
            $this->User_model->update_user($id,$data);
            $this->session->set_flashdata('success','user password updated successfully');
            redirect('admin/user_list');
        }
    }




    public function delete_user($id){
        if(!$this->session->userdata('admin_sess')){
            redirect('admin/login');
        } 
        $this->User_model->user_delete($id);
        $this->session->set_flashdata('status','user has been deleted');
        redirect('admin/user_list');
    }


    public function get_city(){
        if(!$this->session->userdata('admin_sess')){
            redirect('admin/login');
        } 
		$state_id = $this->input->get('state_id');
		$res_cities = $this->common_model->select(['state_id'=>$state_id],'cities');
		echo json_encode(['cities'=>$res_cities]);
	}


    public function add_property(){
        if(!$this->session->userdata('admin_sess')){
            redirect('admin/login');
        } 
        $data['states']= $this->common_model->select([],'states');
        $data['property_types']= $this->common_model->select([],'tbl_property_types');
        $data['owner_types']=$this->common_model->select([],'owner_types');
        $data['prices_conditions']=$this->common_model->select([],'prices_conditions');
        $data['property_diamention']=$this->common_model->select([],'property_diamention');
        $data['wizard_js'] = 1;
        $this->load->view('admin/add_property',$data);
    }

    public function property_list(){
        if(!$this->session->userdata('admin_sess')){
            redirect('admin/login');
        } 
        $data['wizard_js'] = 0;
        $data['propertys_list']=$this->common_model->query(
            'SELECT p.*,pt.property_type,ot.name As owner_type,st.name 
            As state, ct.city,pd.name 
            AS property_diamention_n,u.email 
            AS email
            FROM tbl_listed_properties p LEFT JOIN owner_types ot
            ON p.owner_type = ot.id LEFT JOIN tbl_property_types pt
            ON p.property_type = pt.id
            LEFT JOIN states st 
            ON p.state_id = st.id
            LEFT JOIN cities ct ON p.city_id = ct.id
            LEFT JOIN property_diamention pd ON p.property_diamention_id = pd.id
            LEFT JOIN tbl_users u ON p.user_id = u.id'
        );
        // print_r($data);exit;
        $this->load->view('admin/property_list',$data);
    }

    public function process_property(){

        $post = $this->input->post();
        $response = [];
        if(!$post){
            $response['status'] = 0;
            $response['message'] = 'Invalid Request'; 
            echo json_encode($response);
            return;
        }

        $chk_property = $this->common_model->select(['id'=>$post['property_id'],'property_status'=>2],'tbl_listed_properties');
        if(!$chk_property){
            $response['status'] = 0;
            $response['message'] = 'Property Not found'; 
            echo json_encode($response);
            return;
        }

        $diamention_replace = str_replace('*', 'x', trim($chk_property[0]['property_diamention']));
        $diamention_replace = str_replace('x', '*', trim($chk_property[0]['property_diamention']));

        $explode_diamention = explode("*",$diamention_replace);

        if(!$explode_diamention){
            $response['status'] = 0;
            $response['message'] = 'Diamention Not Correct!'; 
            echo json_encode($response);
            return;
        }

        $token__current_prices = $this->common_model->select([],'token_rate')[0]['current_rate_inr'];
        $total_tokens_tobe_assigned =  (($explode_diamention[0]*$explode_diamention[1])*$chk_property[0]['updated_per_sqft_price'])/$token__current_prices;
       

        $prepare_property_log = [];
        $prepare_property_log['seller_user_id'] = $chk_property[0]['user_id'];
        $prepare_property_log['buyer_user_id'] = $chk_property[0]['buyer_user_id'];
        $prepare_property_log['property_type'] = $chk_property[0]['property_type'];
        $prepare_property_log['owner_type'] = $chk_property[0]['owner_type'];
        $prepare_property_log['state_id'] = $chk_property[0]['state_id'];
        $prepare_property_log['city_id'] = $chk_property[0]['city_id'];
        $prepare_property_log['location'] = $chk_property[0]['location'];
        $prepare_property_log['area_in'] = $chk_property[0]['area_in'];
        $prepare_property_log['property_diamention_id'] = $chk_property[0]['property_diamention_id'];
        $prepare_property_log['property_diamention'] = $chk_property[0]['property_diamention'];
        $prepare_property_log['property_photos'] = $chk_property[0]['property_photos'];
        $prepare_property_log['property_status'] = $chk_property[0]['property_status'];
        $prepare_property_log['expected_price'] = $chk_property[0]['expected_price'];
        $prepare_property_log['per_sqft_price'] = $chk_property[0]['per_sqft_price'];
        $prepare_property_log['updated_per_sqft_price'] = $chk_property[0]['updated_per_sqft_price'];
        $prepare_property_log['created_on'] = $chk_property[0]['created_on'];

        $property_log_id = $this->common_model->save_return_id($prepare_property_log,'properties_logs');

        $prepare_balance = [];
        $prepare_balance['user_id'] = $chk_property[0]['buyer_user_id'];
        $prepare_balance['balance'] = $total_tokens_tobe_assigned;
        $prepare_balance['property_log_id'] = $property_log_id;
        $prepare_balance['token_rate_inr'] = $token__current_prices;

        $this->common_model->save($prepare_balance,'tbl_token_balances');
    
        $this->common_model->delete(['id'=>$post['property_id']],'tbl_listed_properties');
    
        $response['status'] = 1;
        $response['message'] = 'Property Processed Successfully!'; 
        echo json_encode($response);
        return;

       

    }


}
