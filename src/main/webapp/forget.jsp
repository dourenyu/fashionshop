<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>忘记密码</title>
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
	                <a href="index.jsp"><img src="image/logo.png" alt="潮品之家" title="潮品之家"></a>
	            </div>
	        </div>
		</header>
	</div>
		
	<div class="main">
		<div class="login-panel">
			<div class="form-sidebar">
			    <div class="hand-logo"><i class="icon iconfont icon-hand"></i></div><img src="image/logo.png">
			    <p>全球潮品优选</p>
			  </div>

			<!-- 手机号找回密码 -->
			<div class="form-container form-phone-reclaim">
				<div class="switch-header">
			      <div class="switch-container">
			        <div class="form-header login">
			          <label class="form-title"><span>手机号找回密码</span></label>
			          <a href="javascript:;" class="switch">邮箱找回密码<i class="icon iconfont icon-switch"></i></a>
			        </div>
			      </div>
			    </div>
			    <div class="form-wrap">
			      <form data-action="">
			        <ul>
			          <li class="input-row"><i class="icon iconfont icon-user"></i>
			            <input type="text" value="" placeholder="请输入登录手机号" class="input-phone">
			          </li>
			          <li class="input-row"><i class="icon iconfont icon-lock"></i>
			            <input type="password" value="" placeholder="请输入验证码" class="inpset input-password">
			          </li>
			        </ul>
			        <div class="form-actions">
			          <div class="form-options">
			            <a href="login.jsp" title="忘记密码?" rel="nofollow" class="forget">返回登录</a>
			          </div>
			          <button type="button" class="button btnLogin">获取手机验证码</button>
			        </div>
			      </form>
			    </div>
			</div>

			<!-- 邮箱找回密码 -->
			<div class="form-container form-mail-reclaim" style="display: none;">
				<div class="switch-header">
			      <div class="switch-container">
			        <div class="form-header login">
			          <label class="form-title"><span>邮箱找回密码</span></label>
			          <a href="javascript:;" class="switch">手机号找回密码<i class="icon iconfont icon-switch"></i></a>
			        </div>
			      </div>
			    </div>
			    <div class="form-wrap">
			      <form data-action="">
			        <ul>
			          <li class="input-row"><i class="icon iconfont icon-user"></i>
			            <input type="text" value="" placeholder="请输入登录邮箱" class="input-phone">
			          </li>
			          <li class="input-row"><i class="icon iconfont icon-lock"></i>
			            <input type="password" value="" placeholder="请输入邮箱密码" class="inpset input-password">
			          </li>
			        </ul>
			        <div class="form-actions">
			          <div class="form-options">
			            <a href="login.jsp" title="忘记密码?" rel="nofollow" class="forget">返回登录</a>
			          </div>
			          <button type="button" class="button btnLogin">发送验证邮箱</button>
			        </div>
			      </form>
			    </div>
			</div>

		</div>
	</div>

	<!-- 地址栏 -->
	<div class="foot_wrap">
	     <div class="foot lay1200">
	        <div class="footNav">
	            <ul class="fl">
	                <li class="fl"><a href="javascript:;" target="_blank">关于我们</a></li>	
	                <li class="fl"><a href="javascript:;" target="_blank">联系我们</a></li>	
	                <li class="fl"><a href="javascript:;" target="_blank">加入我们</a></li>		
	                <li class="fl"><a href="javascript:;" target="_blank">友情链接</a></li>
	                <li class="fl"><a href="javascript:;" target="_blank">意见反馈</a></li>		
	            </ul>
	            <span>Copyright © 2012 - 2018 版权所有 pinchao.cc</span><span>苏ICP备12028376号-2</span>
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

			$('.form-mail-reclaim a.switch').click(function(){
				$('.form-mail-reclaim').hide();
				$('.form-phone-reclaim').show();
			})
			$('.form-phone-reclaim a.switch').click(function(){
				$('.form-phone-reclaim').hide();
				$('.form-mail-reclaim').show();
			})
		})
	</script>
	
</body>
</html>