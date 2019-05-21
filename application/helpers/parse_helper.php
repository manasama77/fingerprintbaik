<?php
function Parse_Data_old($data,$p1,$p2)
{
  $data=" ".$data;
  $hasil="";
  $awal=strpos($data,$p1);
  if($awal!="")
  {
    $akhir=strpos(strstr($data,$p1),$p2);
    if($akhir!="")
    {
      $hasil=substr($data,$awal+strlen($p1),$akhir-strlen($p1));
    }
  }
  return $hasil;  
}

function Parse_Data($data,$p1,$p2)
{
  $data = " ".$data;
  $hasil="";
  $awal=strpos($data,$p1);
  if($awal!="")
  {
    $akhir=strpos(strstr($data,$p1),$p2);
    if($akhir!="")
    {
      $hasil=substr($data, $awal+strlen($p1),$akhir-strlen($p1));
    }
  }
  return $hasil;  
}

function get_text_between_tags($string, $tagname) {
  $pattern = "/<$tagname\b[^>]*>(.*?)<\/$tagname>/is";
  preg_match_all($pattern, $string, $matches);
  if(!empty($matches[1])){
    return $matches[1];
  }else{
    return array();
  }
}