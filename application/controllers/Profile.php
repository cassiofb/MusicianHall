<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends MY_Controller {

	public function __construct() {
		$this->page = 'profile';
		$this->icon = 'icon-inbox';
		parent::__construct();

		$this->load->model('user_model');
		$this->load->model('instruments_model');
		$this->load->model('users_profile_model');
	}
	
	public function index()	{
		$id = $this->session->get_userdata()['user_id'];

		$data['page'] = $this->page;
		$data['namePage'] = ucwords( $data['page'] );
		$data['pageIcon'] = 'icon-inbox';

		$data['instruments'] = $this->instruments_model->get_all_entries();
		$data['profiles'] = $this->users_profile_model->get_all_entries();
		$data['user'] = $this->user_model->get_user_logged();
		$data['user_instruments'] = $this->instruments_model->get_instruments_by_user($id);

		if (!$data['user']) {
			redirect('login');
		} else {
			$data['user'] = $data['user'][0];

			if (isset($data['user']->validate_cc) && $data['user']->validate_cc != null) {
				$data['user']->validate_cc = join("", array_reverse(explode('-', $data['user']->validate_cc)));
			}
		}

		$this->load->view('base', $data);
	}
}
