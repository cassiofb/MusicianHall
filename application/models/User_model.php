<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {

    public $name;
    public $email;
    public $password;
    public $type;

    public function get_user_logged() 
    {
        $this->db->select('users.*, user_info.*');
        $this->db->from('users');
        $this->db->join('user_info', 'user_info.user_id = users.id');
        $this->db->where('users.id', $this->session->get_userdata()['user_id']);
        $query = $this->db->get();
        if ($query) {
            return $query->result();
        } else {
            return FALSE;
        }
    }

	public function get_user_by_id($id)
	{
		$this->db->select('users.*, user_info.*');
		$this->db->from('users');
		$this->db->join('user_info', 'user_info.user_id = users.id');
		$this->db->where('users.id', $id);
		$query = $this->db->get();
		if ($query) {
			return $query->result();
		} else {
			return FALSE;
		}
	}

    public function get_last_ten_entries()
    {
        $this->db->select('users.name, users.email, user_info.*, functions.name as function');
        $this->db->join('user_info', 'user_info.user_id = users.id');
        $this->db->join('functions', 'user_info.function_id = functions.id');
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

    public function update_info($post) 
    {
        $id = $this->session->get_userdata()['user_id'];

        if ($post['action'] === 'payments') {
            
            $this->db->set('number_cc', $post['number_cc']);
            $this->db->set('name_cc', $post['name_cc']);
            $this->db->set('cvv', $post['cvv']);
            $this->db->set('validate_cc', join("-", array_reverse(explode('/', $post['validate_cc']))));
            $this->db->where('user_id', $id);
            $this->db->update('user_info');

        } else {
            $this->db->set('profile_type', $post['profile']);
            $this->db->set('priority_search', $post['priority']);
            $this->db->where('user_id', $id);
            $this->db->update('user_info');
            
            if (isset($post['instrument'])) {
                $this->db->delete('users_instruments', array('user_id' => $id));
                foreach ($post['instrument'] as $key => $value) {
                    $data[$key]['user_id'] = $id;
                    $data[$key]['instrument_id'] = $value;
                }
                $this->db->insert_batch('users_instruments', $data);
            }
        }

    }

    public function get_entries_by_term($term, $limit = null, $offset = null)
    {
        $this->db->select('users.name, users.email, user_info.*, functions.name as function');
        $this->db->join('user_info', 'user_info.user_id = users.id');
        $this->db->join('functions', 'user_info.function_id = functions.id');
        $this->db->like('user_info.description', $term);
        $this->db->or_like('users.name', $term);
        $this->db->or_like('functions.name', $term);

        if ($limit) {
            $this->db->limit($limit, $offset);
        }

        $query = $this->db->get('users');
        return $query->result();
    }

    public function CountAll() {
        return $this->db->count_all('users');
    }

}
