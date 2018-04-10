<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Messages extends MY_Controller {

	public function __construtor() {
		$this->$page = 'messages';
		$this->icon = 'icon-inbox';
		parent::construtor();
	}
	
	public function index()
	{
		$data['page'] = $this->page;
		$data['namePage'] = ucwords( $data['page'] );
		$data['pageIcon'] = 'icon-inbox';
		$this->load->view('base', $data);
	}
}
