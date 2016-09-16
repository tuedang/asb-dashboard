<%@ include file="../layout/taglib.jsp" %>
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Absolute
      <small>Device status</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active">Dashboard</li>
    </ol>
  </section>

  <!-- Main content -->
  <section class="content">
      <!--
      'Theft Reported': 'info',
        'Device Freeze': 'primary',
        'Device Policies': 'warning',
        'Apps & Data At-Risk': 'danger'
      -->
    <!-- Small boxes (Stat box) -->
    <div class="row device-box">
      <div class="col-lg-3 col-xs-6 theft-report category">
        <!-- small box -->
        <div class="small-box bg-aqua">
          <div class="inner">
            <span class="new-box-stream label label-danger">-1</span>
            <h3>150</h3>
            <p>Theft Reported</p>
          </div>
          <div class="icon">
            <i class="ion ion-bag"></i>
          </div>
          <a href="#" class="small-box-footer" data-filter="Theft Report">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-xs-6 frozen category">
        <!-- small box -->
        <div class="small-box bg-green">
          <div class="inner">
              <span class="new-box-stream label label-danger"></span>
              <h3>53<sup style="font-size: 20px">%</sup></h3>
            <p>Frozen</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
          <a href="#" class="small-box-footer" data-filter="Device Freeze">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-xs-6 policy-error category">
        <!-- small box -->
        <div class="small-box bg-yellow">
          <div class="inner">
              <span class="new-box-stream label label-danger"></span>
            <h3>44</h3>
            <p>Policy - Error</p>
          </div>
          <div class="icon">
            <i class="ion ion-person-add"></i>
          </div>
          <a href="#" class="small-box-footer" data-filter="Device Policies">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-xs-6 data-at-risk category">
        <!-- small box -->
        <div class="small-box bg-red">
          <div class="inner">
              <span class="new-box-stream label label-warning"></span>
            <h3>65</h3>
            <p>Data At-Risk</p>
          </div>
          <div class="icon">
            <i class="ion ion-pie-graph"></i>
          </div>
          <a href="#" class="small-box-footer" data-filter="Apps & Data At-Risk">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
    </div>
    <!-- /.row -->
    <!-- Main row -->
    <div class="row">
      <!-- Left col -->
      <section class="col-lg-7 connectedSortable">
          <div class="row">
              <div class="col-xs-12">
                  <div class="box">
                      <div class="box-header">
                          <h3 class="box-title">Device reporting</h3>
                      </div>
                      <div class="box-body table-responsive no-padding table-no-bordered">
                          <table id="filterTable" data-toggle="table" class="table table-no-bordered">
                          </table>
                      </div>
                  </div>
                  <!-- /.box -->
              </div>
          </div>
      </section>
      <!-- /.Left col -->

      <!-- right col (We are only adding the ID to make the widgets sortable)-->
      <section class="col-lg-5 connectedSortable">
          <div class="row">
              <div class="col-xs-12">
                  <div class="box">
                      <div class="box-header">
                          <h3 class="box-title">Responsive Hover Table</h3>

                          <div class="box-tools">
                              <div class="input-group input-group-sm" style="width: 150px;">
                                  <input type="text" name="table_search" class="form-control pull-right" placeholder="Search">

                                  <div class="input-group-btn">
                                      <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <!-- /.box-header -->
                      <div class="box-body table-responsive no-padding">
                          <table class="table table-hover">
                              <tr>
                                  <th>ID</th>
                                  <th>User</th>
                                  <th>Date</th>
                                  <th>Status</th>
                                  <th>Reason</th>
                              </tr>
                              <tr>
                                  <td>183</td>
                                  <td>John Doe</td>
                                  <td>11-7-2014</td>
                                  <td><span class="label label-success">Approved</span></td>
                                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                              </tr>
                              <tr>
                                  <td>219</td>
                                  <td>Alexander Pierce</td>
                                  <td>11-7-2014</td>
                                  <td><span class="label label-warning">Pending</span></td>
                                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                              </tr>
                              <tr>
                                  <td>657</td>
                                  <td>Bob Doe</td>
                                  <td>11-7-2014</td>
                                  <td><span class="label label-primary">Approved</span></td>
                                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                              </tr>
                              <tr>
                                  <td>175</td>
                                  <td>Mike Doe</td>
                                  <td>11-7-2014</td>
                                  <td><span class="label label-danger">Denied</span></td>
                                  <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
                              </tr>
                          </table>
                      </div>
                      <!-- /.box-body -->
                  </div>
                  <!-- /.box -->
              </div>
          </div>
      </section>
      <!-- right col -->
    </div>
    <!-- /.row (main row) -->

  </section>
  <!-- /.content -->
</div>
  
<script src="/resources/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">

$( document ).ready(function() {
	
//	var width = $("body").width() - 360;
//	var height = $("body").height() + 100;
//
//	$("#twitter").width(width).height(height);

    var categoryClasses = {
        'Theft Report': 'info',
        'Device Freeze': 'primary',
        'Device Policies': 'warning',
        'Apps & Data At-Risk': 'danger'
    };

    var statusClasses = {
        'changed': 'success',
        'viewedx': 'info',
        '1': 'success',
        '2': 'warning',
        '3': 'danger'
    };

    var table_filter_query = '';
    var $filterTable = $('#filterTable');

    function loadHeaderBox() {
        $.getJSON('/rest/device/status', function (statuses) {
            $.each(statuses, function (index, statusObj) {
                $deviceBoxElement = $('.device-box')
                        .find('[data-filter="'+ statusObj.status +'"]')
                        .parents('div.category');
                $deviceBoxElement.find('.inner h3').text(statusObj.quantity);
                if (statusObj.newStream != 0) {
                    $deviceBoxElement.find('span.new-box-stream').text(statusObj.newStream);
                } else {
                    $deviceBoxElement.find('span.new-box-stream').empty();
                }
            });
        });
    };
    loadHeaderBox();

    $filterTable.bootstrapTable({
        url: '/rest/device/list',
        queryParams: function (p) {
            return { cat: table_filter_query };
        },
        onClickRow: function (item, $element) {
            if(item.streamStatus=='VIEWED') return;
            $.post('/rest/device/'+ item.id+'/viewed', {}, function (data) {
                loadHeaderBox();
                $element.removeClass(statusClasses['changed']);
            });
        },
        rowStyle: function (row, index) {
            var useStyle = statusClasses[row.streamStatus.toLowerCase()];
            if (useStyle != null) {
                return {classes: useStyle};
            }
            return {};
        },
        columns: [{
            field: 'esn',
            title: 'ESN'
        }, {
            field: 'category',
            title: 'Category',
            formatter: function (data, row, index) {
                return $('<span>')
                        .addClass('label').addClass('label-'+categoryClasses[row.category])
                        .text(data)
                        .wrap('<p/>').parent().html();
            }
        }, {
            field: 'lastUpdated',
            title: 'Date',
            formatter: function (data, row, index) {
                return moment(data).format('DD/MM/YYYY h:mm:ss A');
            }
        }, {
            field: 'status',
            title: 'Reason'
        }, ]
    });

    $('.device-box .small-box-footer').click(function (e) {
        table_filter_query = $(this).data('filter');
        $filterTable.bootstrapTable('refresh');
        return false;
    })
});

</script>