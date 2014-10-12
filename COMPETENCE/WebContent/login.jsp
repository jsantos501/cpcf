<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<title>Bootstrap Login Form</title>
		<meta name="generator" content="Bootply" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<!--[if lt IE 9]>
			<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<link href="css/styles.css" rel="stylesheet">
	</head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="/COMPETENCE/js/jquery-2.1.1.min.js"></script>
<script src="/COMPETENCE/js/bootstrap.min.js"></script>
<link href="/COMPETENCE/css/bootstrap.min-0.0.2.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/COMPETENCE/js/html5shiv.js"></script>

</head>
<body>

<!--login modal-->
<div id="loginModal" class="modal show" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h1 class="text-center">Login</h1>
      </div>
      <div class="modal-body">
          <form class="form col-md-12 center-block" name="login" action="login" method="post">
            <div class="form-group">
              <input type="text" class="form-control input-lg" placeholder="usuario">
            </div>
            <div class="form-group">
              <input type="password" class="form-control input-lg" placeholder="password">
            </div>
            <div class="form-group">
              <button class="btn btn-primary btn-lg btn-block">Sign In</button>
              <span class="pull-right"><a href="#">Register</a></span><span><a href="#">Need help?</a></span>
            </div>
          </form>
      </div>
      <div class="modal-footer">
          <div class="col-md-12">
          <button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
		  </div>	
      </div>
  </div>
  </div>
</div>

</body>
</html>