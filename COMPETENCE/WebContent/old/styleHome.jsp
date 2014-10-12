<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/COMPETENCE/css/styleMenu.css" />
<script type="text/javascript" src="/COMPETENCE/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript"
	src="/COMPETENCE/js/jquery.hoverIntent.minified.js"></script>
<script type="text/javascript" src="/COMPETENCE/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/COMPETENCE/js/styleMenu.js"></script>

<script type="text/javascript">
	$(function() {
		$("#menu").beautyMenu({
			childWidth : 160,
			hoverClass : 'active',
			subMenuShowSpeed : 1000,
			subMenuShowEffect : 'easeOutBounce'
		});
	});

	$(document).ready(function() {
		$("#menu a").click(function(e) {
			e.preventDefault();
			var href = $(this).attr('href');
			$("#content").load(href + " #content");
		});
	});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="menu/styleMenu.jsp"%>

	<div id="content">
		<h1>Bem Vindo!</h1>
		<p>Essa eh a home desse nome pseudo-site.</p>
	</div>
</body>
</html>