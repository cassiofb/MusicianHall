<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends MY_Controller {

	public function __construct() {
		$this->page = 'profile';
		$this->icon = 'icon-inbox';
		parent::__construct();

		$this->load->model('user_model');
	}
	
	public function index()	{
		$data['page'] = $this->page;
		$data['namePage'] = ucwords( $data['page'] );
		$data['pageIcon'] = 'icon-inbox';

		$data['user'] = $this->user_model->get_user_logged();

		if (!$data['user']) {
			redirect('login');
		} else {
			$data['user'] = $data['user'][0];
		}

		$this->load->view('base', $data);
	}
}
