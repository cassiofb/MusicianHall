<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	
	
	public function index()
	{
		
		$this->load->view('login');
	}

	public function loggin()
	{
		$user = $this->input->post("user");
		$passwd = $this->input->post("passwd");

		if($user == "cassianofb22@gmail.com" || $user == "willrpg@hotmail.com" && $passwd == "159951" || $passwd == "richard") 
		{
			$this->session->set_userdata("logged", 1);
			redirect(base_url());
		} else{
			$data['error'] = "Usuário/Senha inválidos";
			$this->load->view("login", $data);
		}
	}

	public function loggout()
	{
		$this->session->unset_userdata("logged");
		redirect(base_url());
	}
}
