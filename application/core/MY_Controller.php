<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

	protected $page;
	protected $icon;

	public function __constructor() {}

	protected function preIndex($c)	{
		$data['page'] = $c->page;
		$data['namePage'] = ucwords( $data['page'] );
		$data['pageIcon'] = $c->icon;
		return $data;
	}
}
