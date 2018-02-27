<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台登录</title>
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/font/iconfont.css">
	<link rel="stylesheet" href="css/style.css">
	<script type="text/javascript" src="js/jquery-1.10.1.min.js"></script>
</head>
<body>
	<div class="banner">
		<header>
			<div class="headerTop">
	        	<div class="header_m lay1200 clearfix">
	                <a href="javascript:;"><img src="image/logo.png" alt="潮品之家" title="潮品之家"></a>
	            </div>
	        </div>
		</header>
	</div>
		
	<div class="main">
		<div class="login-panel">
			<div class="form-sidebar">
			    <div class="hand-logo"><i class="icon iconfont icon-hand"></i></div><img src="image/logo.png">
			    <p>后台登录</p>
			  </div>
			<div class="form-container">
				<div class="switch-header">
			      <div class="switch-container">
			        <div class="form-header login">
			          <label class="form-title"><span>登录</span></label>
			        </div>
			      </div>
			    </div>
			    <div class="form-wrap">
			      <form data-action="">
			        <ul>
			          <li class="input-row"><i class="icon iconfont icon-user"></i>
			            <input type="text" value="" placeholder="请输入登录用户名 / 邮箱 / 手机号" class="input-phone">
			          </li>
			          <li class="input-row"><i class="icon iconfont icon-lock"></i>
			            <input type="password" value="" placeholder="请输入密码" class="inpset input-password">
			          </li>
			        </ul>
			        <div class="form-actions">
			          <div class="form-options">
			          </div>
			          <button type="button" class="button btnLogin">登&nbsp;&nbsp;&nbsp;&nbsp;录</button>
			        </div>
			      </form>
			    </div>

			</div>

		</div>
	</div>

	
	<script type="text/javascript">
		$(function(){
			$('.input-row input').focus(function() {
				$(this).parents('.input-row').addClass('focus');
			});
			$('.input-row input').blur(function() {
				$(this).parents('.input-row').removeClass('focus');
			});
		})
	</script>
	
</body>
</html>