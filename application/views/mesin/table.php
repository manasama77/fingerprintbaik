<div class="row">
  <div class="col-12">
    <div class="card shadow mb-4">

      <div class="card-header">
          <h6 class="m-0 font-weight-bold text-primary">
            List Mesin
            <div class="float-right">
              <button class="btn btn-primary btn-sm" id="refresh"><i class="fas fa-sync"></i></button>
            </div>
          </h6>
      </div>

      <div class="collapse show" id="collapseCardExample">
        <div class="card-body">

          <table class="table table-bordered table-inverse table-hover">
            <thead>
              <tr>
                <th>#</th>
                <th>IP Address</th>
                <th>Password</th>
              </tr>
            </thead>
            <tbody id="vdata">
              <tr>
                <td colspan="3" class="text-center">-</td>
              </tr>
            </tbody>
          </table>

        </div>
      </div>

    </div>
  </div>
</div>

<script type="text/javascript">
  $.fn.editable.defaults.mode = 'inline';

  $(document).ready(function(){
    console.log("OK");
    getData();

    $('#refresh').on('click', function(){
      console.log("REFRESH");
      getData();
    });
  });

  function getData()
  {
    $.blockUI({ message: '<i class="fa fa-spinner fa-spin"></i> Silahkan Tunggu...' });
    $('#vdata').load('<?=site_url('mesin_data');?>', function(result){
      result = $.parseJSON(result);
      $(this).html(result);
      $.unblockUI();
    });
  }
</script>