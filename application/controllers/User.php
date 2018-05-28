<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends MY_Controller {

	public $term;

	public function __construct() {
		$this->page = 'user';
		$this->icon = 'icon-inbox';
		parent::__construct();

		$this->load->model('user_model');
	}
	
	public function index()	{
		$data = $this->preIndex($this);
		$this->load->view('base', $data);
	}

	public function search() {

		$this->term = $_POST['term'] ?? $this->term;

		$data = $this->preIndex($this);
		$config = array(
			"base_url" 				=> base_url('user/search'),
			"per_page" 				=> 10,
			"num_links" 			=> 5,
			"uri_segment" 		=> 3,
			"total_rows" 			=> $this->user_model->CountAll(),
			"full_tag_open" 	=> '<div class="dataTables_paginate fg-buttonset ui-buttonset fg-buttonset-multi ui-buttonset-multi paging_full_numbers" id="DataTables_paginate">',
			"full_tag_close" 	=> "</div>",
			// "first_link" 			=> "Fisrt",
			// "first_tag_open" 	=> '<a class="first ui-corner-tl ui-corner-bl fg-button ui-button ui-state-default" id="DataTables_first"><<',
			// "first_tag_close" => "</a>",
			// "first_url" 			=> "",
			// "last_link" 			=> "Last",
			// "last_tag_open" 	=> '<a class="last ui-corner-tr ui-corner-br fg-button ui-button ui-state-default" id="DataTables_last">>>',
			// "last_tag_close" 	=> "</a>",
			// "next_link" 			=> "Next",
			// "next_tag_open" 	=> '</span><a class="next fg-button ui-button ui-state-default" id="DataTables_next">',
			// "next_tag_close" 	=> "</a>",
			// "prev_link" 			=> "Prev",
			// "prev_tag_open" 	=> '<a class="previous fg-button ui-button ui-state-default ui-state-disabled" id="DataTables_previous">',
			// "prev_tag_close" 	=> "</a><span>",
			// "num_tag_open" 		=> '<a class="fg-button ui-button ui-state-default">',
			// "num_tag_close" 	=> '</a>',
			"cur_tag_open" 		=> '<a class="fg-button ui-button ui-state-default ui-state-disabled">',
			"cur_tag_close" 	=> "</a>"
		);

		$this->pagination->initialize($config);

		$data['pagination'] = $this->pagination->create_links();

		$offset = $this->uri->segment(3) ?? 0;
		$data['users'] = $this->user_model->get_entries_by_term($this->term, $config['per_page'], $offset);

		if (empty($data['users'])) {
			$data['msg_retorno'] = 'Nenhum resultado encontrado!';
		}
		//$this->dd($data['users']);
		$this->load->view('base', $data);
	}

	public function update() {
		$this->dd($_POST);
		die;
	}
}

