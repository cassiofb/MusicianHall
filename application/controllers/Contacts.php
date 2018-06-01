<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contacts extends MY_Controller {

	public function __construct() {
		$this->page = 'contacts';
		$this->icon = 'icon-group';
		parent::__construct();

		$this->load->model('contacts_model');
		$this->load->model('user_model');
		$this->load->model('instruments_model');
		$this->load->helper('funcoes');
	}
	
	public function index()
	{
		$data = $this->preIndex($this);
		$data['contacts'] = $this->contacts_model->get_last_ten_entries();
		$this->load->view('base', $data);
	}

	public function remove($id) {
		$this->contacts_model->remove($id);
		$data['msg_remove'] = 'Contato removido com sucesso';
		redirect('/contacts/');
	}

	public function profile($id) {
		$data['page'] = 'details';
		$data['namePage'] = ucwords( $data['page'] );
		$data['pageIcon'] = $this->icon;

		$data['user'] = $this->user_model->get_user_by_id($id);
		$data['user_instruments'] = $this->instruments_model->get_instruments_by_user($id);
		if (!isset($data['user_instruments'])) {
			$data['user_instruments'] = [];
		}

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
