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

      /*if($Connect)
      {*/
        //$soap_request="<GetUserInfo><ArgComKey xsi:type=\"xsd:integer\">".$password_mesin."</ArgComKey><Arg><PIN xsi:type=\"xsd:integer\">All</PIN><Name xsi:type=\"xsd:integer\">All</Name></Arg></GetUserInfo>";
        /*$soap_request="
        <GetAttLog>
        <ArgComKey xsi:type=\"xsd:integer\">".$password_mesin."</ArgComKey>
        <Arg><DateTime xsi:type=\"xsd:integer\">2019-01-01</DateTime></Arg>
        </GetAttLog>";*/

        $soap_request="<GetAttLog><ArgComKey xsi:type=\"xsd:integer\">".$password_mesin."</ArgComKey><Arg><PIN xsi:type=\"xsd:integer\">All</PIN></Arg></GetAttLog>";
        $newLine="\r\n";
        fputs($Connect, "POST /iWsService HTTP/1.0".$newLine);
        fputs($Connect, "Content-Type: text/xml".$newLine);
        fputs($Connect, "Content-Length: ".strlen($soap_request).$newLine.$newLine);
        fputs($Connect, $soap_request.$newLine);

        $buffer="";
        while($Response=fgets($Connect, 4096)){ $buffer=$buffer.$Response; }

        $buffer=Parse_Data($buffer,"<GetAttLogResponse>","</GetAttLogResponse>");
        $buffer=explode("\r\n",$buffer);

        count($buffer);
        exit();

        $ins = array();
        $no = 1;
        for($a=0;$a<count($buffer);$a++)
        {

          $angka = "518.";
          $arr_data = $buffer[$a];

          $arr_nik = get_text_between_tags($arr_data, 'pin');
          if(count($arr_nik) == 0){ $nik = ''; }else{ $nik = $arr_nik[0]; }
          $fullnik = $angka.$nik;

          $arr_datetime = get_text_between_tags($arr_data, 'datetime');
          if(count($arr_datetime) == 0){ $datetime = ''; }else{ $datetime = $arr_datetime[0]; }

          if($datetime != ''){
            $nested = '<tr>';
            $nested .= '<td>';
            $nested .= $no;
            $nested .= '</td>';
            $nested .= '<td>';
            $nested .= $fullnik;
            $nested .= '</td>';
            $nested .= '<td>';
            $nested .= $datetime;
            $nested .= '</td>';

            $nested .= '</tr>';
            $ins[] = $nested;

            $exec = $this->insert_into_db($fullnik, $datetime, $awal, $akhir);

            if($exec === FALSE){
              $return = [
                'code' => 400,
                'description' => '[DB001]Something wrong while write into database, please try again...',
              ];

              echo json_encode($return);
              exit();
            }
          }

          $no++;

        }

        $return = [
          'code'        => 200,
          'description' => 'Get Data Success',
          'data'        => $ins
        ];

        echo json_encode($return);
        exit();

      /*if(count($ins) > 1){
        $return = [
          'code'        => 200,
          'description' => 'Get Data Success',
          //'data'        => $ins,
        ];
        
        echo json_encode($return);
        exit();
      }else{
        $return = [
          'code' => 400,
          'description' => '[X002]Tidak terkoneksi dengan finger print, silahkan coba kembali',
        ];

        echo json_encode($return);
        exit();
      }*/
