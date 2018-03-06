<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>编辑潮品</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/admin.css">

    <!-- Mainly scripts -->
    <script src="js/jquery-2.1.1.js"></script>
     <script src="js/jquery.form.js"></script>
     <script type="text/javascript">
  	function toPublishAdd(){
    	var option = {
    		url:'${pageContext.request.getContextPath()}/goods/toPublish',
    		type :"post",
    		dataType:'json',
    		headers:{"ClientCallMode" : "ajax"}, 
    		success : function(data) {
    			if(data.message == 'error'){
					alert("发布失败！");
				}else{
					alert("发布成功！");
					window.location.href="${pageContext.request.getContextPath()}/index.jsp";
				}
            },
            error: function(data) {
                alert(JSON.stringify(data) + "--上传失败,请刷新后重试");
            }
         };
   	 	$("#publish_form").ajaxSubmit(option);
   	 	return false;
  	}
  	</script>
    
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
                <li class="active">
                    <a href="AdminProduct.html"><i class="fa fa-th-large"></i> <span class="nav-label">潮品管理</span></a>
                </li>
                <li>
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
		            <h2>潮品编辑</h2>
		            <ol class="breadcrumb">
		                <li><a href="javascript:;">首页</a> </li>
		                <li><a href="javascript:;">潮品之家</a> </li>
		                <li class="active"><strong>潮品编辑</strong> </li>
		            </ol>
		        </div>
		    </div>
		    <div class="row wrapper-content white-bg">
		    	<div class="col-lg-12 white-bg">
		    	 <form action="" method="post" enctype="multipart/form-data" id="publish_form" name="publish_form">
		    		<table class="tbEdit" width="100%" border="0" cellspacing="0" cellpadding="0">
		    			<tr>
		    				<td width="100">潮品名称</td>
		    				<td><input type="text" name="g_title" value=""></td>
		    			</tr>
		    			<tr>
		    				<td width="100">潮品详情</td>
		    				<td><textarea name="g_detail"></textarea></td>
		    			</tr>
		    			<tr>
		    				<td width="100">潮品价格</td>
		    				<td><input type="num" name="g_price" value=""></td>
		    			</tr>
		    			<tr>
		    				<td width="100">潮品品牌</td>
		    				<td><input type="text" name="g_brand" value=""></td>
		    			</tr>
		    			<tr>
		    				<td width="100">潮品数量</td>
		    				<td>
		    					<div class="numEdit"><span class="numReduce">-</span><input class="numDetail" name="g_inventory" type="text" value="3" readonly="readonly"><span class="numAdd">+</span></div>
		    				</td>
		    			</tr>
		    			<tr>
		    				<td width="100">喜欢数</td>
		    				<td>
		    					<div class="numEdit"><span class="numReduce">-</span><input class="numDetail" name="g_like" type="text" value="18" readonly="readonly"><span class="numAdd">+</span></div>
		    				</td>
		    			</tr>
		    			<tr>
		    				<td width="100">状态</td>
		    				<td>
		    					<select name="g_status">
		    						<option value="A">已上架</option>
		    						<option value="B">未上架</option>
		    						<option value="C">已下架</option>
		    					</select>
		    				</td>
		    			</tr>
		    			<tr>
		    				<td width="100">所属分类</td>
		    				<td>
		    					<select  name="g_sex">
		    						<option value="0">男士</option>
		    						<option value="1">女士</option>
		    					</select>
		    				</td>
		    			</tr>
		    			<tr>
		    				<td width="100">图片</td>
		    				<td>
		    					<input type="file" id="file" multiple="multiple" name="file"/>  
    							<input type="button" value="读取图像" onclick="readAsDataURL()" /> 
    							<div id="result" name="result"></div> 
    						</td>
		    			</tr>
		    			<tr>
		    				<td></td>
				            <td style="padding-top: 20px;">
				             	<a href="javascript:toPublishAdd();" class="btn btn-primary btnEdit">修改潮品</a> 
				            </td>
			            </tr>
			        </table>
			         </form>
		    	</div>
		    </div>
		</div><!-- 内容 -->


	</div>

	<script>
		// 数量加减
		$(function() {
			$(".numAdd").click(function() {
				var t = $(this).parent().find('input[class*=numDetail]');
				t.val(parseInt(t.val()) + 1);
			})
			$(".numReduce").click(function() {
				var t = $(this).parent().find('input[class*=numDetail]');
				t.val(parseInt(t.val()) - 1)
				if(parseInt(t.val()) < 1) {
					t.val(1);
				}
			})
		})

		function readAsDataURL(){  
		    var file = document.getElementById("file").files;
		    var result=document.getElementById("result");  

		    for(i = 0; i< file.length; i ++) {
		        var reader    = new FileReader();    
		        reader.readAsDataURL(file[i]);  
		        reader.onload=function(e){  
		            //多图预览
		            result.innerHTML = result.innerHTML + '<img src="' + this.result +'" alt="" />';  
		        }
		    }
		    
		}  
	
	</script>

</body>
</html>