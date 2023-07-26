<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Registro</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main></main>
	<header>
		<h1>Registrar Productos</h1>
	</header>


	<nav>
		<a class="active" href="index.jsp">Inicio</a> <a href="productos.jsp">Ver
			Productos</a> <a href="categorias.jsp">Buscar Por Categoria</a> <a
			href="registro.jsp">Registrar Productos</a>
			<a
			href="formulario.jsp">Registrar Usuarios</a>

	</nav>


	<div class="agrupar">
		<section>
				
				<br>
				<h1 style="color: red"align="center">Ingresar Productos</h1>
				<br>

			<form action="respuesta.jsp" method="post">

				<table border="0">
					<tr>
						<td>Id:<input type="number" name="txtNumero" maxlength="10"
							required />*
						</td>
					</tr>

					<tr>
						<td>Categoria<%
						Categoria categoria = new Categoria();
						String combo = categoria.mostrarCategoria();
						out.print(combo);
						%></td>
					</tr>

					<tr>
						<td>Descripcion<input type="text" name="txtDescribcion"
							minlength="10" />
						</td>
					</tr>

					<tr>
						<td>Precio<input type="number" name="txtPrecio" />
						</td>
					</tr>

					<tr>
						<td>Cantidad<input type="number" name="txtCant" />
						</td>
					</tr>
	
	
					<tr>
						<td>Foto<input type="file" name="fileFoto" />
						</td>
					</tr>
					
					<tr>
						<td><input type="submit" /> <input type="reset" /></td>
					</tr>
				</table>
			</form>
		</section>

	</div>
		
		
			
			
				
	<div class="agrupar">
		<section>
			
			<br>
				<h1 style="color: red"align="center">Modificar/Eliminar Productos</h1>
			<br>
			
			<%
	Producto producto=new Producto();
	out.print(producto.editarTodosProductoCategoria());
	%>
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
</html>