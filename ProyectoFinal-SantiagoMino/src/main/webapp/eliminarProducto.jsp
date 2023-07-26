<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.producto.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Productos</title>
<link href="css/estilos.css" rel="stylesheet" type="text/css">
</head>
<body>
	<main>
		<header>
			<h1>Eliminar Productos</h1>
		</header>
		<nav>
			<a class="active" href="index.jsp">Inicio</a> <a href="productos.jsp">Ver
				Productos</a> <a href="categorias.jsp">Buscar Por Categoria</a> <a
				href="registro.jsp">Registrar Productos</a>

		</nav>
		<div class="agrupar">


			<section>

		<%
		int cod= Integer.parseInt(request.getParameter("cod"));
		Producto producto = new Producto();
		boolean f = producto.EliminarProducto(cod);
		if (f== true){
			response.sendRedirect("registro.jsp");
		}
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