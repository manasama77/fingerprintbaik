<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MKaryawanController extends CI_Controller {

  public function __construct()
  {
    parent::__construct();
    $this->load->model('M_core', 'mcore');
  }

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

  public function data()
  {
    $table = 'tbl_karyawan';
    $arr_karyawan = $this->mcore->get_all_data($table);

    foreach ($arr_karyawan->result() as $key) {
      $nested = '<tr>';
      $nested .= '<td>';
      $nested .= $key->id_karyawan;
      $nested .= '</td>';
      $nested .= '<td>';
      $nested .= $key->nama;
      $nested .= '</td>';
      $nested .= '<td>';
      $nested .= $key->nik;
      $nested .= '</td>';
      $nested .= '</tr>';
      $ins[] = $nested;
    }

    $return = [
      'code'        => 200,
      'description' => 'Get Data Berhasil',
      'data'        => $ins,
    ];

    echo json_encode($return);
  }

  public function create()
  {
    $nama       = $this->input->post('nama');
    $nik_a      = $this->input->post('nik_a');
    $nik_b      = $this->input->post('nik_b');
    $nik_c      = $this->input->post('nik_c');
    $fullnik_db = $nik_a.".".$nik_b.".".$nik_c;
    $fullnik_fp = $nik_b.".".$nik_c;
    $table      = 'tbl_karyawan';

    $check = $this->mcore->get_single_data($table, ['nik' => $fullnik_db]);

    if($check->num_rows() > 0){
      $exec = $this->mcore->update($table, ['nik' => $fullnik_db], ['nama' => $nama]);
    }else{
      $data = [
        'nama' => $nama,
        'nik'  => $fullnik_db
      ];
      $exec = $this->mcore->insert($table, $data);
    }

    $result = $this->set_karyawan_finger($fullnik_fp, $nama);
    echo $result;
  }

  public function get_karyawan_finger()
  {
    $exec = $this->truncate_table('tbl_karyawan');
    $this->load->helper('parse_helper');

    $arr_mesin = $this->mcore->get_all_data('tbl_mesin');

    foreach ($arr_mesin->result() as $key) {
      $ip             = $key->ip;
      $password_mesin = $key->password;
    }

    if($ip != "")
    {
      $Connect = fsockopen($ip, "80", $errno, $errstr, 1);
      /*if($Connect)
      {*/
        //$soap_request="<GetUserInfo><ArgComKey xsi:type=\"xsd:integer\">".$password_mesin."</ArgComKey><Arg><PIN xsi:type=\"xsd:integer\">All</PIN><Name xsi:type=\"xsd:integer\">All</Name></Arg></GetUserInfo>";
        $soap_request="
        <GetUserInfo>
          <ArgComKey xsi:type=\"xsd:integer\">".$password_mesin."</ArgComKey>
          <Arg><Row xsi:type=\"xsd:integer\">ALL</Row></Arg>
        </GetUserInfo>";
        $newLine="\r\n";
        fputs($Connect, "POST /iWsService HTTP/1.0".$newLine);
        fputs($Connect, "Content-Type: text/xml".$newLine);
        fputs($Connect, "Content-Length: ".strlen($soap_request).$newLine.$newLine);
        fputs($Connect, $soap_request.$newLine);

        $buffer="";
        while($Response=fgets($Connect, 4096)){ $buffer=$buffer.$Response; }

        $buffer=Parse_Data($buffer,"<GetUserInfoResponse>","</GetUserInfoResponse>");
        $buffer=explode("\r\n",$buffer);

        $ins = array();
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

          if($name != ''){
            $nested = '<tr>';
            $nested .= '<td>';
            $nested .= $no;
            $nested .= '</td>';
            $nested .= '<td>';
            $nested .= $name;
            $nested .= '</td>';
            $nested .= '<td>';
            $nested .= $fullnik;
            $nested .= '</td>';

            $nested .= '</tr>';
            $ins[] = $nested;

            $exec = $this->insert_into_db($no, $name, $fullnik);

            if($exec === FALSE){
              $return = [
                'code' => 400,
                'description' => '[DB001]Something wrong while write into database, please try again...',
              ];

              return json_encode($return);
              exit();    
            }
          }

        }

        if(count($ins) > 1){
          $return = [
            'code'        => 200,
            'description' => 'Get Data Success',
            'data'        => $ins,
          ];
          
          return json_encode($return);
          exit();
        }else{
          $return = [
            'code' => 400,
            'description' => '[X002]Tidak terkoneksi dengan finger print, silahkan coba kembali',
          ];

          return json_encode($return);
          exit();
        }

      /*}else{
        $return = [
          'code' => 400,
          'description' => 'Tidak terkoneksi dengan finger print, silahkan coba kembali',
        ];

        return json_encode($return);
        exit();
      }*/
    }

  }

  public function set_karyawan_finger($nik, $nama)
  {
    $this->load->helper('parse_helper');
    $arr_mesin = $this->mcore->get_all_data('tbl_mesin');
    foreach ($arr_mesin->result() as $key) {
      $ip             = $key->ip;
      $password_mesin = $key->password;
    }

    if($ip != "")
    {
      $Connect = fsockopen($ip, '80', $errno, $errstr, 1);
      /*if($Connect)
      {*/
        $soap_request="<SetUserInfo><ArgComKey Xsi:type=\"xsd:integer\">".$password_mesin."</ArgComKey><Arg><PIN>".$nik."</PIN><PIN2>".$nik."</PIN2><Name>".$nama."</Name></Arg></SetUserInfo>";
        $newLine="\r\n";
        fputs($Connect, "POST /iWsService HTTP/1.0".$newLine);
        fputs($Connect, "Content-Type: text/xml".$newLine);
        fputs($Connect, "Content-Length: ".strlen($soap_request).$newLine.$newLine);
        fputs($Connect, $soap_request.$newLine);

        $buffer="";
        while($Response=fgets($Connect, 1024)){ $buffer=$buffer.$Response; }

        if($buffer != "")
        {
          $return = [
            'code'        => 200,
            'description' => 'Set Data Success'
          ];
          
          return json_encode($return);
          exit();
        }else{
          $return = [
            'code'        => 400,
            'description' => 'Set Data Failed'
          ];
          
          return json_encode($return);
          exit();
        }

      /*}else{
        $return = [
          'code' => 400,
          'description' => 'Tidak terkoneksi dengan finger print, silahkan coba kembali',
        ];

        return json_encode($return);
        exit();
      }*/
    }

  }

  public function destroy_karyawan_finger($id_karyawan)
  {
    $arr_karyawan = $this->mcore->get_single_data('tbl_karyawan', ['id_karyawan' => $id_karyawan]);

    foreach ($arr_karyawan->result() as $key) {
      $nama = $key->nama;
      $nik  = substr($key->nik, 4);
    }

    $exec = $this->truncate_table('tbl_karyawan');
    $this->load->helper('parse_helper');

    $arr_mesin = $this->mcore->get_all_data('tbl_mesin');

    foreach ($arr_mesin->result() as $key) {
      $ip             = $key->ip;
      $password_mesin = $key->password;
    }

    if($ip != "")
    {
      $Connect = fsockopen($ip, "80", $errno, $errstr, 1);
      if($Connect)
      {        
        $soap_request="<RemoveUserInfo><ArgComKey Xsi:type=\"xsd:integer\">".$password_mesin."</ArgComKey><Arg><PIN>".$nik."</PIN><Name>".$nama."</Name></Arg></RemoveUserInfo>";
        $newLine="\r\n";
        fputs($Connect, "POST /iWsService HTTP/1.0".$newLine);
        fputs($Connect, "Content-Type: text/xml".$newLine);
        fputs($Connect, "Content-Length: ".strlen($soap_request).$newLine.$newLine);
        fputs($Connect, $soap_request.$newLine);

        $buffer="";
        while($Response=fgets($Connect, 4096)){ $buffer=$buffer.$Response; }

        if($buffer != "")
        {
          $return = [
            'code'        => 200,
            'description' => 'Destroy Data Success'
          ];
          
          echo json_encode($return);
          exit();
        }else{
          $return = [
            'code'        => 400,
            'description' => 'Destroy Data Failed'
          ];
          
          echo json_encode($return);
          exit();
        }

      }else{
        $return = [
          'code' => 400,
          'description' => 'Tidak terkoneksi dengan finger print, silahkan coba kembali',
        ];

        echo json_encode($return);
        exit();
      }
    }

  }

  public function insert_into_db($no, $nama, $fullnik)
  {
    $table = 'tbl_karyawan';
    $data = [
      'id_karyawan'  => $no,
      'nama'         => $nama,
      'nik'          => $fullnik,
      'created_date' => date('Y-m-d H:i:s')
    ];
    $exec = $this->mcore->insert($table, $data);

    return $exec;
  }

  public function truncate_table($table)
  {
    $exec = $this->mcore->truncate($table);
    return $exec;
  }

}

/* End of file MKaryawanController.php */
/* Location: ./application/controllers/MKaryawanController.php */