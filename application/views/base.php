<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$this->load->view('template/header');
$this->load->view('template/navbar');
$this->load->view('template/sidebar');
$this->load->view($page);
$this->load->view('template/footer');