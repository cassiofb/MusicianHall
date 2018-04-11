<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Messages extends MY_Controller {

	public function __construct() {
		$this->page = 'messages';
		$this->icon = 'icon-inbox';
		parent::__construct();
	}
	
	public function index()
	{
		$data = $this->preIndex($this);
		$this->load->view('base', $data);
	}
}
