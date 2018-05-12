<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chat extends MY_Controller {

	public function __construct() {
		$this->page = 'chat';
		$this->icon = 'icon-inbox';
		parent::__construct();
	}
	
	public function index()	{
		//$this->output->enable_profiler(TRUE);
		$data['page'] = $this->page;
		$data['namePage'] = ucwords( $data['page'] );
		$data['pageIcon'] = 'icon-inbox';
		$this->load->view('base', $data);
	}
}
