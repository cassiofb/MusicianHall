<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contacts extends MY_Controller {

	public function __construct() {
		$this->page = 'contacts';
		$this->icon = 'icon-group';
		parent::__construct();

		$this->load->model('contacts_model');
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
}
