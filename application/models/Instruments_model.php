<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Instruments_model extends CI_Model {
 
    public $table = 'instruments';

    public function get_all_entries()
    {
        $query = $this->db->select('*')->get($this->table);
        return $query->result();
    }

    public function get_last_ten_entries()
    {
        $query = $this->db->select('*')->get($this->table, 10);
        return $query->result();
    }

    public function get_entries_by_term($term)
    {
        $query = $this->db->select('*')->like('name', $term)->get($this->table, 10);
        return $query->result();
    }

    public function get_instruments_by_user($id) {
        $this->db->select('users_instruments.instrument_id, instruments.name');
        $this->db->join('instruments', 'instruments.id = users_instruments.instrument_id');
        $this->db->where('user_id', $id);
        $return = $this->db->get('users_instruments')->result();
		$arr = [];
        foreach ($return as $key => $val) {
            array_push($arr, $val->name);
        }
        return $arr;
    }

    public function remove($id) {
        $this->db->where('id', $id);
        $this->db->delete($this->table);
    }

}
