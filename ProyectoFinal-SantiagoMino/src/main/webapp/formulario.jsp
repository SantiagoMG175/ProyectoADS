<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Formulario</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
		<header>
			<h1>Registro Clientes</h1>
		</header>
		<nav>
				<a class="active" href="index.jsp">Inicio</a> <a
					href="productos.jsp">Ver Productos</a> <a href="categorias.jsp">Buscar
					Por Categoria</a> <a href="registro.jsp">Registrar Clientes</a>

			</nav>
		<div class="agrupar">
			
	



		<section>

			<form action="respuestaUsuario.jsp" method="post">
				
				<table border="0">
				<tr>				
					<td>Nombre:<input type="text" name="txtNombre" maxlength="50" required />*</td>
				</tr>
				
				
				<tr>				
					<td>Cedula<input type="text" name="txtCedula" maxlength="10" /> </td>
				</tr>
				
				<tr>				
					<td>Contraseña<input type="text" name="txtContra"  /> </td>
				</tr>
				
				
				<tr>
				<td>Estado Civil
				<select name="cmbCivil">
					<option value="Soltero">Soltero</option>
					<option value="Casado">Casado</option>
					<option value="Divorciado">Divorciado</option>
					<option value="Viudo">Viudo</option>
				</td>
				</select>
				</tr>
				
				<tr>
				<td> Lugar residencia
				<input type="radio" name="rdResidencia" value="Sur" />Sur 
				<input type="radio" name="rdResidencia" value="Norte" />Norte
				<input type="radio" name="rdResidencia"value="Centro" />Centro
				</td>
				</tr>
				
				<tr>
				<td>Foto<input type="file" name="fileFoto" accept=".jpg, .jpeg, .png"/></td>
				</tr>
				
				<tr>
				<td>Mes y anioo de nacimiento</td>
				<td><input type="datetime-local" name="fecha"/></td>
				</tr>
				
				<tr>
				<td>Color Favorito <input type="color" name="colorFavorito"/></td>
				</tr>
				<tr>				
				<td><input type="submit"/>
				<input type="reset"/></td>
				</tr>
				</table>
			</form>


		</section>
		</div>

		<footer>
			<ul>

				<li><a href="https://www.facebook.com/distribuidorabasantes">Nuestro
						Facebook</a></li>

				<li><a href="https://www.instagram.com/distribuidorabasantesjr/?theme=dark">Nuestro
						Instagram</a></li>


			</ul>
		</footer>
	</main>
</body>
</html>