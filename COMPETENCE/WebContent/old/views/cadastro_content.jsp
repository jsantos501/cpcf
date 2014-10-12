<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/COMPETENCE/js/jquery-2.1.1.min.js"></script>
</head>
<body>

		<h4>Cadastro de usuario</h4>
		<form id="cadUsuario" action="" method="post">
			<table>
				<tr>
					<td><label>Nome:</label></td>
					<td><input type="text" name="nome" id="nome" /></td>
				</tr>
				<tr>
					<td><label>usuario:</label></td>
					<td><input type="text" name="usuario" id="usuario" /></td>
				</tr>
				<tr>
					<td><label>senha:</label></td>
					<td><input type="password" name="senha" id="senha" /></td>
				</tr>
				<tr>
					<td><label>perfil:</label></td>
					<td><input type="text" name="perfil" id="perfil" /></td>
				</tr>
				<tr>
					<td><label>email:</label></td>
					<td><input type="text" name="email" id="email" /></td>
				</tr>
				<tr>
					<td><label>celular:</label></td>
					<td><input type="text" name="celular" id="celular" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="button" id="enviar" value="Enviar" /></td>
				</tr>
			</table>

		</form>
</body>
</html>
<script type="text/javascript" language="javascript">    
$(document).ready(function() {        
	/// Quando usuÃ¡rio clicar em salvar serÃ¡ feito todos os passo abaixo         
	$('#enviar').click(function() {             
		var dados = $('#cadUsuario').serialize();             

		$.ajax({                 
			type: 'POST',                 
			dataType: 'json',                 
			url: 'salvar.php',                 
			async: false,                 
			data: dados,                 
			success: function(response) {                     
				location.reload();                 
				}             
		});             
		return false;         
		});
}
</script>

</body>
</html>