<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  
  <link rel="stylesheet" href='<s:url value="resources/bower_components/bootstrap/dist/css/bootstrap.min.css"></s:url>'>
  <!-- Font Awesome -->
  
  <link rel="stylesheet" href='<s:url value="resources/bower_components/font-awesome/css/font-awesome.min.css"></s:url>'>
  <!-- Ionicons -->
  
  <link rel="stylesheet" href='<s:url value="resources/bower_components/Ionicons/css/ionicons.min.css"></s:url>'>
  <!-- Theme style -->
  
  <link rel="stylesheet" href='<s:url value="resources/dist/css/AdminLTE.min.css"></s:url>'>
  <!-- iCheck -->
  
  <link rel="stylesheet" href='<s:url value="resources/plugins/iCheck/square/blue.css"></s:url>'>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href='<s:url value="/"></s:url>'><b>Tracking</b>System</a>
  </div>
  <!-- /.login-logo -->
  
   <c:if test="${not empty hata}">
    	<div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4><i class="icon fa fa-ban"></i> Giriş hatası !</h4>${ hata }
              </div>
    </c:if>
  
  
  <div class="login-box-body">
    <p class="login-box-msg">Sign in to start your session</p>
    
   
    

    <form action='<s:url value="/userLogin"></s:url>' method="post">
      <div class="form-group has-feedback">
        <input name="email" type="email" class="form-control" placeholder="Email" required="required">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input name="password" type="password" class="form-control" placeholder="Password" required="required">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input name="remember" type="checkbox" value="on" id="defaultCheck1"> Remember Me
            </label>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
        </div>
        <!-- /.col -->
      </div>
    </form>



    <a href='<s:url value="/password"></s:url>'>I forgot my password</a><br>
    <a href='<s:url value="/register"></s:url>' class="text-center">Register a new membership</a>

  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->

<script src='<s:url value="resources/bower_components/jquery/dist/jquery.min.js"></s:url>'></script>
<!-- Bootstrap 3.3.7 -->

<script src='<s:url value="resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></s:url>'></script>
<!-- iCheck -->

<script src='<s:url value="resources/plugins/iCheck/icheck.min.js"></s:url>'></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>
