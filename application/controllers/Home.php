<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require_once './application/core/MY_Controller.php';

class Home extends MY_Controller {

	public function __constructor() {
		$this->page = 'home';
		$this->icon = 'icon-inbox';
		parent::construtor();
	}
	
	public function index()	{
		$data = $this->preIndex($this);
		var_dump($data);
		die('teste');
		$this->load->view('base', $data);
	}

	public function teste () {
		echo 'asdfasdfas';
	}

}
