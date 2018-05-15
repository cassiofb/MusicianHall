<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends MY_Controller {

	public function __construct() {
		$this->page = 'user';
		$this->icon = 'icon-inbox';
		parent::__construct();

		$this->load->model('user_model');
	}
	
	public function index()	{
		$data = $this->preIndex($this);
		$this->load->view('base', $data);
	}

	public function search() {
		$data = $this->preIndex($this);
		$data['users'] = $this->user_model->get_entries_by_term($_POST['term']);
		if (empty($data['users'])) {
			$data['msg_retorno'] = 'Nenhum resultado encontrado!';
		}
		//$this->dd($data['users']);
		$this->load->view('base', $data);
	}
}

