<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

    public $name;
    public $email;
    public $password;
    public $type;

    public function get_last_ten_entries()
    {
        $query = $this->db->get('users', 10);
        return $query->result();
    }

    public function get_entrie_by_login($email)
    {
        $this->db->select('*');
        $this->db->from('users');
        $this->db->join('user_info', 'user_info.user_id = users.id');
        $this->db->where('email', $email);
        $query = $this->db->get();
        if ($query) {
            return $query->result();
        } else {
            return FALSE;
        }    
    }

    public function insert_entry()
    {
        $this->name     = $_POST['name'];
        $this->email    = $_POST['email'];
        $this->password = $_POST['password'];
        $this->type     = isset($_POST['type']) ? $_POST['type'] : 1;
        $this->db->insert('users', $this);
    }

    public function update_entry()
    {
        $this->name     = $_POST['name'];
        $this->email    = $_POST['email'];
        $this->password = $_POST['password'];
        $this->db->update('users', $this, array('id' => $_POST['id']));
    }

}