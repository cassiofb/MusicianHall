<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Settings extends MY_Controller {

	public function __construct() {
		$this->page = 'contacts';
		$this->icon = 'icon-cog';
		parent::__construct();
	}
	
	public function index()
	{
		$data = $this->preIndex($this);
		$this->load->view('base', $data);
	}
}
