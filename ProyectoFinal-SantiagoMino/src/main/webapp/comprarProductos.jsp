<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Categorias SS</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
		<header>
			<h1>Categorias</h1>
		</header>
		<nav>
			<a class="active" href="index.jsp">Inicio</a> <a href="productos.jsp">Ver
				Productos</a> <a href="categorias.jsp">Buscar Por Categoria</a> <a
				href="registro.jsp">Registrar Productos</a>

		</nav>
		<div class="agrupar">
		

		<form action="verificacion.jsp" method="post">
				<table>
					<tr>
						<td>Id Tarjeta:</td>
						<td><input type = "text" name="textIdT" required/></td>
					</tr>
					<tr>
						<td>Numero:</td>
						<td><input type = "text" name="textNum" minlength="12" maxlength="12"required/></td>
					</tr>
					
					<tr>
						<td>Titulo:</td>
						<td><input type = "text" name="textTitulo" required/></td>
					</tr>

					<tr>
						<td>Fecha:</td>
						<td><input type = "text" name="textfe" minlength="5" maxlength="5" required/></td>
					</tr>

					<tr>
						<td>cvv:</td>
						<td><input type = "text" name="textcvv" minlength="3" maxlength="3" required/></td>
					</tr>

					
					<tr>
						<td><input type="submit" /> <input type="reset" /></td>
					</tr>
				</table>
			</form>

			<section>

		<%
		
		int IdVenta = Integer.parseInt(request.getParameter("textIdVenta"));
		String nombre=request.getParameter("cmbUsuarios");
		int IdProducto = Integer.parseInt(request.getParameter("textIdProducto"));
		int monto = Integer.parseInt(request.getParameter("textcant"));
		int IdTarjeta = Integer.parseInt(request.getParameter("textIdTarjeta"));
		
		Producto pro = new Producto();
		pro.ingresarVenta(IdVenta, nombre, IdProducto, (monto*49.99), IdTarjeta);
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
	</main>
</body>
</html>