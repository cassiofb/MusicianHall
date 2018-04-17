<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {

	public function __construct() {
		$this->page = 'home';
		$this->icon = 'icon-inbox';
		parent::__construct();
	}
	
	public function index()	{
		$data = $this->preIndex($this);
		// var_dump('<pre>', $data, '</pre>');
		$this->load->view('base', $data);
	}

}
