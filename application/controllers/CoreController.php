<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CoreController extends CI_Controller {

  public function template($data)
  {
    $this->load->view('core', $data, FALSE);
  }

  public function index()
  {
    $data['title']     = 'Conf. Mesin';
    $data['container'] = 'mesin/table';
    $data['arr']       = $this->mcore->get_all_data('tbl_mesin');
    $this->template($data);
  }

  public function data()
  {
    $data['arr'] = $this->mcore->get_all_data('tbl_mesin');
    $view = $this->load->view('mesin/data', $data, TRUE);
    echo json_encode($view);
  }

  public function ip_save()
  {
    $new_ip = $this->input->post('value');
    $name   = $this->input->post('name');
    $pk     = $this->input->post('pk');

    $where = ['id_mesin' => $pk];
    $arr   = ['ip' => $new_ip];
    $exec  = $this->mcore->update('tbl_mesin', $where, $arr);

    if($exec === TRUE){
      return TRUE;
    }else{
      return FALSE;
    }
  }

  public function password_save()
  {
    $new_password = $this->input->post('value');
    $name         = $this->input->post('name');
    $pk           = $this->input->post('pk');

    $where = ['id_mesin' => $pk];
    $arr   = ['password' => $new_password];
    $exec  = $this->mcore->update('tbl_mesin', $where, $arr);

    if($exec === TRUE){
      return TRUE;
    }else{
      return FALSE;
    }
  }

}

/* End of file CoreController.php */
/* Location: ./application/controllers/CoreController.php */