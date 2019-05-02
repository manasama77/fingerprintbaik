<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_core extends CI_Model {

  public function get_all_data($table)
  {
    return $this->db->get($table);
  }

  public function get_single_data($table, $where)
  {
    $this->db->where($where);
    return $this->db->get($table);
  }

  public function update($table, $where, $arr)
  {
    $this->db->trans_begin();
    $this->db->set($arr);
    $this->db->where($where);
    $this->db->update($table);
    $this->db->trans_complete();
    return $this->db->trans_status();
  }

}

/* End of file M_core.php */
/* Location: ./application/models/M_core.php */