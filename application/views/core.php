<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Fingerprint Kop.Baik</title>
  <meta name="theme-color" content="#00a90a">
  <link href="<?=base_url();?>favicon.png" rel='shortcut icon'>
  <link href="<?=base_url();?>vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="<?=base_url();?>vendor/jquery-editable/jquery-editable/css/jquery-editable.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="<?=base_url();?>assets/css/sb-admin-2.min.css" rel="stylesheet">


  <!-- CORE JS -->
  <script src="<?=base_url();?>vendor/jquery/jquery.min.js"></script>
  <script src="<?=base_url();?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="<?=base_url();?>vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="<?=base_url();?>vendor/blockui/jquery.blockUI.js"></script>
  <script src="<?=base_url();?>vendor/jquery-editable/jquery-editable/js/jquery-editable-poshytip.min.js"></script>
  <script src="<?=base_url();?>vendor/jquery-validation/jquery.validate.min.js"></script>
  <script src="<?=base_url();?>vendor/jquery-validation/additional-methods.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
  <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
  <!-- END CORE JS -->

  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.18/b-1.5.6/b-html5-1.5.6/datatables.min.css"/>
 
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
  <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/jszip-2.5.0/dt-1.10.18/b-1.5.6/b-html5-1.5.6/datatables.min.js"></script>
  
</head>

<body id="page-top">
  <div id="wrapper">
    <?php $this->load->view('sidebar'); ?>

    <div id="content-wrapper" class="d-flex flex-column">
      <div id="content">

        <?php $this->load->view('navbar'); ?>

        <div class="container-fluid">
          <h1 class="h3 mb-4 text-gray-800"><?=$title;?></h1>
          <?php $this->load->view($container); ?>
        </div>

      </div>

      <?php $this->load->view('footer'); ?>

    </div>
  </div>

  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

</body>

</html>


<script src="<?=base_url();?>assets/js/sb-admin-2.min.js"></script>
<script>
  $(document).ready(function(){
    $.ajax({
      url: 'http://simpres.baytulikhtiar.com/api/cutoff',
      method: 'get',
      dataType: 'json'
    })
    .done(function(result){
      $('#awal').text(result.awal);
      $('#akhir').text(result.akhir);
    });
  });
</script>