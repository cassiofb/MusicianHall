<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contacts_model extends CI_Model {

    public $table = 'connections';

    public function get_last_ten_entries()
    {
        $this->db->select('users.name, users.email, user_info.*, ' . $this->table . '.connection_id, functions.name as function');
        $this->db->join('users', $this->table . '.connection_id = users.id');
        $this->db->join('user_info', 'user_info.user_id = users.id');
        $this->db->join('functions', 'user_info.function_id = functions.id');
        $this->db->where($this->table . '.user_id', $this->session->userdata('user_id'));
        $query = $this->db->get($this->table, 10);
        return $query->result();
    }

    public function get_entries_by_term($term)
    {
        $this->db->select('users.name, users.email, user_info.*, functions.name as function');
        $this->db->join('users', $this->table . '.connection_id = users.id');
        $this->db->join('user_info', 'user_info.user_id = users.id');
        $this->db->join('functions', 'user_info.function_id = functions.id');
        $this->db->like('users.name', $term);
        $this->db->where($this->table . '.user_id', $this->session->userdata('user_id'));
        $query = $this->db->get($this->table, 10);
        return $query->result();
    }

    public function remove($id) {
        $this->db->where($this->table . '.connection_id', $id);
        $this->db->delete($this->table);
    }

}