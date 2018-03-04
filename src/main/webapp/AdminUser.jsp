<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
	<!-- datatable -->
	<!-- <link rel="stylesheet" type="text/css" href="dataTables/css/dataTables.bootstrap.css"> -->
	<link rel="stylesheet" type="text/css" href="dataTables/css/dataTables.responsive.css">
	<link rel="stylesheet" type="text/css" href="dataTables/css/dataTables.tableTools.min.css">
	<link rel="stylesheet" type="text/css" href="dataTables/css/jquery.dataTables.min.css">

    <link rel="stylesheet" type="text/css" href="css/admin.css">

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/metisMenu/jquery.metisMenu.js"></script>
    <script type="text/javascript" src="js/slimscroll/jquery.slimscroll.min.js"></script>
    <script type="text/javascript" src="js/jeditable/jquery.jeditable.js"></script>
	<!-- Data Tables -->
    <script type="text/javascript" src="dataTables/js/jquery.dataTables.js"></script>
    <script type="text/javascript" src="dataTables/js/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="dataTables/js/dataTables.responsive.js"></script>
    <script type="text/javascript" src="dataTables/js/dataTables.tableTools.min.js"></script>
    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/pace/pace.min.js"></script>
    
</head>
<body>

	<div class="wrapper">
		<nav class="navbar-default navbar-static-side">
			<ul class="nav">
				 <li class="nav-header">
                    <div class="people"> 
                    	<span><img alt="image" class="img-circle" src="image/profile_small.jpg" /></span>
                        <a class="dropdown-toggle" href="javascript:;">
                            <span class="clear block name"><strong>柯志慧</strong></span>
                        </a>
                        <a href="loginAdmin.html" class="text-muted text-xs block">退出 <i class="fa fa-sign-out"></i></a>
                    </div>
                </li>
                <li>
                    <a href="AdminProduct.html"><i class="fa fa-th-large"></i> <span class="nav-label">潮品管理</span></a>
                </li>
                <li class="active">
                    <a href="AdminUser.html"><i class="fa fa-user"></i> <span class="nav-label">潮人管理</span></a>
                </li>
                <li>
                    <a href="AdminInfo.html"><i class="fa fa-comments-o"></i> <span class="nav-label">资讯管理</span></a>
                </li>
			</ul>
		</nav><!-- 左侧导航 -->

		<div class="page-wrapper gray-bg">
			<div class="row border-bottom white-bg dashboard-header">
		        <div class="col-lg-12">
		            <h2>潮人管理</h2>
		            <ol class="breadcrumb">
		                <li><a href="javascript:;">首页</a> </li>
		                <li><a href="javascript:;">潮品之家</a> </li>
		                <li class="active"><strong>潮人管理</strong> </li>
		            </ol>
		        </div>
		    </div>
		    <div class="row wrapper-content white-bg">
		    	<div class="m-b-sm">
	                <div class="m-b-sm-title">
		       			<a href="AdminUserEdit.html" class="btn btn-primary">新增潮人</a>
	                </div>
		        </div>

		    	<div class="col-lg-12 white-bg">
		    		<table class="table-bordered table-striped table-hover" id="table" width="100%" border="0" cellspacing="0" cellpadding="2">
		    			<thead>
                            <tr>
                                <th>Id</th>
                                <th>潮人姓名</th>
                                <th>潮人手机号</th>
                                <th>潮人密码</th>
                                <th>注册时间</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<tr>
                        		<td>id1</td>
				                <td>张晓红</td>
				                <td>17602150396</td>
				                <td>admin</td>
				                <td>2018/01/06</td>
				                <td><a href="AdminUserEdit.html">编辑</a></td>
                        	</tr>
                        	<tr>
                        		<td>id2</td>
				                <td>李云</td>
				                <td>13564566920</td>
				                <td>admin</td>
				                <td>2017/8/19</td>
				                <td><a href="AdminUserEdit.html">编辑</a></td>
                        	</tr>
                        	<tr>
                        		<td>id3</td>
				                <td>卢晓</td>
				                <td>17703126930</td>
				                <td>admin</td>
				                <td>2009/01/12</td>
				                <td><a href="AdminUserEdit.html">编辑</a></td>
                        	</tr>
                        </tbody>
		    		</table>
		    	</div>
		    </div>
		</div><!-- 内容 -->

	</div>


	<script type="text/javascript">
		$(document).ready(function () {
	        var t = $('#table').DataTable({
	            "processing": true,
        		// "ajax": "dataTables/info.txt",

        		//插件的汉化
		        "oLanguage": {
		            "sLengthMenu": "每页显示 _MENU_ 条记录",
		            "sZeroRecords": "抱歉， 没有找到",
		            "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
		            "sInfoEmpty": "没有数据",
		            "sInfoFiltered": "(从 _MAX_ 条数据中检索)",
		            "oPaginate": {
		                "sFirst": false,
		                "sPrevious": false,
		                "sNext": false,
		                "sLast": false
		            },
		            "sZeroRecords": "没有检索到数据",
		            "sProcessing": "<img src='' />",
		            "sSearch": "搜索"
		        },
	        });


	    });
	</script>

</body>
</html>