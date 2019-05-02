<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MKaryawanController extends CI_Controller {

  public function template($data)
  {
    $this->load->view('core', $data, FALSE);
  }

  public function index()
  {
    $data['title']     = 'Data Karyawan <small class="text-muted">@Fingerprint</small>';
    $data['container'] = 'mesin_karyawan/table';
    $this->template($data);
  }

  public function get_karyawan_finger()
  {
    $this->load->helper('parse_helper');
    $ip = '192.168.1.2';
    $password_mesin = '177';

    if($ip != "")
    {
      $Connect = fsockopen($ip, "80", $errno, $errstr, 1);
      if($Connect)
      {
        //$soap_request="<GetUserInfo><ArgComKey xsi:type=\"xsd:integer\">".$password_mesin."</ArgComKey><Arg><PIN xsi:type=\"xsd:integer\">All</PIN><Name xsi:type=\"xsd:integer\">All</Name></Arg></GetUserInfo>";
        $soap_request="
        <GetUserInfo>
          <ArgComKey xsi:type=\"xsd:integer\">".$password_mesin."</ArgComKey>
          <Arg><PIN xsi:type=\"xsd:integer\">ALL</PIN></Arg>
        </GetUserInfo>";
        $newLine="\r\n";
        fputs($Connect, "POST /iWsService HTTP/1.0".$newLine);
        fputs($Connect, "Content-Type: text/xml".$newLine);
        fputs($Connect, "Content-Length: ".strlen($soap_request).$newLine.$newLine);
        fputs($Connect, $soap_request.$newLine);
        $buffer="";
        while($Response=fgets($Connect, 4096))
        {
          $buffer=$buffer.$Response;
        }
        $buffer=Parse_Data($buffer,"<GetUserInfoResponse>","</GetUserInfoResponse>");
        $buffer=explode("\r\n",$buffer);
        for($a=0;$a<count($buffer);$a++)
        {

          $angka = "518.";
          $arr_data = $buffer[$a];
          $arr_no = get_text_between_tags($arr_data, 'pin');
          if(count($arr_no) == 0){ $no = 0; }else{ $no = $arr_no[0]; }

          $arr_name = get_text_between_tags($arr_data, 'name');
          if(count($arr_name) == 0){ $name = ''; }else{ $name = $arr_name[0]; }

          $arr_nik = get_text_between_tags($arr_data, 'pin2');
          if(count($arr_nik) == 0){ $nik = ''; }else{ $nik = $arr_nik[0]; }
          $fullnik = $angka.$nik;

          $ins = array(
            'arr_data' => $arr_data,
            'no'       => $no,
            'name'     => $name,
            'nik'      => $nik,
            'fullnik'  => $fullnik,
          );

          if($ins['no'] != 0)
          {
            // DETECT DUPLICATE
            $table = 'karyawan';
            $where = ['nik' => $fullnik];
            $arr_db = $this->mcore->get_single_data($table, $where);

            if($arr_db->num_rows() == 0){
              
            }else{
              
            }
          }

          print_r($ins);
          echo "<br>";
        }
      }else{
        echo 'Tidak terkoneksi dengan finger print';
      }
    }

  }

}

/* End of file MKaryawanController.php */
/* Location: ./application/controllers/MKaryawanController.php */