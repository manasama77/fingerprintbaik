<?php
if($arr->num_rows() == 0){
?>
  <tr>
    <td colspan="3" class="text-center">-</td>
  </tr>
<?php 
}else{
  foreach ($arr->result() as $key) {
  ?>
    <tr>
      <td><?=$key->id_mesin;?></td>
      <td><a href="#" id="ip"><?=$key->ip;?></a></td>
      <td><a href="#" id="password"><?=$key->password;?></a></td>
    </tr>
<?php
  }
}
?>

<script type="text/javascript">
  $('#ip').editable({
    type: 'text',
    pk: 1,
    id: 'id_mesin',
    name: 'ip',
    url: '<?=site_url('mesin_ip_save');?>',
    title: 'Enter New IP Address'
  });

  $('#password').editable({
    type: 'text',
    pk: 1,
    id: 'id_mesin',
    name: 'password',
    url: '<?=site_url('mesin_password_save');?>',
    title: 'Enter New Password'
  });
</script>