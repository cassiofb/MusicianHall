<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chat extends MY_Controller {

	public function __construct() {
		$this->page = 'chat';
		$this->icon = 'icon-inbox';
		parent::__construct();

		$this->load->model('contacts_model');
	}
	
	public function index()	{
		//$this->output->enable_profiler(TRUE);
		$data['page'] = $this->page;
		$data['namePage'] = ucwords( $data['page'] );
		$data['pageIcon'] = 'icon-inbox';
		$data['contacts'] = $this->contacts_model->get_last_ten_entries();
		$this->load->view('base', $data);
	}
}
