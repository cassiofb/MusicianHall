<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Chat extends CI_Controller {

	private $page = 'chat';
	
	public function index()
	{
		//$this->output->enable_profiler(TRUE);
		$data['page'] = $this->page;
		$this->load->view('base', $data);
	}
}
