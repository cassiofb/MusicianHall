<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends MY_Controller {

	public function __constructor() {
		$this->page = 'profile';
		$this->icon = 'icon-inbox';
		parent::construtor();
	}
	
	public function index()	{
		$data['page'] = $this->page;
		$data['namePage'] = ucwords( $data['page'] );
		$data['pageIcon'] = 'icon-inbox';
		$this->load->view('base', $data);
	}
}
