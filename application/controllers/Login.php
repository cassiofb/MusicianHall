<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	public function __construct() 
	{
		parent::__construct();
		$this->load->model('user_model');
	}
	
	public function index()
	{
		$this->load->view('login');
	}

	public function loggin()
	{
		$user = $this->input->post("user");
		$passwd = $this->input->post("passwd");

		$_user = $this->user_model->get_entrie_by_login($user);
		$_user = $_user[0];

		if (!$_user) {
			$this->session->set_flashdata('erroLogin', 'Este email não existe em nossa base!');
			redirect(base_url("login"));
		}

		if(md5($passwd) === $_user->password) {
			$this->session->set_userdata("logged", 1);
			$this->session->set_userdata("user_email", $_user->email);
			$this->session->set_userdata("user_name", $_user->name);
			$this->session->set_userdata("user_id", $_user->id);

			redirect(base_url('home'));
		} else {
			$dados['erro'] = "Usuário/Senha incorretos";
			$this->session->set_flashdata('erroLogin', 'Credênciais inválidas!');
			redirect(base_url("login"));
		}
	}

	public function loggout()
	{
		$this->session->unset_userdata("logged");
		redirect(base_url());
	}
}
