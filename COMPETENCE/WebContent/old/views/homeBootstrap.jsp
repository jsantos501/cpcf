<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">
<head>
<meta charset="UTF-8">
<title>CPCF - Competencia Porta Corta Fogo</title>
<!-- JQUERY -->

<script type="text/javascript" src="/COMPETENCE/js/jquery-1.8.2.min.js"></script>
<!-- TWITTER BOOTSTRAP CSS -->
<link href="/COMPETENCE/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="/COMPETENCE/css/bootstrap-responsive.css" rel="stylesheet"
	type="text/css" />
<!-- TWITTER BOOTSTRAP JS -->
<script src="/COMPETENCE/js/bootstrap.min.js"></script>

<script type="text/javascript">

jQuery(document).ready(function(){
	var content = jQuery('#content');
	
	request( 'home.jsp' );
	
	function m_load( data )
	{
		var text = jQuery( '<div>'+data+'</div>' );//forÃ§ando o parser
		
		content.html( text.find('#content').html() );
		jQuery(document).attr( 'title', text.find('title').html() );
	}
	function request( file )
	{
		jQuery.ajax({
			url: file,
			success: function( data )
			{
				m_load( data );
			}
		});	
	}
	jQuery('#menu a').click(function( e ){
		e.preventDefault();
		request( jQuery( this ).attr('href') );
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
	<!-- CLASSE QUE DEFINE O CONTAINER COMO FLUIDO (100%) -->



	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span12">
				<div class="navbar">
					<div class="navbar-inner">
						<div class="container" >
							<ul class="nav nav-pills" id="menu">
								<li class="active" ><a href="home.jsp">Home</a></li>
								<li><a href="#">Cliente</a></li>
								<li><a href="#">Proposta</a></li>
								<li><a href="#">Nota Fiscal</a></li>       
								<li><a href="#">Produto</a></li>
								<li><a href="usuario/inclusao_usuario.jsp">Usuario</a></li>
								<li><a href="#">Sair</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<div class="container-fluid">
		<!-- CLASSE PARA DEFINIR UMA LINHA -->
		<div class="row-fluid">
			<!-- COLUNA OCUPANDO 10 ESPAÃOS NO GRID -->
					</div>
	</div>
	<div id="content">
				
			</div>
	
</body>
</html>

