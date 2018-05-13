<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

	protected $page;
	protected $icon;

	public function __construct() {

		parent::__construct();

		$logged = $this->session->userdata("logged");
		if ($logged != 1)
			redirect(base_url('login'));
	}

	protected function preIndex($c)	{
		$data['page'] = $c->page;
		$data['namePage'] = ucwords( $data['page'] );
		$data['pageIcon'] = $c->icon;
		return $data;
	}

	protected function dd($target) {
		echo '<pre>';
		print_r($target);
		echo '</pre>';
		die('...');
	}
}
