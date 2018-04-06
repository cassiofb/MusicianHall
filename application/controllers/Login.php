<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	
	
	public function index()
	{
		//$this->output->enable_profiler(TRUE);
		
		$this->load->view('login');
	}
}
