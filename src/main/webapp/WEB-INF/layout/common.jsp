<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.5 -->
  <link rel="stylesheet" href="/resources/bootstrap-3.3.7/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style - Added in Template attribute -->
  <!-- AdminLTE Skin - Added in Template attribute  -->

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->


	<tilesx:useAttribute id="stylesheets" name="stylesheets" classname="java.util.List" />
	<tilesx:useAttribute id="javascripts" name="javascripts" classname="java.util.List" />
	
 	<c:forEach var="css" items="${stylesheets}">
    	<link rel="stylesheet" type="text/css" href="<c:url value="${css}"/>">
    </c:forEach>

	<title><tiles:getAsString name="title" /></title>
</head>
<body class="hold-transition fixed skin-blue sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="/" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>bs</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Absolute</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Notifications: style can be found in dropdown.less -->
          <li class="dropdown notifications-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-bell-o"></i>
              <span class="label label-warning">10</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 10 notifications</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-users text-aqua"></i> 5 devices change status today
                    </a>
                  </li>
                </ul>
              </li>
              <li class="footer"><a href="#">View all</a></li>
            </ul>
          </li>
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="<spring:url value='/resources/profile-pictures/absolute.png' />" class="user-image" alt="User Image">
              <span class="hidden-xs"><c:out value="Absolute" /></span><!--${user.firstName} ${user.lastName}-->
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src='<spring:url value="/resources/profile-pictures/absolute.png" />' class="img-circle" alt="User Image">

                <p>
                <c:out value="${user.firstName} ${user.lastName}" />
                  <small>Member since Nov. 2012</small>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="<spring:url value='/logout'/>" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
        </ul>
      </div>
    </nav>
  </header>

  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<spring:url value='/resources/profile-pictures/absolute.png'/>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><c:out value="Absolute" /></p>
        </div>
      </div>

      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">DDS 6</li>
        <li>
          <a href="../explore.html">
            <i class="fa fa-th"></i> <span>Explore</span>
          </a>
        </li>
        <li>
          <a href="../report.html">
            <i class="fa fa-stack-overflow"></i> <span>Reports</span>
          </a>
        </li>
        <li>
          <a href="../device_groups.html">
            <i class="fa fa-object-group"></i> <span>Device Groups</span>
          </a>
        </li>
        <li>
          <a href="../device_policies.html">
            <i class="fa fa-map-o"></i> <span>Device Policies</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Administration</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../edd.html"><i class="fa fa-circle-o"></i> Endpoint Data Discovery Rules</a></li>
            <li><a href="../../sw.html"><i class="fa fa-circle-o"></i> Software Catalog</a></li>
          </ul>
        </li>
        <li class="header">DDS 5</li>
        <li><a href="/"><i class="fa fa-home"></i> <span>Home</span></a></li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-stack-overflow"></i> <span>Reports</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../edd.html"><i class="fa fa-circle-o"></i> Endpoint Data Discovery Rules</a></li>
            <li><a href="../../sw.html"><i class="fa fa-circle-o"></i> Software Catalog</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span>Administration</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../edd.html"><i class="fa fa-circle-o"></i> Endpoint Data Discovery Rules</a></li>
            <li><a href="../../sw.html"><i class="fa fa-circle-o"></i> Software Catalog</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-database"></i> <span>Data and Device Security</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../edd.html"><i class="fa fa-circle-o"></i> Endpoint Data Discovery Rules</a></li>
            <li><a href="../../sw.html"><i class="fa fa-circle-o"></i> Software Catalog</a></li>
          </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-gg"></i> <span>Investigations</span> <i class="fa fa-angle-left pull-right"></i>
          </a>
          <ul class="treeview-menu">
            <li><a href="../../edd.html"><i class="fa fa-circle-o"></i> Endpoint Data Discovery Rules</a></li>
            <li><a href="../../sw.html"><i class="fa fa-circle-o"></i> Software Catalog</a></li>
          </ul>
        </li>
        <li><a href="#"><i class="fa fa-file-word-o"></i> <span>Documentation</span></a></li>
        <li><a href="#"><i class="fa fa-support"></i> <span>Support</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  
	<tiles:insertAttribute name="body" />

  <!-- /.content-wrapper -->

	<!-- Footer -->
	<tiles:insertAttribute name="footer" />

  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.1.4 -->
<script src="/resources/jquery/2.1.4/jquery.min.js"></script>

<link rel="stylesheet" href="/resources/bootstrap-table/bootstrap-table.css">
<script src="/resources/bootstrap-table/bootstrap-table.js"></script>
<link rel="stylesheet" href="/resources/app/app-style.css">

<!-- Bootstrap 3.3.7 -->
<script src="/resources/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/momentjs/moment.min.js"></script>
<!-- SlimScroll -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-slimScroll/1.3.6/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/fastclick/1.0.6/fastclick.min.js"></script>
<!-- AdminLTE App - Added in Template attribute-->
<!-- AdminLTE for demo purposes - Added in Template attribute -->

	<!-- 	All JS Files -->
	<c:forEach var="script" items="${javascripts}">
        <script src="<c:url value="${script}"/>"></script>
    </c:forEach> 
    
</body>
</html>
