<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chat extends MY_Controller {

	public function __constructor() {
		$this->page = 'chat';
		$this->icon = 'icon-inbox';
		parent::construtor();
	}
	
	public function index()	{
		//$this->output->enable_profiler(TRUE);
		$data['page'] = $this->page;
		$data['namePage'] = ucwords( $data['page'] );
		$data['pageIcon'] = 'icon-inbox';
		$this->load->view('base', $data);
	}
}
