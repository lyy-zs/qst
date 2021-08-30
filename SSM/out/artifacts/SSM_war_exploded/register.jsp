<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>后台管理-注册</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" type="text/css" href="https://www.layuicdn.com/layui/css/layui.css" />
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->


    <style>
        body {background-image:url("bg.jpg");height:100%;width:100%;}
        #container{height:100%;width:100%;}
        input:-webkit-autofill {-webkit-box-shadow:inset 0 0 0 1000px #fff;background-color:transparent;}
        .admin-login-background {width:300px;height:300px;position:absolute;left:50%;top:40%;margin-left:-150px;margin-top:-100px;}
        .admin-header {text-align:center;margin-bottom:20px;color:#ffffff;font-weight:bold;font-size:40px}
        .admin-input {border-top-style:none;border-right-style:solid;border-bottom-style:solid;border-left-style:solid;height:50px;width:300px;padding-bottom:0px;}
        .admin-input::-webkit-input-placeholder {color:#a78369}
        .admin-input-username {border-top-style:solid;border-radius:10px 10px 0 0;}
        .admin-input-verify {border-radius:0 0 10px 10px;}
        .admin-button {margin-top:20px;font-weight:bold;font-size:18px;width:300px;height:50px;border-radius:5px;background-color:#a78369;border:1px solid #d8b29f}
        i {position:absolute;}
    </style>
</head>
<body>
<div id="container">
    <div></div>
    <div class="admin-login-background">
        <div class="admin-header">
            <span>注册界面</span>
        </div>
        <form class="layui-form" action="">
            <div>
                <input type="text" name="username" placeholder="请输入用户名" autocomplete="off" class="layui-input admin-input admin-input-username">
            </div>
            <div>
                <input type="password" name="password" placeholder="请输入密码" autocomplete="off" class="layui-input admin-input">
            </div>
            <div>
                <input type="password" name="rpassword" placeholder="请再次输入密码" autocomplete="off" class="layui-input admin-input">
            </div>
            <div>
                <input type="text" name="email" placeholder="请输入邮箱" autocomplete="off" class="layui-input admin-input admin-input-verify">
            </div>
            <div class="layui-form-item">
                <div class="layui-input-inline">
                    <button class="layui-btn admin-button" lay-submit="" lay-filter="login">注册</button>
                    <a
                         type="button" class="layui-btn admin-button"
                        href="userlogin.jsp">取消
                    </a>
                </div>

            </div>

        </form>
    </div>
</div>
<script src="https://www.layuicdn.com/layui/layui.js"></script>
<script>
    layui.use(['form'], function() {
        var form = layui.form,
            layer = layui.layer;

        // 登录过期的时候，跳出ifram框架
        if (top.location != self.location) top.location = self.location;

        // 进行登录操作
        form.on('submit(login)', function(data) {
            data = data.field;
            if (data.username == '') {
                layer.msg('用户名不能为空');
                return false;
            }
            if (data.password == '') {
                layer.msg('密码不能为空');
                return false;
            }
            if (data.captcha == '') {
                layer.msg('验证码不能为空');
                return false;
            }
            layer.msg('登录成功', function() {
                window.location = '../index.html';
            });
            return false;
        });
    });
</script>
</body>
</html>
