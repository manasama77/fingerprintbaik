<div class="row">
  <div class="col-12">
    <div class="card shadow mb-4">

      <div class="card-header">
        <h6 class="m-0 font-weight-bold text-primary">
          <div class="float-right">
            <button class="btn btn-primary btn-sm" id="refresh" data-toggle="tooltip" title="Ambil Data dari Mesin Fingerprint"><i class="fas fa-sync"></i></button>
            <button class="btn btn-danger btn-sm" id="upload" data-toggle="tooltip" title="Upload Data Local ke Live Server"><i class="fas fa-upload"></i></button>
          </div>
          Data Presensi <small class="text-muted">@Fingerprint</small>
        </h6>
      </div>

      <div class="collapse show" id="collapseCardExample">
        <div class="card-body">

          <table id="vtable" class="table table-bordered table-inverse table-hover">
            <thead>
              <tr>
                <th>#</th>
                <th>NIK</th>
                <th>TANGGAL & JAM</th>
              </tr>
            </thead>
            <tbody id="vdata">
            </tbody>
          </table>

        </div>
      </div>

    </div>
  </div>
</div>

<form id="form" role="form">

  <div class="modal fade" id="modal-id">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Registrasi Karyawan Baru</h4>
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        </div>
        <div class="modal-body">

          <div class="form-group">
            <label for="nama">Nama Lengkap</label>
            <input type="text" class="form-control" id="nama" name="nama" placeholder="Nama Lengkap">
          </div>
          <div class="form-group">
            <label for="nik_b">NIK</label>
            <input type="number" class="form-control" id="nik_a" name="nik_a" placeholder="518" value="518" readonly="true">
            <input type="number" class="form-control" id="nik_b" name="nik_b" placeholder="Tahun Masuk" min="0" max="9999">
            <input type="number" class="form-control" id="nik_c" name="nik_c" placeholder="Kode Unik" min="0" max="9999">
          </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary">Save</button>
        </div>
      </div>
    </div>
  </div>

</form>

<script type="text/javascript">
  $.fn.editable.defaults.mode = 'inline';

  $(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();

    $('#vtable').DataTable();
    getData();

    $('#refresh').on('click', function(){
      syncData();
    });

    $('#upload').on('click', function(){
      uploadProcess();
    });

    // FORM VALIDATE
    $('#form').validate({
      debug: true,
      errorClass: 'help-inline text-danger',
      rules:{
        nama:{
          required:true
        },
        nik_b:{
          required:true,
          minlength:4,
          min:1990,
          max:9999
        },
        nik_c:{
          required:true,
          minlength:4,
          max:9999
        }
      },
      submitHandler: function( form ) {
        $.ajax({
          url         : '<?=site_url('karyawan/create');?>',
          method      : 'POST',
          data        : $('#form').serialize(),
          beforeSend  : function(){
            $.blockUI({ message: '<i class="fa fa-spinner fa-spin"></i> Silahkan Tunggu...' });
             $('table').DataTable().clear();
             $('table').DataTable().destroy();
          },
          statusCode  : {
            404: function() {
              $.unblockUI();
              Swal.fire({
                title: 'Warning!',
                text: 'Page Not Found.',
                type: 'error'
              });
            },
            500: function() {
              $.unblockUI();
              Swal.fire({
                title: 'Warning!',
                text: 'Not connect with database.',
                type: 'error'
              });
            }
          }
        })
        .done(function(result){
          result = $.parseJSON(result);
          if(result.code == 200){
            Swal.fire({
              title: 'Success!',
              text: 'Silahkan Cek Pada Mesin Fingerprint',
              type: 'success'
            });
          }else{
            Swal.fire({
              title: 'Error!',
              text: result.description,
              type: 'error'
            });
          }
          $.unblockUI();
        });
      }
    });
    // END FORM VALIDATE


  });

  function getData()
  {
    $("#vtable").DataTable().destroy();
    $.blockUI({ message: '<i class="fa fa-spinner fa-spin"></i> Silahkan Tunggu...' });
    setTimeout(function(){
      a = $('#awal').text();
      b = $('#akhir').text();
      $('#vdata').load('<?=site_url('attendance/data');?>', { a:a, b:b }, function(result){
        result = $.parseJSON(result);
        console.log(result);
        $(this).html('');

        if(result.code == 400){
          Swal.fire({
            title: 'Error!',
            text: result.description,
            type: 'error'
          });
        }else{
          $(this).html(result.data);
          $('#vtable').DataTable({
            dom: 'Bfrtip',
            buttons: ['excel', 'pdf'],
            pageLength: 50
          });
        }
        $.unblockUI();
      });
    }, 1000);
  }

  function syncData()
  {
    var awal = $('#awal').text();
    var akhir = $('#akhir').text();
    $("#vtable").DataTable().destroy();

    $.ajax({
      url: '<?=site_url('attendance/sync');?>',
      method: 'post',
      data: { awal:awal, akhir:akhir },
      beforeSend: function(){
        $.blockUI({ message: '<i class="fa fa-spinner fa-spin"></i> Silahkan Tunggu...' });
      },
      statusCode:{
        400: function(){
          Swal.fire({
            title: 'Error!',
            text: 'Tidak terkoneksi dengan fingerprint',
            type: 'error'
          });
          $.unblockUI();
        }
      }
    })
    .done(function(result){
      console.log(result);
      result = $.parseJSON(result);
      console.log(result);
      //$(this).html('');

      if(result.code == 400){
        Swal.fire({
          title: 'Error!',
          text: result.description,
          type: 'error'
        });
      }else{
        //$('#vdata').html(result.data);
        getData();
        Swal.fire({
          title: 'Success!',
          text: 'Get Data Fingerprint Success',
          type: 'success'
        });
        /*$('#vtable').DataTable({
          dom: 'Bfrtip',
          buttons: ['excel', 'pdf'],
          pageLength: 50
        });*/
        $.unblockUI();
      }
    });
  }

  function destroy(no)
  {
    $.get( "<?=site_url('karyawan_destroy_karyawan_finger/');?>"+no, function( data ) {
      console.log(data);  
      data = $.parseJSON(data);
      if(data.code == 400){
        Swal.fire({
          title: 'Error!',
          text: data.description,
          type: 'error'
        });
      }else{
        if(data.code == 200){
          Swal.fire({
            title: 'Success!',
            text: data.description,
            type: 'success'
          });
        }
      }

      getData();
    });
  }

  function upload(no, nik, nama)
  {
    $.get( "<?=site_url('karyawan_set_karyawan_finger/');?>"+no+'/'+nik+'/'+nama, function( data ) {
      console.log(data);
      data = $.parseJSON(data);
      if(data.code == 400){
        Swal.fire({
          title: 'Error!',
          text: data.description,
          type: 'error'
        });
      }else{
        if(data.code == 200){
          Swal.fire({
            title: 'Success!',
            text: data.description,
            type: 'success'
          });
        }
      }

      getData();
    });
  }

  function uploadProcess()
  {
    a = $('#awal').text();
    b = $('#akhir').text();
    $.ajax({
      url: '<?=site_url('attendance/dataSend');?>',
      method: 'POST',
      dataType: 'JSON',
      data: { a:a, b:b },
      beforeSend: function(){
        $.blockUI();
      }
    })
    .done(function(result){
      console.log(result);
      $.ajax({
        url: 'http://simpres.baytulikhtiar.com/api/absensi',
        method: 'POST',
        dataType: 'JSON',
        data: { result:result }
      })
      .done(function(result){
        console.log(result);
        Swal.fire({
          title: 'Success!',
          text: 'Upload Data Absensi.',
          type: 'success'
        });
      });
      $.unblockUI();
    });

  }
</script>