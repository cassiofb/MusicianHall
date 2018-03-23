<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	private $page = 'home';
	
	public function index()
	{
		//$this->output->enable_profiler(TRUE);
		$data['page'] = $this->page;
		$this->load->view('base', $data);
	}
}
