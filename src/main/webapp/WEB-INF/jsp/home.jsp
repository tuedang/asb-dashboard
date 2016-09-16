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
    <!-- Small boxes (Stat box) -->
    <div class="row">
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
          <div class="inner">
            <h3>150</h3>

            <p>Theft Report</p>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-aqua">
          <div class="inner">
            <h3>53<sup style="font-size: 20px">%</sup></h3>

            <p>Freeze Device</p>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-yellow">
          <div class="inner">
            <h3>44</h3>

            <p>Policy Error</p>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-red">
          <div class="inner">
            <h3>65</h3>

            <p>Data At Risk</p>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <!-- ./col -->
    </div>
    <!-- /.row -->
    <!-- Main row -->
    <div class="row">
      <!-- Left col -->
      <section class="col-lg-12 connectedSortable">
          <div class="row">
              <div class="col-xs-12">
                  <div class="box">
                      <div class="box-header">
                          <h3 class="box-title">Data Table With Full Features</h3>
                      </div>
                      <!-- /.box-header -->
                      <div class="box-body">
                          <table id="detailTable" class="table table-bordered table-striped">
                              <thead>
                              <tr>
                                  <th>Rendering engine</th>
                                  <th>Browser</th>
                                  <th>Platform(s)</th>
                                  <th>Engine version</th>
                                  <th>CSS grade</th>
                              </tr>
                              </thead>
                              <tbody>
                              <tr>
                                  <td>Trident</td>
                                  <td>Internet
                                      Explorer 4.0
                                  </td>
                                  <td>Win 95+</td>
                                  <td> 4</td>
                                  <td>X</td>
                              </tr>
                              <tr>
                                  <td>Trident</td>
                                  <td>Internet
                                      Explorer 5.0
                                  </td>
                                  <td>Win 95+</td>
                                  <td>5</td>
                                  <td>C</td>
                              </tr>
                              <tr>
                                  <td>Trident</td>
                                  <td>Internet
                                      Explorer 5.5
                                  </td>
                                  <td>Win 95+</td>
                                  <td>5.5</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Trident</td>
                                  <td>Internet
                                      Explorer 6
                                  </td>
                                  <td>Win 98+</td>
                                  <td>6</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Trident</td>
                                  <td>Internet Explorer 7</td>
                                  <td>Win XP SP2+</td>
                                  <td>7</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Trident</td>
                                  <td>AOL browser (AOL desktop)</td>
                                  <td>Win XP</td>
                                  <td>6</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Firefox 1.0</td>
                                  <td>Win 98+ / OSX.2+</td>
                                  <td>1.7</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Firefox 1.5</td>
                                  <td>Win 98+ / OSX.2+</td>
                                  <td>1.8</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Firefox 2.0</td>
                                  <td>Win 98+ / OSX.2+</td>
                                  <td>1.8</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Firefox 3.0</td>
                                  <td>Win 2k+ / OSX.3+</td>
                                  <td>1.9</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Camino 1.0</td>
                                  <td>OSX.2+</td>
                                  <td>1.8</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Camino 1.5</td>
                                  <td>OSX.3+</td>
                                  <td>1.8</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Netscape 7.2</td>
                                  <td>Win 95+ / Mac OS 8.6-9.2</td>
                                  <td>1.7</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Netscape Browser 8</td>
                                  <td>Win 98SE+</td>
                                  <td>1.7</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Netscape Navigator 9</td>
                                  <td>Win 98+ / OSX.2+</td>
                                  <td>1.8</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.0</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td>1</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.1</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td>1.1</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.2</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td>1.2</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.3</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td>1.3</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.4</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td>1.4</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.5</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td>1.5</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.6</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td>1.6</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.7</td>
                                  <td>Win 98+ / OSX.1+</td>
                                  <td>1.7</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Mozilla 1.8</td>
                                  <td>Win 98+ / OSX.1+</td>
                                  <td>1.8</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Seamonkey 1.1</td>
                                  <td>Win 98+ / OSX.2+</td>
                                  <td>1.8</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Gecko</td>
                                  <td>Epiphany 2.20</td>
                                  <td>Gnome</td>
                                  <td>1.8</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>Safari 1.2</td>
                                  <td>OSX.3</td>
                                  <td>125.5</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>Safari 1.3</td>
                                  <td>OSX.3</td>
                                  <td>312.8</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>Safari 2.0</td>
                                  <td>OSX.4+</td>
                                  <td>419.3</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>Safari 3.0</td>
                                  <td>OSX.4+</td>
                                  <td>522.1</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>OmniWeb 5.5</td>
                                  <td>OSX.4+</td>
                                  <td>420</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>iPod Touch / iPhone</td>
                                  <td>iPod</td>
                                  <td>420.1</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Webkit</td>
                                  <td>S60</td>
                                  <td>S60</td>
                                  <td>413</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 7.0</td>
                                  <td>Win 95+ / OSX.1+</td>
                                  <td>-</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 7.5</td>
                                  <td>Win 95+ / OSX.2+</td>
                                  <td>-</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 8.0</td>
                                  <td>Win 95+ / OSX.2+</td>
                                  <td>-</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 8.5</td>
                                  <td>Win 95+ / OSX.2+</td>
                                  <td>-</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 9.0</td>
                                  <td>Win 95+ / OSX.3+</td>
                                  <td>-</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 9.2</td>
                                  <td>Win 88+ / OSX.3+</td>
                                  <td>-</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera 9.5</td>
                                  <td>Win 88+ / OSX.3+</td>
                                  <td>-</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Opera for Wii</td>
                                  <td>Wii</td>
                                  <td>-</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Nokia N800</td>
                                  <td>N800</td>
                                  <td>-</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Presto</td>
                                  <td>Nintendo DS browser</td>
                                  <td>Nintendo DS</td>
                                  <td>8.5</td>
                                  <td>C/A<sup>1</sup></td>
                              </tr>
                              <tr>
                                  <td>KHTML</td>
                                  <td>Konqureror 3.1</td>
                                  <td>KDE 3.1</td>
                                  <td>3.1</td>
                                  <td>C</td>
                              </tr>
                              <tr>
                                  <td>KHTML</td>
                                  <td>Konqureror 3.3</td>
                                  <td>KDE 3.3</td>
                                  <td>3.3</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>KHTML</td>
                                  <td>Konqureror 3.5</td>
                                  <td>KDE 3.5</td>
                                  <td>3.5</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Tasman</td>
                                  <td>Internet Explorer 4.5</td>
                                  <td>Mac OS 8-9</td>
                                  <td>-</td>
                                  <td>X</td>
                              </tr>
                              <tr>
                                  <td>Tasman</td>
                                  <td>Internet Explorer 5.1</td>
                                  <td>Mac OS 7.6-9</td>
                                  <td>1</td>
                                  <td>C</td>
                              </tr>
                              <tr>
                                  <td>Tasman</td>
                                  <td>Internet Explorer 5.2</td>
                                  <td>Mac OS 8-X</td>
                                  <td>1</td>
                                  <td>C</td>
                              </tr>
                              <tr>
                                  <td>Misc</td>
                                  <td>NetFront 3.1</td>
                                  <td>Embedded devices</td>
                                  <td>-</td>
                                  <td>C</td>
                              </tr>
                              <tr>
                                  <td>Misc</td>
                                  <td>NetFront 3.4</td>
                                  <td>Embedded devices</td>
                                  <td>-</td>
                                  <td>A</td>
                              </tr>
                              <tr>
                                  <td>Misc</td>
                                  <td>Dillo 0.8</td>
                                  <td>Embedded devices</td>
                                  <td>-</td>
                                  <td>X</td>
                              </tr>
                              <tr>
                                  <td>Misc</td>
                                  <td>Links</td>
                                  <td>Text only</td>
                                  <td>-</td>
                                  <td>X</td>
                              </tr>
                              <tr>
                                  <td>Misc</td>
                                  <td>Lynx</td>
                                  <td>Text only</td>
                                  <td>-</td>
                                  <td>X</td>
                              </tr>
                              <tr>
                                  <td>Misc</td>
                                  <td>IE Mobile</td>
                                  <td>Windows Mobile 6</td>
                                  <td>-</td>
                                  <td>C</td>
                              </tr>
                              <tr>
                                  <td>Misc</td>
                                  <td>PSP browser</td>
                                  <td>PSP</td>
                                  <td>-</td>
                                  <td>C</td>
                              </tr>
                              <tr>
                                  <td>Other browsers</td>
                                  <td>All others</td>
                                  <td>-</td>
                                  <td>-</td>
                                  <td>U</td>
                              </tr>
                              </tbody>
                              <tfoot>
                              <tr>
                                  <th>Rendering engine</th>
                                  <th>Browser</th>
                                  <th>Platform(s)</th>
                                  <th>Engine version</th>
                                  <th>CSS grade</th>
                              </tr>
                              </tfoot>
                          </table>
                      </div>
                      <!-- /.box-body -->
                  </div>
                  <!-- /.box -->
              </div>
          </div>
      </section>
      <!-- /.Left col -->
    </div>
    <!-- /.row (main row) -->

  </section>
  <!-- /.content -->
</div>


<script type="text/javascript">
$( document ).ready(function() {
	
	var width = $("body").width() - 360;
	var height = $("body").height() + 100;
		
	$("#twitter").width(width).height(height);

    $('#detailTable').DataTable({
        "paging": true,
        "lengthChange": false,
        "searching": false,
        "ordering": true,
        "info": true,
        "autoWidth": false
    });

    $('#filterTable').bootstrapTable({
        url: '/rest/device/list',
        columns: [{
            field: 'esn',
            title: 'ESN'
        }, {
            field: 'category',
            title: 'Category',
            formatter: function (data, row, index) {
                var label;
                switch(row.category) {
                    case 'Frozen': label = 'label-warning'; break;
                    case 'Policy - Errror': label = 'label-danger'; break;
                    case 'Data At-Risk': label = 'label-primary'; break;
                    default: label = 'label-success';break;
                }

                return $('<span>').addClass('label')
                        .addClass(label)
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
});

</script>