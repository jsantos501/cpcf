<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript" src="/COMPETENCE/js/jquery-1.8.2.min.js"></script>
<script src="/COMPETENCE/js/bootstrap.min.js"></script>
<link href="/COMPETENCE/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="/COMPETENCE/css/bootstrap-responsive.css" rel="stylesheet"
	type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	jQuery(document).ready(function() {
		var content = jQuery('#content');

		jQuery('#menu a').click(function(e) {
			e.preventDefault();
			if (jQuery(this).attr('href') == 'home.html') {
				content.load('home_content.html');
			} else if (jQuery(this).attr('href') == 'cadastro.html') {
				content.load('cadastro_content.html');
			}
		});
	});
	jQuery(document).ready(function() {
		var content = jQuery('#content');

		jQuery('#menu a').click(function(e) {
			e.preventDefault();
			if (jQuery(this).attr('href') == 'home.html') {
				content.load('home_content.html');
			} else if (jQuery(this).attr('href') == 'cadastro.html') {
				content.load('cadastro_content.html');
			}
		});
	});
	jQuery(document).ready(function() {
		var content = jQuery('#content');

		jQuery('#menu a').click(function(e) {
			e.preventDefault();
			if (jQuery(this).attr('href') == 'home.html') {
				content.load('home_content.jsp');
			} else if (jQuery(this).attr('href') == 'cadastro.html') {
				content.load('cadastro_content.jsp');
			}
		});
	});
</script>

</head>
<body>
	<!-- HEADER -->
	<header class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container">
						<h2>CPCF - Competencia Porta Corta Fogo</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	</header>
	<!-- / HEADER -->


	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="navbar">
					<div class="navbar-inner">
						<div class="container">
							<ul class="nav nav-pills" id="menu">
								<li><a href="home.html">Home</a></li>

								<li><a href="cadastro.html">Usuario</a></li>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div id="content"></div>

			</div>
		</div>
	</div>



</body>
</html>