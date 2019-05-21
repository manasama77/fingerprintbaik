<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MAttendanceController extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('M_core', 'mcore');
    ini_set('max_execution_time', 0);
  }

  public function template($data)
  {
    $this->load->view('core', $data, FALSE);
  }

  public function index()
  {
    $data['title']     = 'Data Presensi Karyawan <small class="text-muted">@Fingerprint</small>';
    $data['container'] = 'mesin_presensi/table';
    $this->template($data);
  }

  public function data()
  {
    $a = $this->input->post('a');
    $b = $this->input->post('b');
    $arr_karyawan = $this->mcore->get_absensi_lokal($a, $b);

    $ins = [];

    foreach ($arr_karyawan->result() as $key) {
      $nested = '<tr>';
      $nested .= '<td>';
      $nested .= $key->id_attendance;
      $nested .= '</td>';
      $nested .= '<td>';
      $nested .= $key->nik;
      $nested .= '</td>';
      $nested .= '<td>';
      $nested .= $key->tgljam;
      $nested .= '</td>';
      $nested .= '</tr>';
      $ins[] = $nested;
    }

    $return = [
      'code'        => 200,
      'description' => 'Get Data Berhasil',
      'data'        => $ins,
      'lq'        => $this->db->last_query(),
    ];

    echo json_encode($return);
  }

  public function data_send()
  {
    $a = $this->input->post('a');
    $b = $this->input->post('b');
    $arr_karyawan = $this->mcore->get_absensi_lokal($a, $b);

    $ins = [];

    foreach ($arr_karyawan->result() as $key) {
      $nested = '<tr>';
      $nested .= '<td>';
      $nested .= $key->id_attendance;
      $nested .= '</td>';
      $nested .= '<td>';
      $nested .= $key->nik;
      $nested .= '</td>';
      $nested .= '<td>';
      $nested .= $key->tgljam;
      $nested .= '</td>';
      $nested .= '</tr>';
      $ins[] = $nested;
    }

    $return = [
      'code'        => 200,
      'description' => 'Get Data Berhasil',
      'data'        => $arr_karyawan->result(),
      'lq'        => $this->db->last_query(),
    ];

    echo json_encode($return);
  }

  public function sync()
  {
    $this->db->truncate('tbl_absensi_local');

    $this->load->helper('parse_helper');

    $awal      = $this->input->post('awal');
    $akhir     = $this->input->post('akhir');
    $arr_mesin = $this->mcore->get_all_data('tbl_mesin');

    foreach ($arr_mesin->result() as $key) {
      $ip             = $key->ip;
      $password_mesin = $key->password;
    }

    if($ip != "")
    {
      $Connect = fsockopen($ip, "80", $errno, $errstr, 1);
      if(!$Connect){
        http_response_code(400);
        $return = [
          'code' => 400,
          'description' => '[X002]Tidak terkoneksi dengan finger print, silahkan coba kembali',
        ];

        echo json_encode($return);
        exit();
      }

      if($Connect)
      {
        $soap_request="<GetAttLog><ArgComKey xsi:type=\"xsd:integer\">".$password_mesin."</ArgComKey><Arg><PIN xsi:type=\"xsd:integer\">All</PIN></Arg></GetAttLog>";
        $newLine="\r\n";
        fputs($Connect, "POST /iWsService HTTP/1.0".$newLine);
        fputs($Connect, "Content-Type: text/xml".$newLine);
        fputs($Connect, "Content-Length: ".strlen($soap_request).$newLine.$newLine);
        fputs($Connect, $soap_request.$newLine);
        $buffer="";

        //while($Response=fgets($Connect, 1024))
        while($Response=fgets($Connect, 4096))
        {
          $buffer=$buffer.$Response;
        }

        $buffer=Parse_Data($buffer,"<GetAttLogResponse>","</GetAttLogResponse>");
        $buffer=explode("\r\n",$buffer);
        $no = 1;


        for($a=0;$a<count($buffer);$a++)
        {
          $data     = Parse_Data_old($buffer[$a],"<Row>","</Row>");
          $PIN      = Parse_Data_old($data,"<PIN>","</PIN>");
          $DateTime = Parse_Data_old($data,"<DateTime>","</DateTime>");
          $angka = "518.";
          $full_pin = $angka.$PIN;
          if(!empty($DateTime)){
            $ccd[] = $this->insert_into_db($full_pin, $DateTime, $awal, $akhir);
          }
        }

        $return = [
          'code'        => 200,
          'description' => 'Get Data Success'
        ];

        echo json_encode($return);
        exit();
      } 
    }
  }

  public function insert_into_db($fullnik, $datetime, $awal, $akhir)
  {
    // jika kondisi $datetime diantara tanggal cutoff
    $arr_tgl = array();
    $awal_cons = $awal;
    $xxx = strtotime($datetime);
    while(strtotime($awal) <= strtotime($akhir))
    {
      if(date('l', strtotime($awal)) != 'Saturday' && date('l', strtotime($awal)) != 'Sunday'){

        if(date('Y-m-d', strtotime($datetime)) == $awal){
          $table = 'tbl_absensi_local';
          $data = [
            'nik'    => $fullnik,
            'tgljam' => $datetime
          ];
          $exec = $this->mcore->insert($table, $data);

          if($exec === true){
            $x = $this->db->last_query();
            return "ok $x<br>";
            exit();
          }else{
            return " <br>";
            exit();
          }
        }

      }

      $awal = date('Y-m-d', strtotime("+1 day", strtotime($awal)));
    }
  }

}

/* End of file MAttendanceController.php */
/* Location: ./application/config/MAttendanceController.php */